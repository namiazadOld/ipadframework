//
//  iNavigationButton.h
//  iPadFramework
//
//  Created by Nami on 2/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iWidget.h"
#import "iBaseControl.h"


@interface iNavigationButton : iBaseControl {
	UIBarButtonItem* button;
	
}

@property (nonatomic, retain) UIBarButtonItem* button;
@property (nonatomic, retain) NSString* title;

@end
