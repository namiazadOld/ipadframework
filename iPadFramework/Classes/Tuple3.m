//
//  Tuple3.m
//  iPadFramework
//
//  Created by Nami on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Tuple3.h"


@implementation Tuple3
@synthesize _1, _2, _3;

-(Tuple3*) initWithValue: (id)v1 value2: (id)v2 value3: (id)v3
{
	self._1 = v1;
	self._2 = v2;
	self._3 = v3;
	return self;
}

@end