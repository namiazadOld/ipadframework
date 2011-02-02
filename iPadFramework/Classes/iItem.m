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

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
}

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	if (![[arguments objectAtIndex:0] isKindOfClass:[NullObject class]])
		self.text = [arguments objectAtIndex:0];
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
