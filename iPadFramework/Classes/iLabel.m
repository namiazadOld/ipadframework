//
//  iLabel.m
//  iPadFramework
//
//  Created by Nami on 3/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iLabel.h"
#import "Constants.h"


@implementation iLabel
@synthesize label, text, textBindableObject;

//Properties Wrappers
-(NSString*) text
{
	return label.text;
}

-(void)setText:(NSString *)aString
{
	@synchronized(self)
	{
		if (label.text != aString)
		{
			label.text = [aString retain];
			[aString release];
		}
	}
}

-(iBaseControl*) initialize: (NSMutableArray*) arguments container: (iBaseControl*)parent
{
	self.label = [[UILabel alloc] init];
	self.label.adjustsFontSizeToFitWidth = YES;
	[self.label setBackgroundColor:[UIColor clearColor]];
	[super initialize:arguments container: parent];
	
	self.label.font = [UIFont fontWithName:@"Helvetica-Bold" size:[UIFont labelFontSize]];
	return self;
}

-(void) eventOccured:(id)sender
{
	if (!self.locked)
	{
		self.locked = YES;
		[self.textBindableObject setValue:self.label.text];
		self.locked = NO;
	}
}

-(void) observeBindableValueChanged:(BindableObject*) bo
{
	if (!self.locked)
	{
		self.locked = YES;
		self.label.text = (NSString*) bo.value;
		self.locked = NO;
	}
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 0:
			self.textBindableObject = bo;
			self.label.text = (NSString*)bo.value;
			break;
		case 1:
			[self setControlStyle:(UIStyle*)bo.value];
			break;
		default:
			break;
	}
}

-(CGRect) getFrame
{
	return self.label.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.label.frame = frame;
}

-(UIView*) getView
{
	return self.label;
}

@end
