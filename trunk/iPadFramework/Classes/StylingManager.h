//
//  StylingManager.h
//  iPadFramework
//
//  Created by Nami on 4/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iBaseControl.h"
#import "Constants.h"


@interface StylingManager : NSObject {

}

+(CGRect) styledRectangle: (iBaseControl*)control container:(iBaseControl*)parent;

@end
