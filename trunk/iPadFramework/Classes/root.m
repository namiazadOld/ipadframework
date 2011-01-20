//
//  RootView.m
//  iPadFramework
//
//  Created by Nami on 1/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "root.h"
#import "NSStack.h"
#import "iButton.h"
#import "iTable.h"
#import "iSection.h"

@implementation root

//NSMutableArray* controlArray;

-(id <iWidget>) initialize: (NSString*)text
{
	[super initialize:text];
		
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	
	iButton* button1 = [[iButton alloc]initialize:@"Hello"];
	[containerStack push:button1];
	[containerStack pop];
	[button1 finilize];
	[[containerStack top] addBodyControl:button1];
	
	iButton* button2 = [[iButton alloc]initialize:@"Bye"];
	[containerStack push:button2] ;
	[containerStack pop];
	[button2 finilize];
	[[containerStack top] addBodyControl:button2];
	
	
	iTable* table1 = [[iTable alloc]initialize:@"Hello"];
	[containerStack push:table1];
	
	iSection* section1 = [[iSection alloc]initialize:@"Hello"];
	[containerStack push:section1];
	[containerStack pop];
	[section1 finilize];
    [[containerStack top] addBodyControl:section1];
	
	iSection* section2 = [[iSection alloc]initialize:@"Hello"];
	[containerStack push:section2];
	[containerStack pop];
	[section2 finilize];
	[[containerStack top] addBodyControl:section2];
	
	//sections and items
	[containerStack pop];
	[table1 finilize];
	[[containerStack top] addBodyControl:table1];
	
	[containerStack pop];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration 
{
	//for(NSObject* control in controlArray)
	//	[control orientationChanged:toInterfaceOrientation];
}

@end
