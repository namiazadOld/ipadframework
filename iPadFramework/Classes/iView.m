//
//  iView.m
//  iPadFramework
//
//  Created by Nami on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iView.h"


@implementation iView

CGRect lastInnerControlFrame;

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
}

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	lastInnerControlFrame = CGRectMake(0, 0, 0, 0);
}

-(CGRect) getRecommendedFrame: (CGRect)baseFrame{
	
}

-(CGRect) getFrame
{
	return self.view.frame;
}

-(void)setFrame:(CGRect)frame
{
}

-(UIView*) getView
{
	return self.view;
}

- (void)orientationChanged:(UIInterfaceOrientation)toInterfaceOrientation
{
	
}

-(void) addBodyControl:(id <iWidget>) widget
{
	[widget setFrame:[widget getRecommendedFrame: lastInnerControlFrame]];
	[self.view addSubview:[widget getView]];
	lastInnerControlFrame = [widget getFrame];

	[widget parentChanged:self];
}

-(void) finilize
{
	
}


@end
