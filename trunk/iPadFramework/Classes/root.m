

@class thirdScreen;
@class nextScreen;
@class root;

#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iView.h"
#import "root.h"
#import "iTable.h"
#import "iSection.h"
#import "iItem.h"





#import "iTextField.h"

#import "iButton.h"
#import "iHeader.h"
#import "iLeftButton.h"
#import "iRightButton.h"

@implementation root
@synthesize window;

id tmp238;

id title;
id tmp235;

id tmp237;
id tmp236;

id tmp240;
id tmp239;

id myText;



id tmp243;

id tmp241;

id tmp242;

id tmp247;

id tmp244;

id tmp245;

id tmp246;

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	[super initialize:arguments];
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	
	tmp238 = [[BindableObject alloc] initWithValue:@"MyHeader"];
	
	//changing iHeader_ControlCall99 arguments to an array
	
	NSMutableArray* arguments_iHeader_ControlCall990 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_ControlCall990 addObject:tmp238];
	
	//initializing [varName] control
	iHeader* iHeader_ControlCall99 = [[iHeader alloc] initialize:arguments_iHeader_ControlCall990];
	//push iHeader_ControlCall99 to stack to add innert controls
	[containerStack push:iHeader_ControlCall99];
	
	title = [[BindableObject alloc] initWithValue:@"Next Screen"];
	tmp235 = [[NSSelector alloc] initWithSelector:@selector(Callback16:) target:self];
	
	//changing iRightButton_ControlCall100 arguments to an array
	
	NSMutableArray* arguments_iRightButton_ControlCall1000 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_ControlCall1000 addObject:title];
	[arguments_iRightButton_ControlCall1000 addObject:tmp235];
	
	//initializing [varName] control
	iRightButton* iRightButton_ControlCall100 = [[iRightButton alloc] initialize:arguments_iRightButton_ControlCall1000];
	//push iRightButton_ControlCall100 to stack to add innert controls
	[containerStack push:iRightButton_ControlCall100];
	
	//pop iRightButton_ControlCall100
	[containerStack pop];
	[iRightButton_ControlCall100 finilize];
	[[containerStack top] addBodyControl:iRightButton_ControlCall100];
	
	tmp237 = [[NSSelector alloc] initWithSelector:@selector(Callback17:) target:self];
	tmp236 = [[BindableObject alloc] initWithValue:@"Third Screen"];
	
	//changing iLeftButton_ControlCall101 arguments to an array
	
	NSMutableArray* arguments_iLeftButton_ControlCall1010 = [[NSMutableArray alloc] init];
	
	[arguments_iLeftButton_ControlCall1010 addObject:tmp236];
	[arguments_iLeftButton_ControlCall1010 addObject:tmp237];
	
	//initializing [varName] control
	iLeftButton* iLeftButton_ControlCall101 = [[iLeftButton alloc] initialize:arguments_iLeftButton_ControlCall1010];
	//push iLeftButton_ControlCall101 to stack to add innert controls
	[containerStack push:iLeftButton_ControlCall101];
	
	//pop iLeftButton_ControlCall101
	[containerStack pop];
	[iLeftButton_ControlCall101 finilize];
	[[containerStack top] addBodyControl:iLeftButton_ControlCall101];
	
	//pop iHeader_ControlCall99
	[containerStack pop];
	[iHeader_ControlCall99 finilize];
	[[containerStack top] addBodyControl:iHeader_ControlCall99];
	
	tmp240 = [[NSSelector alloc] initWithSelector:@selector(Callback18:) target:self];
	tmp239 = [[BindableObject alloc] initWithValue:@"Go"];
	
	//changing iButton_ControlCall102 arguments to an array
	
	NSMutableArray* arguments_iButton_ControlCall1020 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_ControlCall1020 addObject:tmp239];
	[arguments_iButton_ControlCall1020 addObject:tmp240];
	
	//initializing [varName] control
	iButton* iButton_ControlCall102 = [[iButton alloc] initialize:arguments_iButton_ControlCall1020];
	//push iButton_ControlCall102 to stack to add innert controls
	[containerStack push:iButton_ControlCall102];
	
	//pop iButton_ControlCall102
	[containerStack pop];
	[iButton_ControlCall102 finilize];
	[[containerStack top] addBodyControl:iButton_ControlCall102];
	
	myText = [[BindableObject alloc] initWithValue:@"Hello World"];
	
	//changing iTextField_ControlCall103 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall1030 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall1030 addObject:myText];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall103 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall1030];
	//push iTextField_ControlCall103 to stack to add innert controls
	[containerStack push:iTextField_ControlCall103];
	
	//pop iTextField_ControlCall103
	[containerStack pop];
	[iTextField_ControlCall103 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall103];
	
	
	//changing iTextField_ControlCall104 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall1040 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall1040 addObject:myText];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall104 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall1040];
	//push iTextField_ControlCall104 to stack to add innert controls
	[containerStack push:iTextField_ControlCall104];
	
	//pop iTextField_ControlCall104
	[containerStack pop];
	[iTextField_ControlCall104 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall104];
	
	
	//changing iTable_ControlCall105 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall1050 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	iTable* iTable_ControlCall105 = [[iTable alloc] initialize:arguments_iTable_ControlCall1050];
	//push iTable_ControlCall105 to stack to add innert controls
	[containerStack push:iTable_ControlCall105];
	
	tmp243 = [[BindableObject alloc] initWithValue:@"First Section"];
	
	//changing iSection_ControlCall106 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall1060 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall1060 addObject:tmp243];
	
	//initializing [varName] control
	iSection* iSection_ControlCall106 = [[iSection alloc] initialize:arguments_iSection_ControlCall1060];
	//push iSection_ControlCall106 to stack to add innert controls
	[containerStack push:iSection_ControlCall106];
	
	tmp241 = [[BindableObject alloc] initWithValue:@"Nami"];
	
	//changing iItem_ControlCall107 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1070 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1070 addObject:tmp241];
	
	//initializing [varName] control
	iItem* iItem_ControlCall107 = [[iItem alloc] initialize:arguments_iItem_ControlCall1070];
	//push iItem_ControlCall107 to stack to add innert controls
	[containerStack push:iItem_ControlCall107];
	
	//pop iItem_ControlCall107
	[containerStack pop];
	[iItem_ControlCall107 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall107];
	
	tmp242 = [[BindableObject alloc] initWithValue:@"Nima"];
	
	//changing iItem_ControlCall108 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1080 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1080 addObject:tmp242];
	
	//initializing [varName] control
	iItem* iItem_ControlCall108 = [[iItem alloc] initialize:arguments_iItem_ControlCall1080];
	//push iItem_ControlCall108 to stack to add innert controls
	[containerStack push:iItem_ControlCall108];
	
	//pop iItem_ControlCall108
	[containerStack pop];
	[iItem_ControlCall108 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall108];
	
	//pop iSection_ControlCall106
	[containerStack pop];
	[iSection_ControlCall106 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall106];
	
	tmp247 = [[BindableObject alloc] initWithValue:@"Second Section"];
	
	//changing iSection_ControlCall109 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall1090 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall1090 addObject:tmp247];
	
	//initializing [varName] control
	iSection* iSection_ControlCall109 = [[iSection alloc] initialize:arguments_iSection_ControlCall1090];
	//push iSection_ControlCall109 to stack to add innert controls
	[containerStack push:iSection_ControlCall109];
	
	tmp244 = [[BindableObject alloc] initWithValue:@"Zef"];
	
	//changing iItem_ControlCall110 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1100 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1100 addObject:tmp244];
	
	//initializing [varName] control
	iItem* iItem_ControlCall110 = [[iItem alloc] initialize:arguments_iItem_ControlCall1100];
	//push iItem_ControlCall110 to stack to add innert controls
	[containerStack push:iItem_ControlCall110];
	
	//pop iItem_ControlCall110
	[containerStack pop];
	[iItem_ControlCall110 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall110];
	
	tmp245 = [[BindableObject alloc] initWithValue:@"Eelco"];
	
	//changing iItem_ControlCall111 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1110 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1110 addObject:tmp245];
	
	//initializing [varName] control
	iItem* iItem_ControlCall111 = [[iItem alloc] initialize:arguments_iItem_ControlCall1110];
	//push iItem_ControlCall111 to stack to add innert controls
	[containerStack push:iItem_ControlCall111];
	
	//pop iItem_ControlCall111
	[containerStack pop];
	[iItem_ControlCall111 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall111];
	
	tmp246 = [[BindableObject alloc] initWithValue:@"Danny"];
	
	//changing iItem_ControlCall112 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1120 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1120 addObject:tmp246];
	
	//initializing [varName] control
	iItem* iItem_ControlCall112 = [[iItem alloc] initialize:arguments_iItem_ControlCall1120];
	//push iItem_ControlCall112 to stack to add innert controls
	[containerStack push:iItem_ControlCall112];
	
	//pop iItem_ControlCall112
	[containerStack pop];
	[iItem_ControlCall112 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall112];
	
	//pop iSection_ControlCall109
	[containerStack pop];
	[iSection_ControlCall109 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall109];
	
	//pop iTable_ControlCall105
	[containerStack pop];
	[iTable_ControlCall105 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall105];
	
	//pop screen
	[containerStack pop];
	return self;
}


-(void)Callback18:(id)sender{
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call16 = [[NSMutableArray alloc] init];
	
	
	nextScreen *screen_arguments_Call160 = [[nextScreen alloc]init];
	[screen_arguments_Call160 initialize:arguments_Call16];
	[self.viewController.navigationController pushViewController:[screen_arguments_Call160 viewController] animated:YES];
	[screen_arguments_Call160 release];
}

-(void)Callback17:(id)sender{
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call17 = [[NSMutableArray alloc] init];
	
	
	thirdScreen *screen_arguments_Call170 = [[thirdScreen alloc]init];
	[screen_arguments_Call170 initialize:arguments_Call17];
	[self.viewController.navigationController pushViewController:[screen_arguments_Call170 viewController] animated:YES];
	[screen_arguments_Call170 release];
}

-(void)Callback16:(id)sender{
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call18 = [[NSMutableArray alloc] init];
	
	
	nextScreen *screen_arguments_Call180 = [[nextScreen alloc]init];
	[screen_arguments_Call180 initialize:arguments_Call18];
	[self.viewController.navigationController pushViewController:[screen_arguments_Call180 viewController] animated:YES];
	[screen_arguments_Call180 release];
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
#import "NSSelector.h"
#import "iWidget.h"
#import "iView.h"
#import "root.h"
#import "iTable.h"
#import "iItem.h"


#import "iHeader.h"
#import "iRightButton.h"

@interface nextScreen : iView <iWidget>{
}
@end
@implementation nextScreen


id tmp250;

id tmp249;
id tmp248;


id tmp251;

id tmp252;

id tmp253;

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	[super initialize:arguments];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	
	tmp250 = [[BindableObject alloc] initWithValue:@"My Second Header"];
	
	//changing iHeader_ControlCall113 arguments to an array
	
	NSMutableArray* arguments_iHeader_ControlCall1130 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_ControlCall1130 addObject:tmp250];
	
	//initializing [varName] control
	iHeader* iHeader_ControlCall113 = [[iHeader alloc] initialize:arguments_iHeader_ControlCall1130];
	//push iHeader_ControlCall113 to stack to add innert controls
	[containerStack push:iHeader_ControlCall113];
	
	tmp249 = [[NSSelector alloc] initWithSelector:@selector(Callback19:) target:self];
	tmp248 = [[BindableObject alloc] initWithValue:@"Third Screen"];
	
	//changing iRightButton_ControlCall114 arguments to an array
	
	NSMutableArray* arguments_iRightButton_ControlCall1140 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_ControlCall1140 addObject:tmp248];
	[arguments_iRightButton_ControlCall1140 addObject:tmp249];
	
	//initializing [varName] control
	iRightButton* iRightButton_ControlCall114 = [[iRightButton alloc] initialize:arguments_iRightButton_ControlCall1140];
	//push iRightButton_ControlCall114 to stack to add innert controls
	[containerStack push:iRightButton_ControlCall114];
	
	//pop iRightButton_ControlCall114
	[containerStack pop];
	[iRightButton_ControlCall114 finilize];
	[[containerStack top] addBodyControl:iRightButton_ControlCall114];
	
	//pop iHeader_ControlCall113
	[containerStack pop];
	[iHeader_ControlCall113 finilize];
	[[containerStack top] addBodyControl:iHeader_ControlCall113];
	
	
	//changing iTable_ControlCall115 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall1150 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	iTable* iTable_ControlCall115 = [[iTable alloc] initialize:arguments_iTable_ControlCall1150];
	//push iTable_ControlCall115 to stack to add innert controls
	[containerStack push:iTable_ControlCall115];
	
	tmp251 = [[BindableObject alloc] initWithValue:@"Netherlands"];
	
	//changing iItem_ControlCall116 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1160 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1160 addObject:tmp251];
	
	//initializing [varName] control
	iItem* iItem_ControlCall116 = [[iItem alloc] initialize:arguments_iItem_ControlCall1160];
	//push iItem_ControlCall116 to stack to add innert controls
	[containerStack push:iItem_ControlCall116];
	
	//pop iItem_ControlCall116
	[containerStack pop];
	[iItem_ControlCall116 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall116];
	
	tmp252 = [[BindableObject alloc] initWithValue:@"France"];
	
	//changing iItem_ControlCall117 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1170 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1170 addObject:tmp252];
	
	//initializing [varName] control
	iItem* iItem_ControlCall117 = [[iItem alloc] initialize:arguments_iItem_ControlCall1170];
	//push iItem_ControlCall117 to stack to add innert controls
	[containerStack push:iItem_ControlCall117];
	
	//pop iItem_ControlCall117
	[containerStack pop];
	[iItem_ControlCall117 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall117];
	
	tmp253 = [[BindableObject alloc] initWithValue:@"Italy"];
	
	//changing iItem_ControlCall118 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1180 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1180 addObject:tmp253];
	
	//initializing [varName] control
	iItem* iItem_ControlCall118 = [[iItem alloc] initialize:arguments_iItem_ControlCall1180];
	//push iItem_ControlCall118 to stack to add innert controls
	[containerStack push:iItem_ControlCall118];
	
	//pop iItem_ControlCall118
	[containerStack pop];
	[iItem_ControlCall118 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall118];
	
	//pop iTable_ControlCall115
	[containerStack pop];
	[iTable_ControlCall115 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall115];
	
	//pop screen
	[containerStack pop];
	return self;
}


-(void)Callback19:(id)sender{
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call19 = [[NSMutableArray alloc] init];
	
	
	thirdScreen *screen_arguments_Call190 = [[thirdScreen alloc]init];
	[screen_arguments_Call190 initialize:arguments_Call19];
	[self.viewController.navigationController pushViewController:[screen_arguments_Call190 viewController] animated:YES];
	[screen_arguments_Call190 release];
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
#import "NSSelector.h"
#import "iWidget.h"
#import "iView.h"
#import "root.h"
#import "iTable.h"
#import "iItem.h"



@interface thirdScreen : iView <iWidget>{
}
@end
@implementation thirdScreen



id tmp254;

id tmp255;

id tmp256;

-(id <iWidget>) initialize: (NSMutableArray*)arguments
{
	[super initialize:arguments];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	
	
	//changing iTable_ControlCall119 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall1190 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	iTable* iTable_ControlCall119 = [[iTable alloc] initialize:arguments_iTable_ControlCall1190];
	//push iTable_ControlCall119 to stack to add innert controls
	[containerStack push:iTable_ControlCall119];
	
	tmp254 = [[BindableObject alloc] initWithValue:@"Iran"];
	
	//changing iItem_ControlCall120 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1200 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1200 addObject:tmp254];
	
	//initializing [varName] control
	iItem* iItem_ControlCall120 = [[iItem alloc] initialize:arguments_iItem_ControlCall1200];
	//push iItem_ControlCall120 to stack to add innert controls
	[containerStack push:iItem_ControlCall120];
	
	//pop iItem_ControlCall120
	[containerStack pop];
	[iItem_ControlCall120 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall120];
	
	tmp255 = [[BindableObject alloc] initWithValue:@"Iraq"];
	
	//changing iItem_ControlCall121 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1210 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1210 addObject:tmp255];
	
	//initializing [varName] control
	iItem* iItem_ControlCall121 = [[iItem alloc] initialize:arguments_iItem_ControlCall1210];
	//push iItem_ControlCall121 to stack to add innert controls
	[containerStack push:iItem_ControlCall121];
	
	//pop iItem_ControlCall121
	[containerStack pop];
	[iItem_ControlCall121 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall121];
	
	tmp256 = [[BindableObject alloc] initWithValue:@"Turkey"];
	
	//changing iItem_ControlCall122 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1220 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1220 addObject:tmp256];
	
	//initializing [varName] control
	iItem* iItem_ControlCall122 = [[iItem alloc] initialize:arguments_iItem_ControlCall1220];
	//push iItem_ControlCall122 to stack to add innert controls
	[containerStack push:iItem_ControlCall122];
	
	//pop iItem_ControlCall122
	[containerStack pop];
	[iItem_ControlCall122 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall122];
	
	//pop iTable_ControlCall119
	[containerStack pop];
	[iTable_ControlCall119 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall119];
	
	//pop screen
	[containerStack pop];
	return self;
}



-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration 
{
	
}
@end

