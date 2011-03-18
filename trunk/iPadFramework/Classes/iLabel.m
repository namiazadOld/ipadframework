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
@synthesize label, text;

//Properties Wrappers
-(NSString*) text
{
	return label.text;
}

-(BOOL) eventSupported
{
	return NO;
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

-(id <iWidget>) initialize: (NSMutableArray*) arguments container: (id<iWidget>)parent
{
	self.label = [[UILabel alloc] init];
	self.label.adjustsFontSizeToFitWidth = YES;
	
	[super initialize:arguments container: parent];
	[self manageArguments:arguments container:parent];
	
	
	return self;
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	switch (index) {
		case 0:
			[self addBindingObject:bo forKey:@"text"];
			self.label.text = (NSString*)bo.value;
			break;
		default:
			break;
	}
}


-(void) eventOccured: (id) sender
{
	[super eventOccured:sender];
}

-(void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	[super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
}

-(CGRect) getRecommendedFrame: (id <iWidget>)lastControl container:(id<iWidget>)parent
{
	CGRect baseFrame = [lastControl getFrame];
	return CGRectMake(baseFrame.origin.x + DEFAULT_MARGIN, baseFrame.origin.y + baseFrame.size.height + DEFAULT_MARGIN, 90, 21);
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

-(id) getActualContol
{
	return self.label;
}

@end
