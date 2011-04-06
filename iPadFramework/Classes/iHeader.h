//
//  iHeader.h
//  iPadFramework
//
//  Created by Nami on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iBaseControl.h"


@interface iHeader : iBaseControl {
	
		NSString* title;
		UIBarButtonItem* rightButton;
		UIBarButtonItem* leftButton;
}

@property (retain) NSString* title;
@property (retain) UIBarButtonItem* rightButton;
@property (retain) UIBarButtonItem* leftButton;

@end
