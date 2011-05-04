//
//  iBaseControl.m
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iBaseControl.h"
#import "Constants.h"
#import "NullObject.h"
#import "StylingManager.h"

@implementation iBaseControl
@synthesize boundObjects, locked, parentWidget, 
			lastInnerControl, viewController, anchor, place, lineNo,
			initialFrame, children, marginLeft, marginRight, marginTop, marginBottom, scope;

-(Scope*) scope
{
	return [Scope instance];
}

-(void) setControlStyle: (UIStyle*) style
{
	initialFrame = CGRectMake(style.left, style.top, style.width, style.height);
	
	NSString* placeString = [[style place] lowercaseString];
	if ([placeString isEqualToString:@"currentline"])
		self.place = CurrentLine;
	else if ([placeString isEqualToString:@"nextline"])
		self.place = NextLine;

	
	NSString* anchorString = [[style anchor] lowercaseString];
	if ([anchorString isEqualToString:@"left"])
		self.anchor = Left;
	else if ([anchorString isEqualToString:@"right"])
		self.anchor = Right;
	else if ([anchorString isEqualToString:@"left-right"])
		self.anchor = LeftRight;
	else
		self.anchor = None;

	
	self.marginTop = style.margin_top;
	self.marginLeft = style.margin_left;
	self.marginRight = style.margin_right;
	self.marginBottom = style.margin_bottom;
}

-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	boundObjects = [[NSMutableDictionary alloc]init];
	children = [[NSMutableArray alloc] init];
	initialFrame = CGRectMake(-1, -1, -1, -1);
	
	if ([[self getChildrenHolder] respondsToSelector:@selector(addTarget:action:forControlEvents:)] && [self getChildrenHolder] != NULL)
		[[self getChildrenHolder] addTarget:self action:@selector(eventOccured:) forControlEvents:UIControlEventAllEvents];
	
	
	iBaseControl* parentControl = (iBaseControl*)parent;

	[self manageArguments:arguments container:parent];
	
	parent.lastInnerControl = self;
	
	return self;
}

-(CGRect) getRecommendedFrame:(iBaseControl*)parent
{
	return [StylingManager styleRectangle:self container:parent];
}

-(CGRect) getFrame
{
	return CGRectMake(0, 0, 0, 0);
}

-(void) setFrame: (CGRect)frame;
{
	
}

-(UIView*) getView;
{
	return NULL;
}

-(UIView*) getChildrenHolder
{
	return [self getView];
}

-(void)orientationChanged:(UIInterfaceOrientation)toInterfaceOrientation
{
	
}

-(void) addBodyControl:(iBaseControl*) widget
{
	[widget setParentWidget:self];
	[widget parentChanged:self];
	[self.children addObject:widget];
}

-(void) finilize
{
	
}

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
	
}

-(void) parentChanged: (iBaseControl*)parent
{
	
}

-(void) eventOccured: (id) sender
{
	if (!self.locked)
	{
		NSArray* allKeys = [boundObjects allKeys];
		for (int i = 0; i < [allKeys count]; i++)
		{
			NSString* property = [allKeys objectAtIndex:i];
			BindableObject* bo = [boundObjects objectForKey:property];
			self.locked = YES;
			bo.value = [self valueForKey:property];
			[property release];
			self.locked = NO;
		}
	}
}


-(void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	if (!self.locked)
	{
		if ([object isKindOfClass: [BindableObject class]])
		{
			BindableObject* bo = (BindableObject*)object;
			
			self.locked = YES;
			NSArray* allKeys = [boundObjects allKeys];
			for (int i = 0; i < [allKeys count]; i++)
			{
				NSString* property = [allKeys objectAtIndex:i];
				if (![[boundObjects valueForKey:property] isEqual:bo])
					continue;
				[self setValue:bo.value forKey:property];
				if (self.parentWidget != NULL)
					[self.parentWidget childUpdated:self];
				[property release];
				break;
			}
			self.locked = NO;
		}
		
	}
}

-(void) addBindingObject:(BindableObject*)bo forKey:(NSString*)key
{
	[boundObjects setValue:bo forKey:key];
	[bo addObserver:self forKeyPath:@"value" options:NSKeyValueChangeNewKey context:nil];
}

-(void) manageArguments: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	
	int i = 0;
	for (BindableObject* bo in arguments)
	{
		if ([bo.value isKindOfClass:[NullObject class]])
		{
			i++;
			continue;
		}
		
		[self manageArgument:bo at:i];
		i++;
	}
	
	//lineNo management, should be located at better place
	if (self.place == NextLine)
	{
		if (parent.lastInnerControl == NULL)
			self.lineNo = 1;
		else
			self.lineNo = parent.lastInnerControl.lineNo + 1;
	}
	else
	{
		if (parent.lastInnerControl == NULL)
			self.lineNo = 0;
		else
			self.lineNo = parent.lastInnerControl.lineNo;
	}

}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	if ([bo.value isKindOfClass:[UIStyle class]])
	{
		[self setControlStyle:(UIStyle*)bo.value];
		[bo release];
	}
}

-(void) childUpdated: (iBaseControl*)child
{
	
}

@end
