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
#import "iEmptyWidget.h"


@implementation iSection

@synthesize title, itemList;

-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container: parent];
	itemList = [[NSMutableArray alloc] init];
	return self;
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 10:
			[self addBindingObject:bo forKey:@"title"];
			break;
		default:
			break;
	}	
}


//This method is called by addBodyControl method of parent to provide good level of extensibility
-(void) parentChanged: (iBaseControl*)parent
{
	if ([parent isKindOfClass:[iTable class]])
	{
		iTable* table = (iTable*)parent;
		[table.sectionList addObject:self];		
		return;
	}
	
	//section can only be added to table
	[Utilities ShowError:self title:MSG_WRONG_SCREEN_STRUCTURE content:@"Section can only be added to a Table"];
	
}

-(void) childUpdated: (iBaseControl*)child
{
	[self.parentWidget childUpdated:child];
}

@end
