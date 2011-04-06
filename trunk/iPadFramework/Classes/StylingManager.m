//
//  StylingManager.m
//  iPadFramework
//
//  Created by Nami on 4/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StylingManager.h"


@implementation StylingManager

+(float) getLeftAnchorStartingX: (float) lineY contaner: (iBaseControl*)parent
{
	float x = DEFAULT_MARGIN;
	
	for (iBaseControl* subView in [parent children])
	{
		CGRect frame = [subView getFrame];
		
		if (subView.anchor == Right || subView.anchor == LeftRight)
			continue;
		
		if (lineY >= frame.origin.y && lineY <= frame.origin.y + frame.size.height)
			if (frame.origin.x + frame.size.width + DEFAULT_MARGIN >= x)
				x = frame.origin.x + frame.size.width + DEFAULT_MARGIN;
	}
	
	return x;
}

+(float)getRightAnchorEndingX: (float) lineY container: (iBaseControl*)parent
{
	CGRect parentFrame = [parent getFrame];
	
	float x = parentFrame.size.width - DEFAULT_MARGIN;
	
	for (iBaseControl* subView in [parent children])
	{
		CGRect frame = [subView getFrame];
		
		if (subView.anchor != Right)
			continue;
		
		if (lineY >= frame.origin.y && lineY <= frame.origin.y + frame.size.height)
			if (frame.origin.x - DEFAULT_MARGIN <= x)
				x = frame.origin.x - DEFAULT_MARGIN;
	}
	
	return x;
}

+(float) calculateX:(iBaseControl*)control lastControl:(iBaseControl*)lastControl container:(iBaseControl*)parent
{
	CGRect lastControlFrame = [lastControl getFrame];
	
	float y = lastControlFrame.origin.y;
	int i = (int)control.place;
	int j = NextLine;
	if (i == j)
		y += lastControlFrame.size.height + DEFAULT_MARGIN;
	
	switch (control.anchor) {
		case None:
		{
			return lastControlFrame.origin.x;
		}
		case Left:
		{
			return [self getLeftAnchorStartingX:y contaner:parent];
		}
		case Right:
		{
			return [self getRightAnchorEndingX:y container:parent] - control.initialFrame.size.width;
		}
		case LeftRight:
		{
			return [self getLeftAnchorStartingX:y contaner:parent];
		}
		default:
			return 0;
	}	
}

+(float) calculateY:(iBaseControl*) control lastControl:(iBaseControl*)lastControl
{
	CGRect lastControlFrame = [lastControl getFrame];
	
	float y = lastControlFrame.origin.y;
	if (control.place == NextLine)
		y += lastControlFrame.size.height + DEFAULT_MARGIN;
	return y;
}

+(float) calculateWidth: (iBaseControl*)control container:(iBaseControl*)parent startingX:(float)startingX startingY:(float)startingY
{
	if (control.anchor != LeftRight)
		return control.initialFrame.size.width;
	
	float endingX = [self getRightAnchorEndingX:startingY container:parent];
	
	return endingX - startingX;
}

+(float) calculateHeight: (iBaseControl*) control
{
	float lowestY = 0.0;
	
	for (iBaseControl* child in control.children)
	{
		CGRect frame = [child getFrame];
		if (child != NULL)
			if (frame.origin.y + frame.size.height >= lowestY)
				lowestY = frame.origin.y + frame.size.height;
	}
	
	return lowestY;
}
									
+(CGRect) styledRectangle: (iBaseControl*)control container:(iBaseControl*)parent
{
	iBaseControl* lastControl = parent.lastInnerControl;
	
	float x = control.initialFrame.origin.x;
	float y = control.initialFrame.origin.y;
	
	float height = control.initialFrame.size.height;
	
	if (x == DEFAULT_X)
		x = [self calculateX:control lastControl:lastControl container:parent];
	
	if (y == DEFAULT_Y)
		y = [self calculateY:control lastControl:lastControl];
	
	float width =[self calculateWidth:control container:parent startingX:x startingY:y];

	if (height == DEFAULT_HEIGHT)
		height = [self calculateHeight:control];
	
	return CGRectMake(x, y, width, height);
}

@end
