//
//  Utilities.m
//  iPadFramework
//
//  Created by Nami on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Utilities.h"
#import "iBaseControl.h"


@implementation Utilities


+(void) ShowError: (id)sender title: (NSString*)title content: (NSString*)content
{
	UIAlertView *someError = [[UIAlertView alloc] 
							  initWithTitle: title 
							  message: content 
							  delegate:sender 
							  cancelButtonTitle: @"Ok" 
							  otherButtonTitles: nil];
	[someError show];
	[someError release];

}

+(void) AddControl:(id <iWidget>) widget ToContainer: (iBaseControl*) container
{
	iBaseControl* lastControl = container.lastInnerControl;
	[widget setFrame:[widget getRecommendedFrame:lastControl container: container]];
	UIView* view = [widget getView];
	
	if (view != NULL)
		[[container getView] addSubview:view];
	
	[container setLastInnerControl:widget];
	
	[widget setParentWidget:container];
	[widget parentChanged:container];
}


@end
