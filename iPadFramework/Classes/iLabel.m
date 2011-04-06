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
	return self;
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 6:
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

//-(CGRect) getRecommendedFrame: (iBaseControl*)lastControl container:(iBaseControl*)parent
//{
//	CGRect baseFrame = [lastControl getFrame];
//	return CGRectMake(baseFrame.origin.x + DEFAULT_MARGIN, baseFrame.origin.y + baseFrame.size.height + DEFAULT_MARGIN, 90, 21);
//}

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
