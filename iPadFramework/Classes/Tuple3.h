//
//  Tuple3.h
//  iPadFramework
//
//  Created by Nami on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Tuple3 : NSObject {
	id _1;
	id _2;
	id _3;
}

@property (assign, readwrite) id _1;
@property (assign, readwrite) id _2;
@property (assign, readwrite) id _3;

-(Tuple3*) initWithValue: (id)v1 value2: (id)v2 value3: (id)v3;

@end

