//
//  Application.h
//  iPadFramework
//
//  Created by Nami on 3/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BaseModule.h"


@interface Application : BaseModule {
	UIWindow *window;
}

@property (nonatomic, retain) UIWindow *window;

@end
