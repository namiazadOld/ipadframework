//
//  iSection.m
//  iPadFramework
//
//  Created by Nami on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iSection.h"


@implementation iSection

-(id <iWidget>) initialize: (NSString*)text
{
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

@end
