//
//  Tuple1.h
//  iPadFramework
//
//  Created by Nami on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Tuple1 : NSObject {
	id _1;
}

@property (assign, readwrite) id _1;

-(Tuple1*) initWithValue: (id)v1;

@end
