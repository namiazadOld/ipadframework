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
			lastInnerControl, maxSize, viewController, anchor, place,
			initialFrame, children;

-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	boundObjects = [[NSMutableDictionary alloc]init];
	children = [[NSMutableArray alloc] init];
	initialFrame = CGRectMake(-1, -1, -1, -1);
	
	if ([[self getChildrenHolder] respondsToSelector:@selector(addTarget:action:forControlEvents:)] && [self getChildrenHolder] != NULL)
		[[self getChildrenHolder] addTarget:self action:@selector(eventOccured:) forControlEvents:UIControlEventAllEvents];
	
	
	iBaseControl* parentControl = (iBaseControl*)parent;
	
	if (parentControl == NULL)
		self.maxSize = CGSizeMake(VERTICAL_WIDTH, VERTICAL_HEIGHT);
	else
		self.maxSize = CGSizeMake(parentControl.maxSize.width, parentControl.maxSize.height);

	[self manageArguments:arguments container:parent];
	
	return self;
}

-(CGRect) getRecommendedFrame:(iBaseControl*)parent
{
	return [StylingManager styledRectangle:self container:parent];
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
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	switch (index) {
		case 0:
		{
			initialFrame = CGRectMake([((NSNumber*) bo.value) floatValue], initialFrame.origin.y, initialFrame.size.width, initialFrame.size.height);
			break;
		}
		case 1:
		{
			initialFrame = CGRectMake(initialFrame.origin.x, [((NSNumber*) bo.value) floatValue], initialFrame.size.width, initialFrame.size.height);
			break;
		}
		case 2:
		{
			initialFrame = CGRectMake(initialFrame.origin.x, initialFrame.origin.y, [((NSNumber*) bo.value) floatValue], initialFrame.size.height);
			break;
		}
		case 3:
		{
			initialFrame = CGRectMake(initialFrame.origin.x, initialFrame.origin.y, initialFrame.size.width, [((NSNumber*) bo.value) floatValue]);
			break;
		}
		case 4:
		{
			place = (Place) [((NSNumber*) bo.value) intValue];
			break;
		}
		case 5:
		{
			anchor = (Anchor) [((NSNumber*) bo.value) intValue];
			break;
		}
		default:
			break;
	}
	
}

-(void) childUpdated: (iBaseControl*)child
{
	
}

-(void)style: (iBaseControl*)parent
{
}



@end
