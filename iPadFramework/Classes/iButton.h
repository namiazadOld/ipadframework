//
//  iButton.h
//  iPadFramework
//
//  Created by Nami on 1/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iWidget.h"
#import "iBaseControl.h"

@interface iButton : iBaseControl {
	UIButton* button;
}

@property (nonatomic, retain) UIButton* button;
@property (nonatomic, retain) NSString* title;

@end
