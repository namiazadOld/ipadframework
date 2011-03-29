//
//  BindableObject.h
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BindableObject : NSObject {
	NSObject* value;
}

@property (retain, readwrite) NSObject* value;

-(BindableObject *) initWithValue: (id)_value;

@end
