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

-(id <iWidget>) initialize: (NSString*)text
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
}

-(void) finilize
{
	
}


@end
