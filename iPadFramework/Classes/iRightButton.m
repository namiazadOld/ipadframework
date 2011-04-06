//
//  iRightButton.m
//  iPadFramework
//
//  Created by Nami on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iRightButton.h"
#import "iHeader.h"
#import "Utilities.h"
#import "Constants.h"

@implementation iRightButton

-(void) parentChanged: (iBaseControl*)parent
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
