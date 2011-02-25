//
//  iButton.m
//  iPadFramework
//
//  Created by Nami on 1/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iTextField.h"
#import "NullObject.h"
#import "NSSelector.h"


@implementation iTextField

@synthesize textField, text;

//Properties Wrappers
-(NSString*) text
{
	return textField.text;
}

-(void)setText:(NSString *)aString
{
	@synchronized(self)
	{
		if (textField.text != aString)
		{
			textField.text = [aString retain];
			[aString release];
		}
	}
}

-(id <iWidget>) initialize: (NSMutableArray*) arguments
{
	self.textField = [[UITextField alloc] init];
	
	[super initialize:arguments];
	
	if (![[arguments objectAtIndex:0] isKindOfClass:[NullObject class]])
	{
		BindableObject* bo = (BindableObject*) [arguments objectAtIndex:0];
		[self addBindingObject:bo forKey:@"text"];
		self.textField.text = (NSString*)bo.value;
	}
	
	//if (![[arguments objectAtIndex:1] isKindOfClass:[NullObject class]])
//	{
//		NSSelector* methodSelector = (NSSelector*)[arguments objectAtIndex:1];
//		[self addTarget: methodSelector.target action: methodSelector.method forControlEvents:UIControlEventTouchUpInside];
//	}
	
	return self;
}

-(CGRect) getRecommendedFrame: (CGRect)baseFrame
{
	return CGRectMake(baseFrame.origin.x, baseFrame.origin.y + baseFrame.size.height, 100, 50);
}

-(CGRect) getFrame
{
	return self.textField.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.textField.frame = frame;
}

-(UIView*) getView
{
	return self.textField;
}

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
	[self.textField addTarget:target action:action forControlEvents:controlEvents];
}

-(id) getActualContol
{
	return self.textField;
}

@end
