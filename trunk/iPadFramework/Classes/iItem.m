//
//  iItem.m
//  iPadFramework
//
//  Created by Nami on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iItem.h"
#import "NullObject.h"
#import "iSection.h"
#import "iTable.h"


@implementation iItem

@synthesize text, cell;

-(id <iWidget>) initialize: (NSMutableArray*)arguments container: (id<iWidget>)parent
{
	[super initialize:arguments container: parent];
	
	self.cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"] autorelease];
	
	[self manageArguments:arguments container:parent];	

	return self;
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	switch (index) {
		case 0:
			[self addBindingObject:bo forKey:@"text"];
			break;
		default:
			break;
	}
}


//This method is called by addBodyControl method of parent to provide good level of extensibility
-(void) parentChanged: (id<iWidget>)parent
{
	if ([parent isKindOfClass:[iSection class]])
	{
		iSection* section = (iSection*)parent;
		[section.itemList addObject:self];
		return;
	}
	
	if ([parent isKindOfClass:[iTable class]])
	{
		iSection* section;
		iTable* table = (iTable*)parent;
		if ([table.sectionList count] == 0)
		{
			section = [[iSection alloc] initialize:[[NSMutableArray alloc] init] container: table];
			[table.sectionList addObject:section];
		}
		
		section = [table.sectionList objectAtIndex:0];
		[section.itemList addObject:self];
		return;
	}
}

-(void) addBodyControl:(id <iWidget>) widget
{

	[widget setFrame:[widget getRecommendedFrame:self.lastInnerControl container: self]];
	UIView* view = [widget getView];
	
	if (view != NULL)
		[self.cell.contentView addSubview:view];
	
	self.lastInnerControl = widget;
	
	[widget setParentWidget:self];
	[widget parentChanged:self];
}

-(UIView*) getView
{
	return cell;
}

@end
