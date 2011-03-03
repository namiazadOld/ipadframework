//
//  iBaseControl.m
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iBaseControl.h"


@implementation iBaseControl
@synthesize boundObjects, locked, parentWidget;


-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	boundObjects = [[NSMutableDictionary alloc]init];
	[[self getActualContol] addTarget:self action:@selector(eventOccured:) forControlEvents:UIControlEventAllEvents];

	return self;
}

-(CGRect) getRecommendedFrame: (CGRect)baseFrame;
{
	return CGRectMake(0, 0, 0, 0);
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

-(void)orientationChanged:(UIInterfaceOrientation)toInterfaceOrientation
{
	
}

-(void) addBodyControl:(id<iWidget>) widget
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

-(void) parentChanged: (id<iWidget>)parent
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

-(id)getActualContol
{
	return NULL;
}

-(void) addBindingObject:(BindableObject*)bo forKey:(NSString*)key
{
	[boundObjects setValue:bo forKey:key];
	[bo addObserver:self forKeyPath:@"value" options:NSKeyValueChangeNewKey context:NULL];
}

-(void) childUpdated: (id<iWidget>)child
{
	
}


@end