//
//  iBaseControl.h
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iWidget.h"


@interface iBaseControl : NSObject<iWidget> {
	CGRect lastInnerControlFrame;
}

@property (assign) CGRect lastInnerControlFrame;

@end
