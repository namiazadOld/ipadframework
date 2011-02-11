//
//  iItem.h
//  iPadFramework
//
//  Created by Nami on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iWidget.h"
#import "iBaseControl.h"


@interface iItem : iBaseControl{
	NSString* text;
}

@property (retain) NSString* text;

@end
