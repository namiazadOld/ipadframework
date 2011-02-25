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

@synthesize text;

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	[super initialize:arguments];
	if (![[arguments objectAtIndex:0] isKindOfClass:[NullObject class]])
	{
		BindableObject* bo = (BindableObject*)[arguments objectAtIndex:0];
		[self addBindingObject:bo forKey:@"text"];
		
		//self.text = [arguments objectAtIndex:0];
	}
	else 
		self.text = @"";

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
			section = [[iSection alloc] initialize:[[NSMutableArray alloc] init]];
			[table.sectionList addObject:section];
		}
		
		section = [table.sectionList objectAtIndex:0];
		[section.itemList addObject:self];
		return;
	}
}


@end
