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
@synthesize title;

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
}

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	if (![[arguments objectAtIndex:0] isKindOfClass:[NullObject class]])
		self.title = [arguments objectAtIndex:0];
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

-(CGRect) getFrame
{
	return CGRectMake(0, 0, 0, 0);
}

-(void)setFrame:(CGRect)frame
{
	
}

-(UIView*) getView
{
	return NULL;
}

- (void)orientationChanged:(UIInterfaceOrientation)toInterfaceOrientation
{
	
}

-(void) addBodyControl:(id <iWidget>) widget
{
	
}

-(void) finilize
{
	
}

-(void) parentChanged: (id<iWidget>)parent
{
	if ([parent isKindOfClass:[iView class]])
	{
		iView* view = (iView*)parent;
		[view.navigationController setNavigationBarHidden:NO];
		[view.navigationItem setTitle: self.title];
	}
}


@end
