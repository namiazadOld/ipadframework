//
//  iTextField.h
//  iPadFramework
//
//  Created by Nami on 2/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iBaseControl.h"

@interface iTextField : iBaseControl {
	UITextField* textField;
}

@property (retain) UITextField* textField;
@property (retain) NSString* text;

@end
