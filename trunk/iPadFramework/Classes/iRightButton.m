//
//  iRightButton.m
//  iPadFramework
//
//  Created by Nami on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iRightButton.h"
#import "NullObject.h"
#import "iHeader.h"
#import "Utilities.h"
#import "Constants.h"
#import "NSSelector.h"


@implementation iRightButton

@synthesize button;

CGRect lastInnerControlFrame;

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
	[self.button setAction:action];
	[self.button setTarget:target];
}

-(id <iWidget>) initialize: (NSMutableArray*) arguments
{
	self.button = [[UIBarButtonItem alloc] init];
	[self.button setStyle:UIBarButtonSystemItemFastForward];
	
	if (![[arguments objectAtIndex:0] isKindOfClass:[NullObject class]])
		self.button.title = [arguments objectAtIndex:0];
	
	if (![[arguments objectAtIndex:1] isKindOfClass:[NullObject class]])
	{
		NSSelector* methodSelector = (NSSelector*)[arguments objectAtIndex:1];
		[self addTarget: methodSelector.target action: methodSelector.method forControlEvents:UIControlEventTouchUpInside];
	}
	
	return self;
}


-(CGRect) getRecommendedFrame: (CGRect)baseFrame
{
	return CGRectMake(baseFrame.origin.x, baseFrame.origin.y + baseFrame.size.height, 100, 50);
}

-(CGRect) getFrame
{
	return CGRectMake(0.0, 0.0, self.button.width, 50.0);
}

-(void)setFrame:(CGRect)frame
{
	[self.button setWidth:frame.size.width];
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

-(void) parentChanged: (id<iWidget>)parent
{
	if ([parent isKindOfClass:[iHeader class]])
	{
		iHeader* header = (iHeader*)parent;
		header.rightButton = self.button;
		return;
	}
	
	//rightButton can only be added to header and footer
	[Utilities ShowError:self title:MSG_WRONG_SCREEN_STRUCTURE content:@"Right Button can only be added to header and footer"];

}


@end
