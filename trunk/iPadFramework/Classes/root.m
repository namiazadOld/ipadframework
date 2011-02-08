

#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "iWidget.h"
#import "iView.h"
#import "root.h"
#import "iTable.h"
#import "iSection.h"
#import "iItem.h"
#import "Utilities.h"




#import "iHeader.h"
#import "iRightButton.h"

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
	
	id tmp134 = @"MyHeader";
	
	//changing iHeader_ControlCall70 arguments to an array
	
	NSMutableArray* arguments_iHeader_ControlCall700 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_ControlCall700 addObject:tmp134];
	
	//initializing iHeader_ControlCall70 control
	iHeader* iHeader_ControlCall70 = [[iHeader alloc]initialize:arguments_iHeader_ControlCall700];
	//push iHeader_ControlCall70 to stack to add innert controls
	[containerStack push:iHeader_ControlCall70];
	
	SEL tmp133 = @selector(Callback4:);
	id  tmp132 = @"Next Screen";
	
	//changing iRightButton_ControlCall71 arguments to an array
	
	NSMutableArray* arguments_iRightButton_ControlCall710 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_ControlCall710 addObject:tmp132];
	[arguments_iRightButton_ControlCall710 addObject:tmp133];
	
	//initializing iRightButton_ControlCall71 control
	iRightButton* iRightButton_ControlCall71 = [[iRightButton alloc]initialize:arguments_iRightButton_ControlCall710];
	//push iRightButton_ControlCall71 to stack to add innert controls
	[containerStack push:iRightButton_ControlCall71];
	
	//pop iRightButton_ControlCall71
	[containerStack pop];
	[iRightButton_ControlCall71 finilize];
	[[containerStack top] addBodyControl:iRightButton_ControlCall71];
	
	//pop iHeader_ControlCall70
	[containerStack pop];
	[iHeader_ControlCall70 finilize];
	[[containerStack top] addBodyControl:iHeader_ControlCall70];
	
	
	//changing iTable_ControlCall72 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall720 = [[NSMutableArray alloc] init];
	
	
	//initializing iTable_ControlCall72 control
	iTable* iTable_ControlCall72 = [[iTable alloc]initialize:arguments_iTable_ControlCall720];
	//push iTable_ControlCall72 to stack to add innert controls
	[containerStack push:iTable_ControlCall72];
	
	id tmp137 = @"First Section";
	
	//changing iSection_ControlCall73 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall730 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall730 addObject:tmp137];
	
	//initializing iSection_ControlCall73 control
	iSection* iSection_ControlCall73 = [[iSection alloc]initialize:arguments_iSection_ControlCall730];
	//push iSection_ControlCall73 to stack to add innert controls
	[containerStack push:iSection_ControlCall73];
	
	id tmp135 = @"Nami";
	
	//changing iItem_ControlCall74 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall740 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall740 addObject:tmp135];
	
	//initializing iItem_ControlCall74 control
	iItem* iItem_ControlCall74 = [[iItem alloc]initialize:arguments_iItem_ControlCall740];
	//push iItem_ControlCall74 to stack to add innert controls
	[containerStack push:iItem_ControlCall74];
	
	//pop iItem_ControlCall74
	[containerStack pop];
	[iItem_ControlCall74 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall74];
	
	id tmp136 = @"Nima";
	
	//changing iItem_ControlCall75 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall750 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall750 addObject:tmp136];
	
	//initializing iItem_ControlCall75 control
	iItem* iItem_ControlCall75 = [[iItem alloc]initialize:arguments_iItem_ControlCall750];
	//push iItem_ControlCall75 to stack to add innert controls
	[containerStack push:iItem_ControlCall75];
	
	//pop iItem_ControlCall75
	[containerStack pop];
	[iItem_ControlCall75 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall75];
	
	//pop iSection_ControlCall73
	[containerStack pop];
	[iSection_ControlCall73 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall73];
	
	id tmp141 = @"Second Section";
	
	//changing iSection_ControlCall76 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall760 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall760 addObject:tmp141];
	
	//initializing iSection_ControlCall76 control
	iSection* iSection_ControlCall76 = [[iSection alloc]initialize:arguments_iSection_ControlCall760];
	//push iSection_ControlCall76 to stack to add innert controls
	[containerStack push:iSection_ControlCall76];
	
	id tmp138 = @"Zef";
	
	//changing iItem_ControlCall77 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall770 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall770 addObject:tmp138];
	
	//initializing iItem_ControlCall77 control
	iItem* iItem_ControlCall77 = [[iItem alloc]initialize:arguments_iItem_ControlCall770];
	//push iItem_ControlCall77 to stack to add innert controls
	[containerStack push:iItem_ControlCall77];
	
	//pop iItem_ControlCall77
	[containerStack pop];
	[iItem_ControlCall77 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall77];
	
	id tmp139 = @"Eelco";
	
	//changing iItem_ControlCall78 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall780 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall780 addObject:tmp139];
	
	//initializing iItem_ControlCall78 control
	iItem* iItem_ControlCall78 = [[iItem alloc]initialize:arguments_iItem_ControlCall780];
	//push iItem_ControlCall78 to stack to add innert controls
	[containerStack push:iItem_ControlCall78];
	
	//pop iItem_ControlCall78
	[containerStack pop];
	[iItem_ControlCall78 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall78];
	
	id tmp140 = @"Danny";
	
	//changing iItem_ControlCall79 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall790 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall790 addObject:tmp140];
	
	//initializing iItem_ControlCall79 control
	iItem* iItem_ControlCall79 = [[iItem alloc]initialize:arguments_iItem_ControlCall790];
	//push iItem_ControlCall79 to stack to add innert controls
	[containerStack push:iItem_ControlCall79];
	
	//pop iItem_ControlCall79
	[containerStack pop];
	[iItem_ControlCall79 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall79];
	
	//pop iSection_ControlCall76
	[containerStack pop];
	[iSection_ControlCall76 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall76];
	
	//pop iTable_ControlCall72
	[containerStack pop];
	[iTable_ControlCall72 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall72];
	
	//pop screen
	[containerStack pop];
}


-(void)Callback4:(id)sender{
	//CALL SCREEN;
	[Utilities ShowError:self title:@"Hello" content:@"Method"];
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
#import "iTable.h"
#import "iItem.h"



@interface nextScreen : iView <iWidget>{
}
@end
@implementation nextScreen

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	[super initialize:arguments];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	
	
	//changing iTable_ControlCall80 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall800 = [[NSMutableArray alloc] init];
	
	
	//initializing iTable_ControlCall80 control
	iTable* iTable_ControlCall80 = [[iTable alloc]initialize:arguments_iTable_ControlCall800];
	//push iTable_ControlCall80 to stack to add innert controls
	[containerStack push:iTable_ControlCall80];
	
	id tmp142 = @"Netherlands";
	
	//changing iItem_ControlCall81 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall810 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall810 addObject:tmp142];
	
	//initializing iItem_ControlCall81 control
	iItem* iItem_ControlCall81 = [[iItem alloc]initialize:arguments_iItem_ControlCall810];
	//push iItem_ControlCall81 to stack to add innert controls
	[containerStack push:iItem_ControlCall81];
	
	//pop iItem_ControlCall81
	[containerStack pop];
	[iItem_ControlCall81 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall81];
	
	id tmp143 = @"France";
	
	//changing iItem_ControlCall82 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall820 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall820 addObject:tmp143];
	
	//initializing iItem_ControlCall82 control
	iItem* iItem_ControlCall82 = [[iItem alloc]initialize:arguments_iItem_ControlCall820];
	//push iItem_ControlCall82 to stack to add innert controls
	[containerStack push:iItem_ControlCall82];
	
	//pop iItem_ControlCall82
	[containerStack pop];
	[iItem_ControlCall82 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall82];
	
	id tmp144 = @"Italy";
	
	//changing iItem_ControlCall83 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall830 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall830 addObject:tmp144];
	
	//initializing iItem_ControlCall83 control
	iItem* iItem_ControlCall83 = [[iItem alloc]initialize:arguments_iItem_ControlCall830];
	//push iItem_ControlCall83 to stack to add innert controls
	[containerStack push:iItem_ControlCall83];
	
	//pop iItem_ControlCall83
	[containerStack pop];
	[iItem_ControlCall83 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall83];
	
	//pop iTable_ControlCall80
	[containerStack pop];
	[iTable_ControlCall80 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall80];
	
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

