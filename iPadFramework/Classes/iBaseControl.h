//
//  iBaseControl.h
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BindableObject.h"


typedef enum 
{
	Left = 0,
	Right = 1,
	LeftRight = 2,
	None = 3
} Anchor;

typedef enum
{
	CurrentLine = 0,
 	NextLine = 1
} Place;

@interface iBaseControl : NSObject {
	//CGRect lastInnerControlFrame;
	iBaseControl* lastInnerControl;
	NSMutableDictionary* boundObjects;
	BOOL locked;
	iBaseControl* parentWidget;
	CGSize maxSize;
	UIViewController* viewController;
	NSMutableArray* children;
	
	Anchor anchor;
	Place  place;
	CGRect initialFrame;
}

//@property (assign) CGRect lastInnerControlFrame;
@property (readwrite, retain) iBaseControl* lastInnerControl;
@property (readwrite, retain) NSMutableDictionary* boundObjects;
@property (readwrite, assign) BOOL locked;
@property (readwrite, retain) iBaseControl* parentWidget;
@property (readwrite, assign) CGSize maxSize;
@property (nonatomic, retain) UIViewController* viewController;
@property (nonatomic) Anchor anchor;
@property (nonatomic) Place place;
@property (assign) CGRect initialFrame;
@property (readonly, retain) NSMutableArray* children;

-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent;
-(CGRect) getRecommendedFrame: (iBaseControl*)parent;
-(CGRect) getFrame;
-(void) setFrame: (CGRect)frame;
-(UIView*) getView;
-(UIView*) getChildrenHolder;
-(void)orientationChanged:(UIInterfaceOrientation)toInterfaceOrientation ; 
-(void) addBodyControl:(iBaseControl*) widget;
-(void) finilize;
-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
-(void) parentChanged: (iBaseControl*)parent;
-(void) childUpdated: (iBaseControl*)child;
-(void) addBindingObject:(BindableObject*)bo forKey:(NSString*)key;
-(void) manageArguments: (NSMutableArray*)arguments container: (iBaseControl*)parent;
-(void) manageArgument: (BindableObject*)bo at:(int)index;
-(void)style: (iBaseControl*)parent;
-(void) eventOccured: (id) sender;

@end
