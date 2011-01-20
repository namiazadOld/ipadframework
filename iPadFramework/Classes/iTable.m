//
//  iTable.m
//  iPadFramework
//
//  Created by Nami on 1/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iTable.h"
#import "iSection.h"
#import "iTableViewController.h"


@implementation iTable
@synthesize tableViewController, numberOfSections, numberofRowInSection, title;

CGRect lastInnerControlFrame;

-(id<iWidget>) initialize: (NSString*)text
{
	numberOfSections = 0;
	numberofRowInSection = 0;
	title = text;
	return self;
}

-(CGRect) getFrame
{
	return self.tableViewController.tableView.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.tableViewController.tableView.frame = frame;
}

-(CGRect) getRecommendedFrame: (CGRect)baseFrame
{
	return CGRectMake(0.0, baseFrame.origin.y + baseFrame.size.height, 768.0, 1004.0);
}

-(UIView*) getView
{
	return self.tableViewController.tableView;
}

- (void)orientationChanged:(UIInterfaceOrientation)toInterfaceOrientation
{
	if (UIDeviceOrientationIsPortrait(toInterfaceOrientation))
		self.tableViewController.tableView.frame = CGRectMake(0.0, 0.0, 768.0, 1004.0);
	else if(UIDeviceOrientationIsLandscape(toInterfaceOrientation))
		self.tableViewController.tableView.frame = CGRectMake(0.0, 0.0, 1004.0, 768.0);
}

-(void) addBodyControl:(id<iWidget>) widget
{
	if ([widget isKindOfClass:[iSection class]])
	{
		self.numberOfSections++;
	}
}

-(void) finilize
{
	UITableViewStyle style = numberOfSections > 0 ? UITableViewStyleGrouped : UITableViewStylePlain;
	self.tableViewController = [[iTableViewController alloc] initWithStyle:style];
}

@end
