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
	//CGRect lastInnerControlFrame;
	iBaseControl* lastInnerControl;
	NSMutableDictionary* boundObjects;
	BOOL locked;
	iBaseControl* parentWidget;
	CGSize maxSize;
	
	UIViewController* viewController;
}

//@property (assign) CGRect lastInnerControlFrame;
@property (readwrite, retain) iBaseControl* lastInnerControl;
@property (readwrite, retain) NSMutableDictionary* boundObjects;
@property (readwrite, assign) BOOL locked;
@property (readwrite, retain) iBaseControl* parentWidget;
@property (readonly, assign) BOOL eventSupported;
@property (readwrite, assign) CGSize maxSize;
@property (nonatomic, retain) UIViewController* viewController;


-(void) addBindingObject:(BindableObject*)bo forKey:(NSString*)key;
-(void) manageArguments: (NSMutableArray*)arguments container: (id<iWidget>)parent;
-(void) manageArgument: (BindableObject*)bo at:(int)index;

@end
