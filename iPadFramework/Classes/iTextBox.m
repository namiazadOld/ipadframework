//
//  iButton.m
//  iPadFramework
//
//  Created by Nami on 1/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iTextBox.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "Constants.h"
#import "iLabel.h"

@implementation iTextBox

@synthesize textBox, text;

//Properties Wrappers
-(NSString*) text
{
	return textBox.text;
}

-(void)setText:(NSString *)aString
{
	@synchronized(self)
	{
		if (textBox.text != aString)
		{
			textBox.text = [aString retain];
			[aString release];
		}
	}
}

-(NSString*) placeholder
{
	return textBox.placeholder;
}

-(void)setPlaceholder:(NSString *)aString
{
	@synchronized(self)
	{
		if (textBox.placeholder != aString)
		{
			textBox.placeholder = [aString retain];
			[aString release];
		}
	}
}

-(void) setupLabel: (NSString*) text
{
	UILabel* label = [[UILabel alloc] init];
	label.adjustsFontSizeToFitWidth = YES;
}

-(id <iWidget>) initialize: (NSMutableArray*) arguments container: (id<iWidget>)parent
{
	self.textBox = [[UITextField alloc] init];
	self.textBox.borderStyle = UITextBorderStyleRoundedRect;
	
	[super initialize:arguments container: parent];
	[self manageArguments:arguments container:parent];
	
	return self;
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	switch (index) {
		case 0:
			[self addBindingObject:bo forKey:@"text"];
			self.textBox.text = (NSString*)bo.value;
			break;
		case 1:
			[self addBindingObject:bo forKey:@"placeholder"];
			self.textBox.placeholder = (NSString*)bo.value;
			break;
		default:
			break;
	}
}

-(CGRect) getRecommendedFrame: (id <iWidget>) lastControl container:(id<iWidget>)parent
{
	CGRect baseFrame = [lastControl getFrame];
	
	float width = self.maxSize.width - (baseFrame.origin.x + 2*DEFAULT_MARGIN); 
	if ([lastControl isKindOfClass:[iLabel class]])
	{
		return CGRectMake(baseFrame.origin.x + baseFrame.size.width + DEFAULT_MARGIN, baseFrame.origin.y, width - baseFrame.size.width, 31);
	}
	return CGRectMake(baseFrame.origin.x + DEFAULT_MARGIN, baseFrame.origin.y + DEFAULT_MARGIN, width, 31);
}

-(CGRect) getFrame
{
	return self.textBox.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.textBox.frame = frame;
}

-(UIView*) getView
{
	return self.textBox;
}

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
	[self.textBox addTarget:target action:action forControlEvents:controlEvents];
}

-(id) getActualContol
{
	return self.textBox;
}

@end
