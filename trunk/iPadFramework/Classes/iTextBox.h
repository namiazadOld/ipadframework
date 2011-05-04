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
	UITextField* textBox;
}

@property (nonatomic, retain) UITextField* textBox;
@property (nonatomic, retain) NSString* text;
@property (nonatomic, retain) NSString* placeholder;

@end
