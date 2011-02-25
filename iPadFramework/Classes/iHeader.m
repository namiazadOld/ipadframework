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

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	[super initialize:arguments];
	if (![[arguments objectAtIndex:0] isKindOfClass:[NullObject class]])
	{
		BindableObject* bo = (BindableObject*)[arguments objectAtIndex:0];
		[self addBindingObject:bo forKey:@"title"];
		
		//self.title = [arguments objectAtIndex:0];
	}
	else 
		self.title = @"";
	
	return self;
}

-(CGRect) getRecommendedFrame: (CGRect)baseFrame
{
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
