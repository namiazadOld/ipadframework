//
//  BindableObject.m
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BindableObject.h"


@implementation BindableObject
@synthesize value;

-(BindableObject*) initWithValue: (id)_value
{
	self.value = _value;
	return self;
}

@end
