//
//  iButton.m
//  iPadFramework
//
//  Created by Nami on 1/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iButton.h"
#import "NullObject.h"
#import "NSSelector.h"


@implementation iButton

@synthesize button;

//Properties Wrappers
-(NSString*) title
{
	return button.currentTitle;
}

-(void)setTitle:(NSString *)aString
{
	@synchronized(self)
	{
		if (button.currentTitle != aString)
		{
			[button setTitle:[aString retain] forState:button.state];
			[aString release];
		}
	}
}

-(id <iWidget>) initialize: (NSMutableArray*) arguments
{
	[super initialize:arguments];
	self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	
	if (![[arguments objectAtIndex:0] isKindOfClass:[NullObject class]])
	{
		BindableObject* bo = (BindableObject*) [arguments objectAtIndex:0];
		[self addBindingObject:bo forKey:@"title"];
		[self.button setTitle:(NSString*)bo.value forState:UIControlStateNormal];
		
		//[self.button setTitle:[arguments objectAtIndex:0] forState:UIControlStateNormal];
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
	return self.button.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.button.frame = frame;
}

-(UIView*) getView
{
	return self.button;
}

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
	[self.button addTarget:target action:action forControlEvents:controlEvents];
}

-(id) getActualContol
{
	return self.button;
}

@end
