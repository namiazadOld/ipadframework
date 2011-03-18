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
#import "Constants.h"
#import "iEmptyWidget.h"


@implementation iTable
@synthesize tableViewController, sectionList, title;


-(id<iWidget>) initialize: (NSMutableArray*)arguments container: (id<iWidget>)parent
{
	[super initialize:arguments container: parent];
	sectionList = [[NSMutableArray alloc]init];
	
	[self manageArguments:arguments container:parent];
	
	return self;
}

-(CGRect) getRecommendedFrame: (id <iWidget>)lastControl container:(id<iWidget>)parent
{
	CGRect baseFrame = [lastControl getFrame];
	
	float margin = 0.0;
	
	if (![lastControl isKindOfClass:[iEmptyWidget class]])
		margin = DEFAULT_MARGIN;

	return CGRectMake(0.0, baseFrame.origin.y + baseFrame.size.height + margin, 768.0, 1004.0);
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

-(void) childUpdated: (id<iWidget>)child
{
	[self.tableViewController.tableView reloadData];
	//[self.tableViewController.tableView performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:NO];
}

@end
