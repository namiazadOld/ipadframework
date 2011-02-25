//
//  iBaseControl.h
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iWidget.h"
#import "BindableObject.h"


@interface iBaseControl : NSObject<iWidget> {
	CGRect lastInnerControlFrame;
	NSMutableDictionary* boundObjects;
	BOOL locked;
}

@property (assign) CGRect lastInnerControlFrame;
@property (readwrite, retain) NSMutableDictionary* boundObjects;
@property (readwrite, assign) BOOL locked;

-(void) addBindingObject:(BindableObject*)bo forKey:(NSString*)key;

@end
