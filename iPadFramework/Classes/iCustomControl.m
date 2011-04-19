//
//  iCustomControl.m
//  iPadFramework
//
//  Created by Nami on 3/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iCustomControl.h"
#import "Constants.h"
#import "Utilities.h"


@implementation iCustomControl
@synthesize container;


-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container: parent];
	self.container = parent;
	return self;
}


//-(CGRect) getRecommendedFrame: (iBaseControl*)lastControl container:(iBaseControl*)parent
//{
//	CGRect baseFrame = [lastControl getFrame];
//	float lowestY = 0.0;
//	
//	for (UIView* view in self.scrollView.subviews)
//	{
//		float y = view.frame.origin.y;
//		if (view != NULL)
//			if (y + view.frame.size.height >= lowestY)
//				lowestY = view.frame.origin.y + view.frame.size.height;
//	}
//	
//	return CGRectMake(0,  
//					  baseFrame.origin.y + baseFrame.size.height + DEFAULT_MARGIN, 
//					  //Should be customized according to orientation of device.
//					  VERTICAL_WIDTH,
//					  lowestY);
//}

-(CGRect) getFrame
{
	return [self.container getFrame];
}

-(void)setFrame:(CGRect)frame
{
	[self.container setFrame:frame];
}

-(UIView*) getView
{
	return [self.container getView];
}

-(void) addBodyControl:(iBaseControl*) widget
{	
	[Utilities AddControl:widget ToContainer:self];
}

-(void) manageArgument:(BindableObject *)bo at:(int)index
{
	//hide super method
}

@end
