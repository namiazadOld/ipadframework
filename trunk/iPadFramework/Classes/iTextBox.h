//
//  iTextField.h
//  iPadFramework
//
//  Created by Nami on 2/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iBaseControl.h"

@interface iTextBox : iBaseControl {
	UITextField* textField;
}

@property (nonatomic, retain) UITextField* textField;
@property (nonatomic, retain) NSString* text;

@end
