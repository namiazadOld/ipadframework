//
//  iBaseControl.m
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iBaseControl.h"


@implementation iBaseControl

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	return self;
}

-(CGRect) getRecommendedFrame: (CGRect)baseFrame;
{
	return CGRectMake(0, 0, 0, 0);
}

-(CGRect) getFrame
{
	return CGRectMake(0, 0, 0, 0);
}

-(void) setFrame: (CGRect)frame;
{
	
}

-(UIView*) getView;
{
	return NULL;
}

-(void)orientationChanged:(UIInterfaceOrientation)toInterfaceOrientation
{
	
}

-(void) addBodyControl:(id<iWidget>) widget
{
	[widget parentChanged:self];
}

-(void) finilize
{
	
}

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
	
}

-(void) parentChanged: (id<iWidget>)parent
{
	
}

@end
