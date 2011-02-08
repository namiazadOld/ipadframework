//
//  iRightButton.h
//  iPadFramework
//
//  Created by Nami on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iWidget.h"


@interface iRightButton : NSObject <iWidget>{
	UIBarButtonItem* button;
}

@property (nonatomic, retain) UIBarButtonItem* button;

@end
