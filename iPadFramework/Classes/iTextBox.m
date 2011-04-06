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

@synthesize textBox, text, withBorder;

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

-(NSNumber*) withBorder
{
	return [[NSNumber numberWithBool:self.textBox.borderStyle == UITextBorderStyleRoundedRect] autorelease];
}

-(void)setWithBorder: (NSNumber*) aBool
{
	@synchronized(self)
	{
		if ([aBool compare:[NSNumber numberWithBool:YES]] == NSOrderedSame)
			self.textBox.borderStyle = UITextBorderStyleRoundedRect;
		else
			self.textBox.borderStyle = UITextBorderStyleNone;
	}
}


-(void) setupLabel: (NSString*) text
{
	UILabel* label = [[UILabel alloc] init];
	label.adjustsFontSizeToFitWidth = YES;
}

-(iBaseControl*) initialize: (NSMutableArray*) arguments container: (iBaseControl*)parent
{
	self.textBox = [[UITextField alloc] init];
	[super initialize:arguments container: parent];
	return self;
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 6:
			[self addBindingObject:bo forKey:@"text"];
			self.textBox.text = (NSString*)bo.value;
			break;
		case 7:
			[self addBindingObject:bo forKey:@"placeholder"];
			self.textBox.placeholder = (NSString*)bo.value;
			break;
		case 8:
			[self addBindingObject:bo forKey:@"withBorder"];
			self.withBorder = (NSNumber*)bo.value;
			break;
		default:
			break;
	}
}

//-(CGRect) getRecommendedFrame: (iBaseControl*) lastControl container:(iBaseControl*)parent
//{
//	CGRect baseFrame = [lastControl getFrame];
//	
//	float width = self.maxSize.width - (baseFrame.origin.x + 2*DEFAULT_MARGIN); 
//	if ([lastControl isKindOfClass:[iLabel class]])
//		return CGRectMake(baseFrame.origin.x + baseFrame.size.width + DEFAULT_MARGIN, baseFrame.origin.y, width - baseFrame.size.width, 31);
//	return CGRectMake(baseFrame.origin.x + DEFAULT_MARGIN, baseFrame.origin.y + DEFAULT_MARGIN, width, 31);
//}

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

@end
