//
//  Tuple2.m
//  iPadFramework
//
//  Created by Nami on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Tuple2.h"


@implementation Tuple2
@synthesize _1, _2;

-(Tuple2*) initWithValue: (id)v1 value2: (id)v2
{
	self._1 = v1;
	self._2 = v2;
	return self;
}

@end
