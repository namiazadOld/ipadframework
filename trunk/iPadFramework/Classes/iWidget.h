//
//  iWidget.h
//  iPadFramework
//
//  Created by Nami on 1/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol iWidget<NSObject>

-(id <iWidget>) initialize: (NSString*)text;
-(CGRect) getRecommendedFrame: (CGRect)baseFrame;
-(CGRect) getFrame;
-(void) setFrame: (CGRect)frame;
-(UIView*) getView;
-(void)orientationChanged:(UIInterfaceOrientation)toInterfaceOrientation ; 
-(void) addBodyControl:(id<iWidget>) widget;
-(void) finilize;

@end
