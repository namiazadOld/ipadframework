//
//  BindableObject.h
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BindableObject : NSObject {
	id value;
}

@property (retain, readwrite) id value;

-(BindableObject*) initWithValue: (id)_value;

@end
