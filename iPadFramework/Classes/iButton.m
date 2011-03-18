//
//  iButton.m
//  iPadFramework
//
//  Created by Nami on 1/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iButton.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "Constants.h"


@implementation iButton

@synthesize button;

//Properties Wrappers
-(NSString*) title
{
	return button.currentTitle;
}

-(void)setTitle:(NSString *)aString
{
	@synchronized(self)
	{
		if (button.currentTitle != aString)
		{
			[button setTitle:[aString retain] forState:button.state];
			[aString release];
		}
	}
}

-(id <iWidget>) initialize: (NSMutableArray*) arguments container: (id<iWidget>)parent
{
	[super initialize:arguments container: parent];
	self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	
	[self manageArguments:arguments container:parent];
	
	return self;
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	switch (index) {
		case 0:
			[self addBindingObject:bo forKey:@"title"];
			[self.button setTitle:(NSString*)bo.value forState:UIControlStateNormal];
			break;
		case 1:
		{
			NSSelector* methodSelector = (NSSelector*)bo.value;
			[self addTarget: methodSelector.target action: methodSelector.method forControlEvents:UIControlEventTouchUpInside];
			break;
		}
		default:
			break;
	}
	
}

-(CGRect) getRecommendedFrame: (id <iWidget>)lastControl container:(id<iWidget>)parent
{
	CGRect baseFrame = [lastControl getFrame];
	return CGRectMake(baseFrame.origin.x + DEFAULT_MARGIN, baseFrame.origin.y + baseFrame.size.height + DEFAULT_MARGIN, 72, 37);
}

-(CGRect) getFrame
{
	return self.button.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.button.frame = frame;
}

-(UIView*) getView
{
	return self.button;
}

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
	[self.button addTarget:target action:action forControlEvents:controlEvents];
}

-(id) getActualContol
{
	return self.button;
}

@end
