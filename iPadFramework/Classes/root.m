

@class thirdScreen;
@class nextScreen;
@class Callbacktmp272;
@class Callbacktmp269;
@class root;
@class Callbacktmp254;
@class Callbacktmp251;
@class Callbacktmp249;
@class myCustomControl;
@class Callbacktmp248;
@class mySecondCustomControl;  


#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "iTable.h"
#import "iSection.h"
#import "iItem.h"
#import "iTextField.h"
#import "iButton.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iLeftButton.h"


@interface mySecondCustomControl : iCustomControl <iWidget>{
}
@end
@implementation mySecondCustomControl
-(id <iWidget>) initialize: (NSMutableArray*)arguments container: (id<iWidget>)parent
{
	[super initialize:arguments container:parent];
	[[Scope instance] createInnerScope];
	int l_339 = -1;
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred61 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:YES]];
	[[Scope instance] set:@"tmp240" variable:VarDeclInferred61];
	
	BindableObject* VarDeclInferred62 = [[BindableObject alloc] initWithValue: @"Editable"];
	[[Scope instance] set:@"tmp239" variable:VarDeclInferred62];
	
	BindableObject* VarDeclInferred63 = [[BindableObject alloc] initWithValue: @"Edit"];
	[[Scope instance] set:@"tmp238" variable:VarDeclInferred63];
	
	BindableObject* VarDeclInferred64 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp242" variable:VarDeclInferred64];
	
	BindableObject* VarDeclInferred65 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp241" variable:VarDeclInferred65];
	
	
	[[Scope instance] createInnerScope];
	//changing iTextField_ControlCall35 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall350 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall350 addObject:[[Scope instance] get: @"tmp241"]];
	[arguments_iTextField_ControlCall350 addObject:[[Scope instance] get: @"tmp239"]];
	[arguments_iTextField_ControlCall350 addObject:[[Scope instance] get: @"tmp238"]];
	[arguments_iTextField_ControlCall350 addObject:[[Scope instance] get: @"tmp242"]];
	[arguments_iTextField_ControlCall350 addObject:[[Scope instance] get: @"tmp240"]];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall35 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall350 container: [containerStack top]];
	//push iTextField_ControlCall35 to stack to add innert controls
	[containerStack push:iTextField_ControlCall35];
	
	//pop iTextField_ControlCall35
	[containerStack pop];
	[iTextField_ControlCall35 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall35];
	[[Scope instance] exitScope];
	
	//pop screen
	[containerStack pop]; 
	[[Scope instance] exitScope];
	return self;
}
-(void) viewDidLoad
{
	[Utilities setCurrentView:[self viewController]];
}
@end



#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "iTable.h"
#import "iSection.h"
#import "iItem.h"
#import "iTextField.h"
#import "iButton.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iLeftButton.h"


@interface myCustomControl : iCustomControl <iWidget>{
}
@end
@implementation myCustomControl
-(id <iWidget>) initialize: (NSMutableArray*)arguments container: (id<iWidget>)parent
{
	[super initialize:arguments container:parent];
	[[Scope instance] createInnerScope];
	int m_339 = -1;
	
	[[Scope instance]  set:@"s" variable:[arguments objectAtIndex:++m_339]];
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred66 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:YES]];
	[[Scope instance] set:@"tmp245" variable:VarDeclInferred66];
	
	BindableObject* VarDeclInferred67 = [[BindableObject alloc] initWithValue: @"TamTam"];
	[[Scope instance] set:@"tmp244" variable:VarDeclInferred67];
	
	BindableObject* VarDeclInferred68 = [[BindableObject alloc] initWithValue: @"Organization"];
	[[Scope instance] set:@"tmp243" variable:VarDeclInferred68];
	
	BindableObject* VarDeclInferred69 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp247" variable:VarDeclInferred69];
	
	BindableObject* VarDeclInferred70 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp246" variable:VarDeclInferred70];
	
	
	[[Scope instance] createInnerScope];
	//changing iTextField_ControlCall36 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall360 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall360 addObject:[[Scope instance] get: @"tmp246"]];
	[arguments_iTextField_ControlCall360 addObject:[[Scope instance] get: @"tmp244"]];
	[arguments_iTextField_ControlCall360 addObject:[[Scope instance] get: @"tmp243"]];
	[arguments_iTextField_ControlCall360 addObject:[[Scope instance] get: @"tmp247"]];
	[arguments_iTextField_ControlCall360 addObject:[[Scope instance] get: @"tmp245"]];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall36 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall360 container: [containerStack top]];
	//push iTextField_ControlCall36 to stack to add innert controls
	[containerStack push:iTextField_ControlCall36];
	
	//pop iTextField_ControlCall36
	[containerStack pop];
	[iTextField_ControlCall36 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall36];
	[[Scope instance] exitScope];
	
	[[Scope instance] createInnerScope];
	//changing mySecondCustomControl_ControlCall37 arguments to an array
	
	NSMutableArray* arguments_mySecondCustomControl_ControlCall370 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	mySecondCustomControl* mySecondCustomControl_ControlCall37 = [[mySecondCustomControl alloc] initialize:arguments_mySecondCustomControl_ControlCall370 container: [containerStack top]];
	//push mySecondCustomControl_ControlCall37 to stack to add innert controls
	[containerStack push:mySecondCustomControl_ControlCall37];
	
	//pop mySecondCustomControl_ControlCall37
	[containerStack pop];
	[mySecondCustomControl_ControlCall37 finilize];
	[[containerStack top] addBodyControl:mySecondCustomControl_ControlCall37];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred71 = [[BindableObject alloc] initWithValue: 
										 [[NSSelector alloc] initWithSelector:@selector(action:) target:[[Callbacktmp248 alloc] initWithScope:[Scope instance]]]
										 ];
	[[Scope instance] set:@"tmp248" variable:VarDeclInferred71];
	
	
	[[Scope instance] createInnerScope];
	//changing iButton_ControlCall38 arguments to an array
	
	NSMutableArray* arguments_iButton_ControlCall380 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_ControlCall380 addObject:[[Scope instance] get: @"s"]];
	[arguments_iButton_ControlCall380 addObject:[[Scope instance] get: @"tmp248"]];
	
	//initializing [varName] control
	iButton* iButton_ControlCall38 = [[iButton alloc] initialize:arguments_iButton_ControlCall380 container: [containerStack top]];
	//push iButton_ControlCall38 to stack to add innert controls
	[containerStack push:iButton_ControlCall38];
	
	//pop iButton_ControlCall38
	[containerStack pop];
	[iButton_ControlCall38 finilize];
	[[containerStack top] addBodyControl:iButton_ControlCall38];
	[[Scope instance] exitScope];
	
	//pop screen
	[containerStack pop]; 
	[[Scope instance] exitScope];
	return self;
}
-(void) viewDidLoad
{
	[Utilities setCurrentView:[self viewController]];
}
@end


#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
@interface Callbacktmp248 : Callback {
}
@end

@implementation Callbacktmp248

-(void) action: (id)sender
{
	[[Scope instance] createInnerScope];
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call7 = [[NSMutableArray alloc] init];
	
	
	nextScreen *screen_arguments_Call70 = [[nextScreen alloc]init];
	[screen_arguments_Call70 initialize:arguments_Call7 container: NULL];
	[[[Utilities CurrentView] navigationController] pushViewController:[screen_arguments_Call70 viewController] animated:YES];
	[screen_arguments_Call70 release];
	[[Scope instance] exitScope];
}
@end



#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "root.h"
#import "iTable.h"
#import "iSection.h"
#import "iItem.h"
#import "iTextField.h"
#import "iButton.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iLeftButton.h"


@implementation root
@synthesize window;
-(id <iWidget>) initialize: (NSMutableArray*)arguments container: (id<iWidget>)parent
{
	[super initialize:arguments container:parent];
	[[Scope instance] createInnerScope];
	int n_339 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred72 = [[BindableObject alloc] initWithValue: @"Go"];
	[[Scope instance] set:@"myText" variable:VarDeclInferred72];
	
	BindableObject* VarDeclInferred73 = [[BindableObject alloc] initWithValue: @"MyHeader"];
	[[Scope instance] set:@"tmp252" variable:VarDeclInferred73];
	
	
	[[Scope instance] createInnerScope];
	//changing iHeader_ControlCall39 arguments to an array
	
	NSMutableArray* arguments_iHeader_ControlCall390 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_ControlCall390 addObject:[[Scope instance] get: @"tmp252"]];
	
	//initializing [varName] control
	iHeader* iHeader_ControlCall39 = [[iHeader alloc] initialize:arguments_iHeader_ControlCall390 container: [containerStack top]];
	//push iHeader_ControlCall39 to stack to add innert controls
	[containerStack push:iHeader_ControlCall39];
	BindableObject* VarDeclInferred74 = [[BindableObject alloc] initWithValue: @"Next Screen"];
	[[Scope instance] set:@"title" variable:VarDeclInferred74];
	
	BindableObject* VarDeclInferred75 = [[BindableObject alloc] initWithValue: 
										 [[NSSelector alloc] initWithSelector:@selector(action:) target:[[Callbacktmp249 alloc] initWithScope:[Scope instance]]]
										 ];
	[[Scope instance] set:@"tmp249" variable:VarDeclInferred75];
	
	
	[[Scope instance] createInnerScope];
	//changing iRightButton_ControlCall40 arguments to an array
	
	NSMutableArray* arguments_iRightButton_ControlCall400 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_ControlCall400 addObject:[[Scope instance] get: @"title"]];
	[arguments_iRightButton_ControlCall400 addObject:[[Scope instance] get: @"tmp249"]];
	
	//initializing [varName] control
	iRightButton* iRightButton_ControlCall40 = [[iRightButton alloc] initialize:arguments_iRightButton_ControlCall400 container: [containerStack top]];
	//push iRightButton_ControlCall40 to stack to add innert controls
	[containerStack push:iRightButton_ControlCall40];
	
	//pop iRightButton_ControlCall40
	[containerStack pop];
	[iRightButton_ControlCall40 finilize];
	[[containerStack top] addBodyControl:iRightButton_ControlCall40];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred76 = [[BindableObject alloc] initWithValue: 
										 [[NSSelector alloc] initWithSelector:@selector(action:) target:[[Callbacktmp251 alloc] initWithScope:[Scope instance]]]
										 ];
	[[Scope instance] set:@"tmp251" variable:VarDeclInferred76];
	
	BindableObject* VarDeclInferred77 = [[BindableObject alloc] initWithValue: @"Third Screen"];
	[[Scope instance] set:@"tmp250" variable:VarDeclInferred77];
	
	
	[[Scope instance] createInnerScope];
	//changing iLeftButton_ControlCall41 arguments to an array
	
	NSMutableArray* arguments_iLeftButton_ControlCall410 = [[NSMutableArray alloc] init];
	
	[arguments_iLeftButton_ControlCall410 addObject:[[Scope instance] get: @"tmp250"]];
	[arguments_iLeftButton_ControlCall410 addObject:[[Scope instance] get: @"tmp251"]];
	
	//initializing [varName] control
	iLeftButton* iLeftButton_ControlCall41 = [[iLeftButton alloc] initialize:arguments_iLeftButton_ControlCall410 container: [containerStack top]];
	//push iLeftButton_ControlCall41 to stack to add innert controls
	[containerStack push:iLeftButton_ControlCall41];
	
	//pop iLeftButton_ControlCall41
	[containerStack pop];
	[iLeftButton_ControlCall41 finilize];
	[[containerStack top] addBodyControl:iLeftButton_ControlCall41];
	[[Scope instance] exitScope];
	
	//pop iHeader_ControlCall39
	[containerStack pop];
	[iHeader_ControlCall39 finilize];
	[[containerStack top] addBodyControl:iHeader_ControlCall39];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred78 = [[BindableObject alloc] initWithValue: @"Sync"];
	[[Scope instance] set:@"inputText" variable:VarDeclInferred78];
	
	
	[[Scope instance] createInnerScope];
	//changing myCustomControl_ControlCall42 arguments to an array
	
	NSMutableArray* arguments_myCustomControl_ControlCall420 = [[NSMutableArray alloc] init];
	
	[arguments_myCustomControl_ControlCall420 addObject:[[Scope instance] get: @"inputText"]];
	
	//initializing [varName] control
	myCustomControl* myCustomControl_ControlCall42 = [[myCustomControl alloc] initialize:arguments_myCustomControl_ControlCall420 container: [containerStack top]];
	//push myCustomControl_ControlCall42 to stack to add innert controls
	[containerStack push:myCustomControl_ControlCall42];
	
	//pop myCustomControl_ControlCall42
	[containerStack pop];
	[myCustomControl_ControlCall42 finilize];
	[[containerStack top] addBodyControl:myCustomControl_ControlCall42];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred79 = [[BindableObject alloc] initWithValue: 
										 [[NSSelector alloc] initWithSelector:@selector(action:) target:[[Callbacktmp254 alloc] initWithScope:[Scope instance]]]
										 ];
	[[Scope instance] set:@"tmp254" variable:VarDeclInferred79];
	
	BindableObject* VarDeclInferred80 = [[BindableObject alloc] initWithValue: @"GO"];
	[[Scope instance] set:@"tmp253" variable:VarDeclInferred80];
	
	
	[[Scope instance] createInnerScope];
	//changing iButton_ControlCall43 arguments to an array
	
	NSMutableArray* arguments_iButton_ControlCall430 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_ControlCall430 addObject:[[Scope instance] get: @"tmp253"]];
	[arguments_iButton_ControlCall430 addObject:[[Scope instance] get: @"tmp254"]];
	
	//initializing [varName] control
	iButton* iButton_ControlCall43 = [[iButton alloc] initialize:arguments_iButton_ControlCall430 container: [containerStack top]];
	//push iButton_ControlCall43 to stack to add innert controls
	[containerStack push:iButton_ControlCall43];
	
	//pop iButton_ControlCall43
	[containerStack pop];
	[iButton_ControlCall43 finilize];
	[[containerStack top] addBodyControl:iButton_ControlCall43];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred81 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:YES]];
	[[Scope instance] set:@"tmp257" variable:VarDeclInferred81];
	
	BindableObject* VarDeclInferred82 = [[BindableObject alloc] initWithValue: @"1234"];
	[[Scope instance] set:@"tmp256" variable:VarDeclInferred82];
	
	BindableObject* VarDeclInferred83 = [[BindableObject alloc] initWithValue: @"Code"];
	[[Scope instance] set:@"tmp255" variable:VarDeclInferred83];
	
	BindableObject* VarDeclInferred84 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp258" variable:VarDeclInferred84];
	
	
	[[Scope instance] createInnerScope];
	//changing iTextField_ControlCall44 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall440 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall440 addObject:[[Scope instance] get: @"inputText"]];
	[arguments_iTextField_ControlCall440 addObject:[[Scope instance] get: @"tmp256"]];
	[arguments_iTextField_ControlCall440 addObject:[[Scope instance] get: @"tmp255"]];
	[arguments_iTextField_ControlCall440 addObject:[[Scope instance] get: @"tmp258"]];
	[arguments_iTextField_ControlCall440 addObject:[[Scope instance] get: @"tmp257"]];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall44 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall440 container: [containerStack top]];
	//push iTextField_ControlCall44 to stack to add innert controls
	[containerStack push:iTextField_ControlCall44];
	
	//pop iTextField_ControlCall44
	[containerStack pop];
	[iTextField_ControlCall44 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall44];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred85 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:YES]];
	[[Scope instance] set:@"tmp262" variable:VarDeclInferred85];
	
	BindableObject* VarDeclInferred86 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:YES]];
	[[Scope instance] set:@"tmp261" variable:VarDeclInferred86];
	
	BindableObject* VarDeclInferred87 = [[BindableObject alloc] initWithValue: @"Nami"];
	[[Scope instance] set:@"tmp260" variable:VarDeclInferred87];
	
	BindableObject* VarDeclInferred88 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp259" variable:VarDeclInferred88];
	
	
	[[Scope instance] createInnerScope];
	//changing iTextField_ControlCall45 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall450 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall450 addObject:[[Scope instance] get: @"tmp259"]];
	[arguments_iTextField_ControlCall450 addObject:[[Scope instance] get: @"tmp260"]];
	[arguments_iTextField_ControlCall450 addObject:[[Scope instance] get: @"inputText"]];
	[arguments_iTextField_ControlCall450 addObject:[[Scope instance] get: @"tmp261"]];
	[arguments_iTextField_ControlCall450 addObject:[[Scope instance] get: @"tmp262"]];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall45 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall450 container: [containerStack top]];
	//push iTextField_ControlCall45 to stack to add innert controls
	[containerStack push:iTextField_ControlCall45];
	
	//pop iTextField_ControlCall45
	[containerStack pop];
	[iTextField_ControlCall45 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall45];
	[[Scope instance] exitScope];
	
	[[Scope instance] createInnerScope];
	//changing iTable_ControlCall46 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall460 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	iTable* iTable_ControlCall46 = [[iTable alloc] initialize:arguments_iTable_ControlCall460 container: [containerStack top]];
	//push iTable_ControlCall46 to stack to add innert controls
	[containerStack push:iTable_ControlCall46];
	
	[[Scope instance] createInnerScope];
	//changing iSection_ControlCall47 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall470 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall470 addObject:[[Scope instance] get: @"myText"]];
	
	//initializing [varName] control
	iSection* iSection_ControlCall47 = [[iSection alloc] initialize:arguments_iSection_ControlCall470 container: [containerStack top]];
	//push iSection_ControlCall47 to stack to add innert controls
	[containerStack push:iSection_ControlCall47];
	
	[[Scope instance] createInnerScope];
	//changing iItem_ControlCall48 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall480 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall480 addObject:[[Scope instance] get: @"inputText"]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall48 = [[iItem alloc] initialize:arguments_iItem_ControlCall480 container: [containerStack top]];
	//push iItem_ControlCall48 to stack to add innert controls
	[containerStack push:iItem_ControlCall48];
	
	//pop iItem_ControlCall48
	[containerStack pop];
	[iItem_ControlCall48 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall48];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred89 = [[BindableObject alloc] initWithValue: @"Nima"];
	[[Scope instance] set:@"tmp263" variable:VarDeclInferred89];
	
	
	[[Scope instance] createInnerScope];
	//changing iItem_ControlCall49 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall490 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall490 addObject:[[Scope instance] get: @"tmp263"]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall49 = [[iItem alloc] initialize:arguments_iItem_ControlCall490 container: [containerStack top]];
	//push iItem_ControlCall49 to stack to add innert controls
	[containerStack push:iItem_ControlCall49];
	
	//pop iItem_ControlCall49
	[containerStack pop];
	[iItem_ControlCall49 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall49];
	[[Scope instance] exitScope];
	
	//pop iSection_ControlCall47
	[containerStack pop];
	[iSection_ControlCall47 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall47];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred90 = [[BindableObject alloc] initWithValue: @"Second Section"];
	[[Scope instance] set:@"tmp267" variable:VarDeclInferred90];
	
	
	[[Scope instance] createInnerScope];
	//changing iSection_ControlCall50 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall500 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall500 addObject:[[Scope instance] get: @"tmp267"]];
	
	//initializing [varName] control
	iSection* iSection_ControlCall50 = [[iSection alloc] initialize:arguments_iSection_ControlCall500 container: [containerStack top]];
	//push iSection_ControlCall50 to stack to add innert controls
	[containerStack push:iSection_ControlCall50];
	BindableObject* VarDeclInferred91 = [[BindableObject alloc] initWithValue: @"Zef"];
	[[Scope instance] set:@"tmp264" variable:VarDeclInferred91];
	
	
	[[Scope instance] createInnerScope];
	//changing iItem_ControlCall51 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall510 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall510 addObject:[[Scope instance] get: @"tmp264"]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall51 = [[iItem alloc] initialize:arguments_iItem_ControlCall510 container: [containerStack top]];
	//push iItem_ControlCall51 to stack to add innert controls
	[containerStack push:iItem_ControlCall51];
	
	//pop iItem_ControlCall51
	[containerStack pop];
	[iItem_ControlCall51 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall51];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred92 = [[BindableObject alloc] initWithValue: @"Eelco"];
	[[Scope instance] set:@"tmp265" variable:VarDeclInferred92];
	
	
	[[Scope instance] createInnerScope];
	//changing iItem_ControlCall52 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall520 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall520 addObject:[[Scope instance] get: @"tmp265"]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall52 = [[iItem alloc] initialize:arguments_iItem_ControlCall520 container: [containerStack top]];
	//push iItem_ControlCall52 to stack to add innert controls
	[containerStack push:iItem_ControlCall52];
	
	//pop iItem_ControlCall52
	[containerStack pop];
	[iItem_ControlCall52 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall52];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred93 = [[BindableObject alloc] initWithValue: @"Danny"];
	[[Scope instance] set:@"tmp266" variable:VarDeclInferred93];
	
	
	[[Scope instance] createInnerScope];
	//changing iItem_ControlCall53 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall530 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall530 addObject:[[Scope instance] get: @"tmp266"]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall53 = [[iItem alloc] initialize:arguments_iItem_ControlCall530 container: [containerStack top]];
	//push iItem_ControlCall53 to stack to add innert controls
	[containerStack push:iItem_ControlCall53];
	
	//pop iItem_ControlCall53
	[containerStack pop];
	[iItem_ControlCall53 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall53];
	[[Scope instance] exitScope];
	
	//pop iSection_ControlCall50
	[containerStack pop];
	[iSection_ControlCall50 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall50];
	[[Scope instance] exitScope];
	
	//pop iTable_ControlCall46
	[containerStack pop];
	[iTable_ControlCall46 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall46];
	[[Scope instance] exitScope];
	
	//pop screen 
	[containerStack pop]; 
	[[Scope instance] exitScope];
	return self;
}
@end


#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
@interface Callbacktmp254 : Callback {
}
@end

@implementation Callbacktmp254

-(void) action: (id)sender
{
	[[Scope instance] createInnerScope];
	
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call8 = [[NSMutableArray alloc] init];
	
	BindableObject* s = (BindableObject*)[self.scope get:@"myText"];
	[Utilities ShowError:self title:@"" content:s.value];
	
	
	nextScreen *screen_arguments_Call80 = [[nextScreen alloc]init];
	[screen_arguments_Call80 initialize:arguments_Call8 container: NULL];
	[[[Utilities CurrentView] navigationController] pushViewController:[screen_arguments_Call80 viewController] animated:YES];
	[screen_arguments_Call80 release];
	[[Scope instance] exitScope];
}
@end


#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
@interface Callbacktmp251 : Callback {
}
@end

@implementation Callbacktmp251

-(void) action: (id)sender
{
	[[Scope instance] createInnerScope];
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call9 = [[NSMutableArray alloc] init];
	
	
	thirdScreen *screen_arguments_Call90 = [[thirdScreen alloc]init];
	[screen_arguments_Call90 initialize:arguments_Call9 container: NULL];
	[[[Utilities CurrentView] navigationController] pushViewController:[screen_arguments_Call90 viewController] animated:YES];
	[screen_arguments_Call90 release];
	[[Scope instance] exitScope];
}
@end


#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
@interface Callbacktmp249 : Callback {
}
@end

@implementation Callbacktmp249

-(void) action: (id)sender
{
	[[Scope instance] createInnerScope];
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call10 = [[NSMutableArray alloc] init];
	
	
	nextScreen *screen_arguments_Call100 = [[nextScreen alloc]init];
	[screen_arguments_Call100 initialize:arguments_Call10 container: NULL];
	[[[Utilities CurrentView] navigationController] pushViewController:[screen_arguments_Call100 viewController] animated:YES];
	[screen_arguments_Call100 release];
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call11 = [[NSMutableArray alloc] init];
	
	
	thirdScreen *screen_arguments_Call110 = [[thirdScreen alloc]init];
	[screen_arguments_Call110 initialize:arguments_Call11 container: NULL];
	[[[Utilities CurrentView] navigationController] pushViewController:[screen_arguments_Call110 viewController] animated:YES];
	[screen_arguments_Call110 release];
	[[Scope instance] exitScope];
}
@end



#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "root.h"
#import "iTable.h"
#import "iSection.h"
#import "iItem.h"
#import "iTextField.h"
#import "iButton.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iLeftButton.h"


@interface nextScreen : iView <iWidget>{
}
@end
@implementation nextScreen

-(id <iWidget>) initialize: (NSMutableArray*)arguments container: (id<iWidget>)parent
{
	[super initialize:arguments container:parent];
	[[Scope instance] createInnerScope];
	int o_339 = -1;
	
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred94 = [[BindableObject alloc] initWithValue: @"My Second Header"];
	[[Scope instance] set:@"tmp270" variable:VarDeclInferred94];
	
	
	[[Scope instance] createInnerScope];
	//changing iHeader_ControlCall54 arguments to an array
	
	NSMutableArray* arguments_iHeader_ControlCall540 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_ControlCall540 addObject:[[Scope instance] get: @"tmp270"]];
	
	//initializing [varName] control
	iHeader* iHeader_ControlCall54 = [[iHeader alloc] initialize:arguments_iHeader_ControlCall540 container: [containerStack top]];
	//push iHeader_ControlCall54 to stack to add innert controls
	[containerStack push:iHeader_ControlCall54];
	BindableObject* VarDeclInferred95 = [[BindableObject alloc] initWithValue: 
										 [[NSSelector alloc] initWithSelector:@selector(action:) target:[[Callbacktmp269 alloc] initWithScope:[Scope instance]]]
										 ];
	[[Scope instance] set:@"tmp269" variable:VarDeclInferred95];
	
	BindableObject* VarDeclInferred96 = [[BindableObject alloc] initWithValue: @"Third Screen"];
	[[Scope instance] set:@"tmp268" variable:VarDeclInferred96];
	
	
	[[Scope instance] createInnerScope];
	//changing iRightButton_ControlCall55 arguments to an array
	
	NSMutableArray* arguments_iRightButton_ControlCall550 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_ControlCall550 addObject:[[Scope instance] get: @"tmp268"]];
	[arguments_iRightButton_ControlCall550 addObject:[[Scope instance] get: @"tmp269"]];
	
	//initializing [varName] control
	iRightButton* iRightButton_ControlCall55 = [[iRightButton alloc] initialize:arguments_iRightButton_ControlCall550 container: [containerStack top]];
	//push iRightButton_ControlCall55 to stack to add innert controls
	[containerStack push:iRightButton_ControlCall55];
	
	//pop iRightButton_ControlCall55
	[containerStack pop];
	[iRightButton_ControlCall55 finilize];
	[[containerStack top] addBodyControl:iRightButton_ControlCall55];
	[[Scope instance] exitScope];
	
	//pop iHeader_ControlCall54
	[containerStack pop];
	[iHeader_ControlCall54 finilize];
	[[containerStack top] addBodyControl:iHeader_ControlCall54];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred97 = [[BindableObject alloc] initWithValue: 
										 [[NSSelector alloc] initWithSelector:@selector(action:) target:[[Callbacktmp272 alloc] initWithScope:[Scope instance]]]
										 ];
	[[Scope instance] set:@"tmp272" variable:VarDeclInferred97];
	
	BindableObject* VarDeclInferred98 = [[BindableObject alloc] initWithValue: @"Go"];
	[[Scope instance] set:@"tmp271" variable:VarDeclInferred98];
	
	
	[[Scope instance] createInnerScope];
	//changing iButton_ControlCall56 arguments to an array
	
	NSMutableArray* arguments_iButton_ControlCall560 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_ControlCall560 addObject:[[Scope instance] get: @"tmp271"]];
	[arguments_iButton_ControlCall560 addObject:[[Scope instance] get: @"tmp272"]];
	
	//initializing [varName] control
	iButton* iButton_ControlCall56 = [[iButton alloc] initialize:arguments_iButton_ControlCall560 container: [containerStack top]];
	//push iButton_ControlCall56 to stack to add innert controls
	[containerStack push:iButton_ControlCall56];
	
	//pop iButton_ControlCall56
	[containerStack pop];
	[iButton_ControlCall56 finilize];
	[[containerStack top] addBodyControl:iButton_ControlCall56];
	[[Scope instance] exitScope];
	
	[[Scope instance] createInnerScope];
	//changing iTable_ControlCall57 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall570 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	iTable* iTable_ControlCall57 = [[iTable alloc] initialize:arguments_iTable_ControlCall570 container: [containerStack top]];
	//push iTable_ControlCall57 to stack to add innert controls
	[containerStack push:iTable_ControlCall57];
	BindableObject* VarDeclInferred99 = [[BindableObject alloc] initWithValue: @"Netherlands"];
	[[Scope instance] set:@"tmp273" variable:VarDeclInferred99];
	
	
	[[Scope instance] createInnerScope];
	//changing iItem_ControlCall58 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall580 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall580 addObject:[[Scope instance] get: @"tmp273"]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall58 = [[iItem alloc] initialize:arguments_iItem_ControlCall580 container: [containerStack top]];
	//push iItem_ControlCall58 to stack to add innert controls
	[containerStack push:iItem_ControlCall58];
	
	//pop iItem_ControlCall58
	[containerStack pop];
	[iItem_ControlCall58 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall58];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred100 = [[BindableObject alloc] initWithValue: @"France"];
	[[Scope instance] set:@"tmp274" variable:VarDeclInferred100];
	
	
	[[Scope instance] createInnerScope];
	//changing iItem_ControlCall59 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall590 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall590 addObject:[[Scope instance] get: @"tmp274"]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall59 = [[iItem alloc] initialize:arguments_iItem_ControlCall590 container: [containerStack top]];
	//push iItem_ControlCall59 to stack to add innert controls
	[containerStack push:iItem_ControlCall59];
	
	//pop iItem_ControlCall59
	[containerStack pop];
	[iItem_ControlCall59 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall59];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred101 = [[BindableObject alloc] initWithValue: @"Italy"];
	[[Scope instance] set:@"tmp275" variable:VarDeclInferred101];
	
	
	[[Scope instance] createInnerScope];
	//changing iItem_ControlCall60 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall600 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall600 addObject:[[Scope instance] get: @"tmp275"]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall60 = [[iItem alloc] initialize:arguments_iItem_ControlCall600 container: [containerStack top]];
	//push iItem_ControlCall60 to stack to add innert controls
	[containerStack push:iItem_ControlCall60];
	
	//pop iItem_ControlCall60
	[containerStack pop];
	[iItem_ControlCall60 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall60];
	[[Scope instance] exitScope];
	
	//pop iTable_ControlCall57
	[containerStack pop];
	[iTable_ControlCall57 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall57];
	[[Scope instance] exitScope];
	
	//pop screen 
	[containerStack pop]; 
	[[Scope instance] exitScope];
	return self;
}
@end


#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
@interface Callbacktmp272 : Callback {
}
@end

@implementation Callbacktmp272

-(void) action: (id)sender
{
	[[Scope instance] createInnerScope];
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call12 = [[NSMutableArray alloc] init];
	
	
	root *screen_arguments_Call120 = [[root alloc]init];
	[screen_arguments_Call120 initialize:arguments_Call12 container: NULL];
	[[[Utilities CurrentView] navigationController] pushViewController:[screen_arguments_Call120 viewController] animated:YES];
	[screen_arguments_Call120 release];
	[[Scope instance] exitScope];
}
@end


#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
@interface Callbacktmp269 : Callback {
}
@end

@implementation Callbacktmp269

-(void) action: (id)sender
{
	[[Scope instance] createInnerScope];
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call13 = [[NSMutableArray alloc] init];
	
	
	thirdScreen *screen_arguments_Call130 = [[thirdScreen alloc]init];
	[screen_arguments_Call130 initialize:arguments_Call13 container: NULL];
	[[[Utilities CurrentView] navigationController] pushViewController:[screen_arguments_Call130 viewController] animated:YES];
	[screen_arguments_Call130 release];
	[[Scope instance] exitScope];
}
@end



#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iWidget.h"
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "root.h"
#import "iTable.h"
#import "iSection.h"
#import "iItem.h"
#import "iTextField.h"
#import "iButton.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iLeftButton.h"


@interface thirdScreen : iView <iWidget>{
}
@end
@implementation thirdScreen

-(id <iWidget>) initialize: (NSMutableArray*)arguments container: (id<iWidget>)parent
{
	[super initialize:arguments container:parent];
	[[Scope instance] createInnerScope];
	int p_339 = -1;
	
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	
	[[Scope instance] createInnerScope];
	//changing iTable_ControlCall61 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall610 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	iTable* iTable_ControlCall61 = [[iTable alloc] initialize:arguments_iTable_ControlCall610 container: [containerStack top]];
	//push iTable_ControlCall61 to stack to add innert controls
	[containerStack push:iTable_ControlCall61];
	BindableObject* VarDeclInferred102 = [[BindableObject alloc] initWithValue: @"Profile Information"];
	[[Scope instance] set:@"tmp288" variable:VarDeclInferred102];
	
	
	[[Scope instance] createInnerScope];
	//changing iSection_ControlCall62 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall620 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall620 addObject:[[Scope instance] get: @"tmp288"]];
	
	//initializing [varName] control
	iSection* iSection_ControlCall62 = [[iSection alloc] initialize:arguments_iSection_ControlCall620 container: [containerStack top]];
	//push iSection_ControlCall62 to stack to add innert controls
	[containerStack push:iSection_ControlCall62];
	BindableObject* VarDeclInferred103 = [[BindableObject alloc] initWithValue: @"FirstName"];
	[[Scope instance] set:@"tmp281" variable:VarDeclInferred103];
	
	
	[[Scope instance] createInnerScope];
	//changing iItem_ControlCall63 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall630 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall630 addObject:[[Scope instance] get: @"tmp281"]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall63 = [[iItem alloc] initialize:arguments_iItem_ControlCall630 container: [containerStack top]];
	//push iItem_ControlCall63 to stack to add innert controls
	[containerStack push:iItem_ControlCall63];
	BindableObject* VarDeclInferred104 = [[BindableObject alloc] initWithValue: @"John"];
	[[Scope instance] set:@"tmp278" variable:VarDeclInferred104];
	
	BindableObject* VarDeclInferred105 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp277" variable:VarDeclInferred105];
	
	BindableObject* VarDeclInferred106 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp276" variable:VarDeclInferred106];
	
	BindableObject* VarDeclInferred107 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp280" variable:VarDeclInferred107];
	
	BindableObject* VarDeclInferred108 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp279" variable:VarDeclInferred108];
	
	
	[[Scope instance] createInnerScope];
	//changing iTextField_ControlCall64 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall640 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall640 addObject:[[Scope instance] get: @"tmp276"]];
	[arguments_iTextField_ControlCall640 addObject:[[Scope instance] get: @"tmp278"]];
	[arguments_iTextField_ControlCall640 addObject:[[Scope instance] get: @"tmp277"]];
	[arguments_iTextField_ControlCall640 addObject:[[Scope instance] get: @"tmp279"]];
	[arguments_iTextField_ControlCall640 addObject:[[Scope instance] get: @"tmp280"]];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall64 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall640 container: [containerStack top]];
	//push iTextField_ControlCall64 to stack to add innert controls
	[containerStack push:iTextField_ControlCall64];
	
	//pop iTextField_ControlCall64
	[containerStack pop];
	[iTextField_ControlCall64 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall64];
	[[Scope instance] exitScope];
	
	//pop iItem_ControlCall63
	[containerStack pop];
	[iItem_ControlCall63 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall63];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred109 = [[BindableObject alloc] initWithValue: @"LastName"];
	[[Scope instance] set:@"tmp287" variable:VarDeclInferred109];
	
	
	[[Scope instance] createInnerScope];
	//changing iItem_ControlCall65 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall650 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall650 addObject:[[Scope instance] get: @"tmp287"]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall65 = [[iItem alloc] initialize:arguments_iItem_ControlCall650 container: [containerStack top]];
	//push iItem_ControlCall65 to stack to add innert controls
	[containerStack push:iItem_ControlCall65];
	BindableObject* VarDeclInferred110 = [[BindableObject alloc] initWithValue: @"Smith"];
	[[Scope instance] set:@"tmp284" variable:VarDeclInferred110];
	
	BindableObject* VarDeclInferred111 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp283" variable:VarDeclInferred111];
	
	BindableObject* VarDeclInferred112 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp282" variable:VarDeclInferred112];
	
	BindableObject* VarDeclInferred113 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp286" variable:VarDeclInferred113];
	
	BindableObject* VarDeclInferred114 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp285" variable:VarDeclInferred114];
	
	
	[[Scope instance] createInnerScope];
	//changing iTextField_ControlCall66 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall660 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall660 addObject:[[Scope instance] get: @"tmp282"]];
	[arguments_iTextField_ControlCall660 addObject:[[Scope instance] get: @"tmp284"]];
	[arguments_iTextField_ControlCall660 addObject:[[Scope instance] get: @"tmp283"]];
	[arguments_iTextField_ControlCall660 addObject:[[Scope instance] get: @"tmp285"]];
	[arguments_iTextField_ControlCall660 addObject:[[Scope instance] get: @"tmp286"]];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall66 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall660 container: [containerStack top]];
	//push iTextField_ControlCall66 to stack to add innert controls
	[containerStack push:iTextField_ControlCall66];
	
	//pop iTextField_ControlCall66
	[containerStack pop];
	[iTextField_ControlCall66 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall66];
	[[Scope instance] exitScope];
	
	//pop iItem_ControlCall65
	[containerStack pop];
	[iItem_ControlCall65 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall65];
	[[Scope instance] exitScope];
	
	//pop iSection_ControlCall62
	[containerStack pop];
	[iSection_ControlCall62 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall62];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred115 = [[BindableObject alloc] initWithValue: @"Education"];
	[[Scope instance] set:@"tmp295" variable:VarDeclInferred115];
	
	
	[[Scope instance] createInnerScope];
	//changing iSection_ControlCall67 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall670 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall670 addObject:[[Scope instance] get: @"tmp295"]];
	
	//initializing [varName] control
	iSection* iSection_ControlCall67 = [[iSection alloc] initialize:arguments_iSection_ControlCall670 container: [containerStack top]];
	//push iSection_ControlCall67 to stack to add innert controls
	[containerStack push:iSection_ControlCall67];
	BindableObject* VarDeclInferred116 = [[BindableObject alloc] initWithValue: @"University"];
	[[Scope instance] set:@"tmp294" variable:VarDeclInferred116];
	
	
	[[Scope instance] createInnerScope];
	//changing iItem_ControlCall68 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall680 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall680 addObject:[[Scope instance] get: @"tmp294"]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall68 = [[iItem alloc] initialize:arguments_iItem_ControlCall680 container: [containerStack top]];
	//push iItem_ControlCall68 to stack to add innert controls
	[containerStack push:iItem_ControlCall68];
	BindableObject* VarDeclInferred117 = [[BindableObject alloc] initWithValue: @"TU Delft"];
	[[Scope instance] set:@"tmp291" variable:VarDeclInferred117];
	
	BindableObject* VarDeclInferred118 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp290" variable:VarDeclInferred118];
	
	BindableObject* VarDeclInferred119 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp289" variable:VarDeclInferred119];
	
	BindableObject* VarDeclInferred120 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp293" variable:VarDeclInferred120];
	
	BindableObject* VarDeclInferred121 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp292" variable:VarDeclInferred121];
	
	
	[[Scope instance] createInnerScope];
	//changing iTextField_ControlCall69 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall690 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall690 addObject:[[Scope instance] get: @"tmp289"]];
	[arguments_iTextField_ControlCall690 addObject:[[Scope instance] get: @"tmp291"]];
	[arguments_iTextField_ControlCall690 addObject:[[Scope instance] get: @"tmp290"]];
	[arguments_iTextField_ControlCall690 addObject:[[Scope instance] get: @"tmp292"]];
	[arguments_iTextField_ControlCall690 addObject:[[Scope instance] get: @"tmp293"]];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall69 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall690 container: [containerStack top]];
	//push iTextField_ControlCall69 to stack to add innert controls
	[containerStack push:iTextField_ControlCall69];
	
	//pop iTextField_ControlCall69
	[containerStack pop];
	[iTextField_ControlCall69 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall69];
	[[Scope instance] exitScope];
	
	//pop iItem_ControlCall68
	[containerStack pop];
	[iItem_ControlCall68 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall68];
	[[Scope instance] exitScope];
	
	//pop iSection_ControlCall67
	[containerStack pop];
	[iSection_ControlCall67 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall67];
	[[Scope instance] exitScope];
	
	//pop iTable_ControlCall61
	[containerStack pop];
	[iTable_ControlCall61 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall61];
	[[Scope instance] exitScope];
	
	//pop screen 
	[containerStack pop]; 
	[[Scope instance] exitScope];
	return self;
}
@end


