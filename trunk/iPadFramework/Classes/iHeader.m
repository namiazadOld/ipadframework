//
//  iHeader.m
//  iPadFramework
//
//  Created by Nami on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iHeader.h"
#import "NullObject.h"
#import "iView.h"


@implementation iHeader
@synthesize title, rightButton, leftButton;

-(id <iWidget>) initialize: (NSMutableArray*)arguments container: (id<iWidget>)parent
{
	[super initialize:arguments container: parent];
	
	[self manageArguments:arguments container:parent];
	
	return self;
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	switch (index) {
		case 0:
			[self addBindingObject:bo forKey:@"title"];
			break;
		default:
			break;
	}
}


-(CGRect) getRecommendedFrame: (id <iWidget>) lastControl container:(id<iWidget>)parent
{
	CGRect baseFrame = [lastControl getFrame];
	return CGRectMake(baseFrame.origin.x, 
					  baseFrame.origin.y + baseFrame.size.height, 
					  baseFrame.size.width, 
					  baseFrame.size.height);
}

-(void) parentChanged: (id<iWidget>)parent
{
	if ([parent isKindOfClass:[iView class]])
	{
		iView* view = (iView*)parent;
		[view.viewController.navigationController setNavigationBarHidden:NO];
		[view.viewController.navigationItem setTitle: self.title];
		
		if (self.rightButton != NULL)
			view.viewController.navigationItem.rightBarButtonItem = self.rightButton;
		
		if (self.leftButton != NULL)
			view.viewController.navigationItem.leftBarButtonItem = self.leftButton;
	}
}


@end
