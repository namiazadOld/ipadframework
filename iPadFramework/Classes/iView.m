//
//  iView.m
//  iPadFramework
//
//  Created by Nami on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iView.h"


@implementation iView
@synthesize viewController;

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	[super initialize:arguments];
	viewController = [[UIViewController alloc]init];
	lastInnerControlFrame = CGRectMake(0, 0, 0, 0);
	return self;
}

-(CGRect) getFrame
{
	return self.viewController.view.frame;
}

-(UIView*) getView
{
	return self.viewController.view;
}

-(void) addBodyControl:(id <iWidget>) widget
{
	[widget setFrame:[widget getRecommendedFrame: lastInnerControlFrame]];
	
	UIView* view = [widget getView];
	
	if (view != NULL)
		[self.viewController.view addSubview:view];
	
	lastInnerControlFrame = [widget getFrame];

	[widget setParentWidget:self];
	[widget parentChanged:self];
}

@end
