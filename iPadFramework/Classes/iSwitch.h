//
//  iSwitch.h
//  iPadFramework
//
//  Created by Nami on 4/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iBaseControl.h"


@interface iSwitch : iBaseControl {
	UISwitch* switchable;
}

@property (nonatomic, retain) UISwitch* switchable;
@property (nonatomic, retain) NSNumber* state;

@end
