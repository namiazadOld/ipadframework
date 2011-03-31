//
//  iItemText.m
//  iPadFramework
//
//  Created by Nami on 3/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iItemText.h"
#import "BindableObject.h"
#import "iSection.h"
#import "Constants.h"


@implementation iItemText
@synthesize textField;


-(id <iWidget>) initialize: (NSMutableArray*) arguments container: (id<iWidget>)parent
{
	[super initialize:arguments container: parent];
	
	BindableObject* seperateLabelBO = [[BindableObject alloc] initWithValue:[[NSNumber alloc] initWithBool:YES]];
	BindableObject* withBorderBO = [[BindableObject alloc] initWithValue:[[NSNumber alloc] initWithBool:NO]];
	
	[arguments addObject:seperateLabelBO];
	[arguments addObject:withBorderBO];
	
	textField = [[iTextField alloc] initialize:arguments container:self];
	
	//styling
	[self style:parent];
	[self addBodyControl:textField];
	
	return self;
}

-(void)style: (id<iWidget>)parent
{
	//Appearance managment!
	if ([parent isKindOfClass:[iSection class]])
	{
		CGRect frame = self.textField.textBox.textBox.frame;
		self.textField.textBox.textBox.frame = CGRectMake(frame.origin.x, frame.origin.y - DEFAULT_MARGIN, frame.size.width - 100, frame.size.height);
	}
	
	textField.label.label.font = [UIFont fontWithName:@"Helvetica-Bold" size:[UIFont labelFontSize]];
	
	CGRect frame = self.textField.label.label.frame;
	self.textField.label.label.frame = CGRectMake(frame.origin.x, frame.origin.y - DEFAULT_MARGIN, frame.size.width, frame.size.height);

}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	//Hide super method
}

@end
