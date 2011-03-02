//
//  iNavigationButton.m
//  iPadFramework
//
//  Created by Nami on 2/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iNavigationButton.h"
#import "NullObject.h"
#import "NSSelector.h"


@implementation iNavigationButton

@synthesize button;

//Properties Wrappers
-(NSString*) title
{
	return button.title;
}

-(void)setTitle:(NSString *)aString
{
	@synchronized(self)
	{
		if (button.title != aString)
		{
			[button setTitle:[aString retain]];
			[aString release];
		}
	}
}


-(id <iWidget>) initialize: (NSMutableArray*) arguments
{
	[super initialize:arguments];
	self.button = [[UIBarButtonItem alloc] init];
	[self.button setStyle:UIBarButtonSystemItemFastForward];
	
	if (![[arguments objectAtIndex:0] isKindOfClass:[NullObject class]])
	{
		BindableObject* bo = (BindableObject*) [arguments objectAtIndex:0];
		[self addBindingObject:bo forKey:@"title"];
		[self.button setTitle:(NSString*)bo.value];
		
		//self.button.title = [arguments objectAtIndex:0];
	}
		
	
	if (![[arguments objectAtIndex:1] isKindOfClass:[NullObject class]])
	{
		NSSelector* methodSelector = (NSSelector*)[arguments objectAtIndex:1];
		[self addTarget: methodSelector.target action: methodSelector.method forControlEvents:UIControlEventTouchUpInside];
	}
	
	return self;
}

-(CGRect) getRecommendedFrame: (CGRect)baseFrame
{
	return CGRectMake(baseFrame.origin.x, baseFrame.origin.y + baseFrame.size.height, 100, 50);
}

-(CGRect) getFrame
{
	return CGRectMake(0.0, 0.0, self.button.width, 50.0);
}

-(void)setFrame:(CGRect)frame
{
	[self.button setWidth:frame.size.width];
}

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
	[self.button setAction:action];
	[self.button setTarget:target];
}

@end
