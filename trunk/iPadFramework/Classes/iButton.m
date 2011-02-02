//
//  iButton.m
//  iPadFramework
//
//  Created by Nami on 1/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iButton.h"
#import "NullObject.h"


@implementation iButton

@synthesize button;

CGRect lastInnerControlFrame;

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
	[self.button addTarget:target action:action forControlEvents:controlEvents];
}

-(id <iWidget>) initialize: (NSMutableArray*) arguments
{
	self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	
	NSString* text = @"";
	
	if (![[arguments objectAtIndex:0] isKindOfClass:[NullObject class]])
		text = [arguments objectAtIndex:0];
	
	[self.button setTitle:text forState:UIControlStateNormal];
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

- (void)orientationChanged:(UIInterfaceOrientation)toInterfaceOrientation
{
	
}

-(void) addBodyControl:(id <iWidget>) widget
{
	[widget parentChanged:self];
}

-(void) finilize
{
	
}

@end
