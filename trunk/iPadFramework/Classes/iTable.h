//
//  iTable.h
//  iPadFramework
//
//  Created by Nami on 1/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iWidget.h"
#import "iTableViewController.h"


@interface iTable : NSObject <iWidget> {
	@private iTableViewController* tableViewController;
    @private NSMutableArray* sectionList;
	@private NSString* title;
}

@property (nonatomic, retain, readwrite) iTableViewController* tableViewController;
@property (retain, nonatomic, readwrite) NSMutableArray* sectionList;
@property (retain, readwrite) NSString* title;

@end
