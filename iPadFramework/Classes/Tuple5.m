//
//  Tuple5.m
//  iPadFramework
//
//  Created by Nami on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Tuple5.h"


@implementation Tuple5
@synthesize _1, _2, _3, _4, _5;

-(Tuple5*) initWithValue: (id)v1 value2: (id)v2 value3: (id)v3 value4: (id)v4 value5: (id)v5
{
	self._1 = v1;
	self._2 = v2;
	self._3 = v3;
	self._4 = v4;
	self._5 = v5;
	return self;
}

@end
