//
//  iItemText.h
//  iPadFramework
//
//  Created by Nami on 3/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iItem.h"
#import "iTextField.h"


@interface iItemText : iItem {
	iTextField* textField;
}

@property (nonatomic, retain) iTextField* textField;

@end
