//
//  iButton.h
//  iPadFramework
//
//  Created by Nami on 1/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iWidget.h"


@interface iButton : NSObject <iWidget> {
	UIButton* button;
}

@property (nonatomic, retain) UIButton* button;

@end
