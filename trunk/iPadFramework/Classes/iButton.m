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

-(iBaseControl*) initialize: (NSMutableArray*) arguments container: (iBaseControl*)parent
{
	self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[super initialize:arguments container: parent];
		
	return self;
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 10:
			[self addBindingObject:bo forKey:@"title"];
			[self.button setTitle:(NSString*)bo.value forState:UIControlStateNormal];
			break;
		case 11:
		{
			NSSelector* methodSelector = (NSSelector*)bo.value;
			[self addTarget: methodSelector.target action: methodSelector.method forControlEvents:UIControlEventTouchUpInside];
			break;
		}
		default:
			break;
	}
	
}

//-(CGRect) getRecommendedFrame: (iBaseControl*)lastControl container:(iBaseControl*)parent
//{
//	CGRect baseFrame = [lastControl getFrame];
//	return CGRectMake(baseFrame.origin.x + DEFAULT_MARGIN, baseFrame.origin.y + baseFrame.size.height + DEFAULT_MARGIN, 72, 37);
//}

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

@end
