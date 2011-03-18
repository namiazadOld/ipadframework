//
//  iView.m
//  iPadFramework
//
//  Created by Nami on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iView.h"
#import "Constants.h"
#import "Utilities.h"


@implementation iView
@synthesize viewController;

-(id <iWidget>) initialize: (NSMutableArray*)arguments container: (id<iWidget>)parent
{
	[super initialize:arguments container: parent];
	viewController = [[UIViewController alloc]init];
	lastInnerControl = [[iEmptyWidget alloc]init];
	
	[self manageArguments:arguments container:parent];
	
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
	[Utilities AddControl:widget ToContainer:self];
}

@end
