//
//  iTable.m
//  iPadFramework
//
//  Created by Nami on 1/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iTable.h"
#import "iTableViewController.h"
#import "iView.h"


@implementation iTable
@synthesize tableViewController, sectionList, title;


-(id<iWidget>) initialize: (NSMutableArray*)arguments
{
	sectionList = [[NSMutableArray alloc]init];
	return self;
}

-(CGRect) getRecommendedFrame: (CGRect)baseFrame
{
	return CGRectMake(0.0, baseFrame.origin.y + baseFrame.size.height, 768.0, 1004.0);
}

-(CGRect) getFrame
{
	return self.tableViewController.tableView.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.tableViewController.tableView.frame = frame;
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

-(void) finilize
{
	UITableViewStyle style = [self.sectionList count] > 1 ? UITableViewStyleGrouped : UITableViewStylePlain;
	self.tableViewController = [[iTableViewController alloc] initWithStyle:style];
	self.tableViewController.sectionList = self.sectionList;
	self.tableViewController.title = self.title;
}

@end
