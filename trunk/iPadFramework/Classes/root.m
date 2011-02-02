

#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "iWidget.h"
#import "iView.h"
#import "root.h"
#import "iTable.h"
#import "iSection.h"
#import "iItem.h"






#import "iHeader.h"
#import "iButton.h"

@implementation root
@synthesize window;
-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	[super initialize:arguments];
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	
	id tmp492 = @"MyHeader";
	
	//changing iHeader_ControlCall23 arguments to an array
	
	NSMutableArray* arguments_iHeader_ControlCall230 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_ControlCall230 addObject:tmp492];
	
	//initializing iHeader_ControlCall23 control
	iHeader* iHeader_ControlCall23 = [[iHeader alloc]initialize:arguments_iHeader_ControlCall230];
	//push iHeader_ControlCall23 to stack to add innert controls
	[containerStack push:iHeader_ControlCall23];
	
	id tmp491 = @"";
	id tmp490 = @"Nami";
	
	//changing iButton_ControlCall24 arguments to an array
	
	NSMutableArray* arguments_iButton_ControlCall240 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_ControlCall240 addObject:tmp490];
	[arguments_iButton_ControlCall240 addObject:tmp491];
	
	//initializing iButton_ControlCall24 control
	iButton* iButton_ControlCall24 = [[iButton alloc]initialize:arguments_iButton_ControlCall240];
	//push iButton_ControlCall24 to stack to add innert controls
	[containerStack push:iButton_ControlCall24];
	
	//pop iButton_ControlCall24
	[containerStack pop];
	[iButton_ControlCall24 finilize];
	[[containerStack top] addBodyControl:iButton_ControlCall24];
	
	//pop iHeader_ControlCall23
	[containerStack pop];
	[iHeader_ControlCall23 finilize];
	[[containerStack top] addBodyControl:iHeader_ControlCall23];
	
	id tmp493 = @"Wrong Section";
	
	//changing iSection_ControlCall25 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall250 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall250 addObject:tmp493];
	
	//initializing iSection_ControlCall25 control
	iSection* iSection_ControlCall25 = [[iSection alloc]initialize:arguments_iSection_ControlCall250];
	//push iSection_ControlCall25 to stack to add innert controls
	[containerStack push:iSection_ControlCall25];
	
	//pop iSection_ControlCall25
	[containerStack pop];
	[iSection_ControlCall25 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall25];
	
	
	//changing iTable_ControlCall26 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall260 = [[NSMutableArray alloc] init];
	
	
	//initializing iTable_ControlCall26 control
	iTable* iTable_ControlCall26 = [[iTable alloc]initialize:arguments_iTable_ControlCall260];
	//push iTable_ControlCall26 to stack to add innert controls
	[containerStack push:iTable_ControlCall26];
	
	id tmp496 = @"First Section";
	
	//changing iSection_ControlCall27 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall270 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall270 addObject:tmp496];
	
	//initializing iSection_ControlCall27 control
	iSection* iSection_ControlCall27 = [[iSection alloc]initialize:arguments_iSection_ControlCall270];
	//push iSection_ControlCall27 to stack to add innert controls
	[containerStack push:iSection_ControlCall27];
	
	id tmp494 = @"Nami";
	
	//changing iItem_ControlCall28 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall280 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall280 addObject:tmp494];
	
	//initializing iItem_ControlCall28 control
	iItem* iItem_ControlCall28 = [[iItem alloc]initialize:arguments_iItem_ControlCall280];
	//push iItem_ControlCall28 to stack to add innert controls
	[containerStack push:iItem_ControlCall28];
	
	//pop iItem_ControlCall28
	[containerStack pop];
	[iItem_ControlCall28 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall28];
	
	id tmp495 = @"Nima";
	
	//changing iItem_ControlCall29 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall290 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall290 addObject:tmp495];
	
	//initializing iItem_ControlCall29 control
	iItem* iItem_ControlCall29 = [[iItem alloc]initialize:arguments_iItem_ControlCall290];
	//push iItem_ControlCall29 to stack to add innert controls
	[containerStack push:iItem_ControlCall29];
	
	//pop iItem_ControlCall29
	[containerStack pop];
	[iItem_ControlCall29 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall29];
	
	//pop iSection_ControlCall27
	[containerStack pop];
	[iSection_ControlCall27 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall27];
	
	id tmp500 = @"Second Section";
	
	//changing iSection_ControlCall30 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall300 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall300 addObject:tmp500];
	
	//initializing iSection_ControlCall30 control
	iSection* iSection_ControlCall30 = [[iSection alloc]initialize:arguments_iSection_ControlCall300];
	//push iSection_ControlCall30 to stack to add innert controls
	[containerStack push:iSection_ControlCall30];
	
	id tmp497 = @"Zef";
	
	//changing iItem_ControlCall31 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall310 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall310 addObject:tmp497];
	
	//initializing iItem_ControlCall31 control
	iItem* iItem_ControlCall31 = [[iItem alloc]initialize:arguments_iItem_ControlCall310];
	//push iItem_ControlCall31 to stack to add innert controls
	[containerStack push:iItem_ControlCall31];
	
	//pop iItem_ControlCall31
	[containerStack pop];
	[iItem_ControlCall31 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall31];
	
	id tmp498 = @"Eelco";
	
	//changing iItem_ControlCall32 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall320 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall320 addObject:tmp498];
	
	//initializing iItem_ControlCall32 control
	iItem* iItem_ControlCall32 = [[iItem alloc]initialize:arguments_iItem_ControlCall320];
	//push iItem_ControlCall32 to stack to add innert controls
	[containerStack push:iItem_ControlCall32];
	
	//pop iItem_ControlCall32
	[containerStack pop];
	[iItem_ControlCall32 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall32];
	
	id tmp499 = @"Danny";
	
	//changing iItem_ControlCall33 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall330 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall330 addObject:tmp499];
	
	//initializing iItem_ControlCall33 control
	iItem* iItem_ControlCall33 = [[iItem alloc]initialize:arguments_iItem_ControlCall330];
	//push iItem_ControlCall33 to stack to add innert controls
	[containerStack push:iItem_ControlCall33];
	
	//pop iItem_ControlCall33
	[containerStack pop];
	[iItem_ControlCall33 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall33];
	
	//pop iSection_ControlCall30
	[containerStack pop];
	[iSection_ControlCall30 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall30];
	
	//pop iTable_ControlCall26
	[containerStack pop];
	[iTable_ControlCall26 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall26];
	
	//pop screen
	[containerStack pop];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration 
{
	
}
@end

#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "iWidget.h"
#import "iView.h"
#import "root.h"
#import "iButton.h"

@interface nextScreen : iView <iWidget>{
}
@end
@implementation nextScreen

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	[super initialize:arguments];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	
	id tmp501 = @"I am placed in the next screen";
	id tmp502 = [[NullObject alloc]init];
	
	//changing iButton_ControlCall34 arguments to an array
	
	NSMutableArray* arguments_iButton_ControlCall340 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_ControlCall340 addObject:tmp501];
	[arguments_iButton_ControlCall340 addObject:tmp502];
	
	//initializing iButton_ControlCall34 control
	iButton* iButton_ControlCall34 = [[iButton alloc]initialize:arguments_iButton_ControlCall340];
	//push iButton_ControlCall34 to stack to add innert controls
	[containerStack push:iButton_ControlCall34];
	
	//pop iButton_ControlCall34
	[containerStack pop];
	[iButton_ControlCall34 finilize];
	[[containerStack top] addBodyControl:iButton_ControlCall34];
	
	//pop screen
	[containerStack pop];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration 
{
	
}
@end

