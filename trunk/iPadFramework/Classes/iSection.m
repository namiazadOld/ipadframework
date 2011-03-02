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

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	[super initialize:arguments];
	itemList = [[NSMutableArray alloc] init];
	
	if ([arguments count] > 0 && ![[arguments objectAtIndex:0] isKindOfClass:[NullObject class]])
	{
		BindableObject* bo = (BindableObject*)[arguments objectAtIndex:0];
		[self addBindingObject:bo forKey:@"title"];
		
		//self.title = [arguments objectAtIndex:0];
	}
	
	return self;
}

-(CGRect) getRecommendedFrame: (CGRect)baseFrame
{
	return CGRectMake(baseFrame.origin.x, 
					  baseFrame.origin.y + baseFrame.size.height, 
					  baseFrame.size.width, 
					  baseFrame.size.height);
}


//This method is called by addBodyControl method of parent to provide good level of extensibility
-(void) parentChanged: (id<iWidget>)parent
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

-(void) childUpdated: (id<iWidget>)child
{
	[self.parentWidget childUpdated:child];
}

@end
