//
//  iSection.h
//  iPadFramework
//
//  Created by Nami on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iBaseControl.h"

@interface iSection : iBaseControl {
	NSMutableArray* itemList;
	NSString* title;
}

@property (nonatomic, retain) NSMutableArray* itemList;
@property (retain) NSString* title;

@end
