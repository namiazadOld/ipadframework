//
//  iSection.m
//  iPadFramework
//
//  Created by Nami on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iSection.h"
#import "NullObject.h"
#import "iTable.h"
#import "Utilities.h"
#import "Constants.h"


@implementation iSection

@synthesize title, itemList;

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
}

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	itemList = [[NSMutableArray alloc] init];
	
	if ([arguments count] > 0 && ![[arguments objectAtIndex:0] isKindOfClass:[NullObject class]])
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
	[widget parentChanged:self];
}

-(void) finilize
{
	
}

//This method is called by addBodyControl method of parent to provide good level of extensibility
-(void) parentChanged: (id<iWidget>)parent
{
	if ([parent isKindOfClass:[iTable class]])
	{
		[[parent sectionList] addObject:self];		
		return;
	}
	
	//section can only be added to table
	[Utilities ShowError:self title:MSG_WRONG_SCREEN_STRUCTURE content:@"Section can only be added to a Table"];
	
}

@end
