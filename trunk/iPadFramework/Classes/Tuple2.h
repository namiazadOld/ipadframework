//
//  Tuple2.h
//  iPadFramework
//
//  Created by Nami on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Tuple2 : NSObject {
	id _1;
	id _2;
}

@property (assign, readwrite) id _1;
@property (assign, readwrite) id _2;

-(Tuple2*) initWithValue: (id)v1 value2: (id)v2;

@end
