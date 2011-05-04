//
//  iSwitch.m
//  iPadFramework
//
//  Created by Nami on 4/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iSwitch.h"


@implementation iSwitch
@synthesize switchable, state;

-(NSNumber*) state
{
	return [[NSNumber numberWithBool:self.switchable.on] autorelease];
}

-(void)setState: (NSNumber*) aBool
{
	@synchronized(self)
	{
		if ([aBool compare:[NSNumber numberWithBool:YES]] == NSOrderedSame)
			[self.switchable setOn:YES animated:YES];
		else
			[self.switchable setOn:NO animated:YES];
	}
}

-(iBaseControl*) initialize: (NSMutableArray*) arguments container: (iBaseControl*)parent
{
	self.switchable = [[UISwitch alloc] init];
	[super initialize:arguments container: parent];
	return self;
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 0:
			[self addBindingObject:bo forKey:@"state"];
			self.state = (NSNumber*)bo.value;
			break;
		default:
			break;
	}
}

-(CGRect) getFrame
{
	return self.switchable.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.switchable.frame = frame;
}

-(UIView*) getView
{
	return self.switchable;
}

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
	[self.switchable addTarget:target action:action forControlEvents:controlEvents];
}


@end
