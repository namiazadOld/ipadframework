

@class thirdScreen;
@class Callbacktmp346;
@class nextScreen;
@class Callbacktmp308;
@class root;
@class myCustomControl;
@class Callbacktmp241;
@class mySecondCustomControl;  


#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"	
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "iTable.h"
#import "iSection.h"
#import "iItemText.h"
#import "iTextField.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iLabel.h"
#import "iTextBox.h"
#import "iButton.h"


@interface mySecondCustomControl : iCustomControl{
}
@end
@implementation mySecondCustomControl
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[[Scope instance] createInnerScope];
	int k_1393 = -1;
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred0 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:YES]];
	[[Scope instance] set:@"tmp218" variable:VarDeclInferred0];
	BindableObject* VarDeclInferred1 = [[BindableObject alloc] initWithValue: @"Editable"];
	[[Scope instance] set:@"tmp217" variable:VarDeclInferred1];
	BindableObject* VarDeclInferred2 = [[BindableObject alloc] initWithValue: @"Edit"];
	[[Scope instance] set:@"tmp216" variable:VarDeclInferred2];
	BindableObject* VarDeclInferred3 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp227" variable:VarDeclInferred3];
	BindableObject* VarDeclInferred4 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp226" variable:VarDeclInferred4];
	BindableObject* VarDeclInferred5 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp225" variable:VarDeclInferred5];
	BindableObject* VarDeclInferred6 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp224" variable:VarDeclInferred6];
	BindableObject* VarDeclInferred7 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:31]];
	[[Scope instance] set:@"tmp223" variable:VarDeclInferred7];
	BindableObject* VarDeclInferred8 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:100]];
	[[Scope instance] set:@"tmp222" variable:VarDeclInferred8];
	BindableObject* VarDeclInferred9 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp221" variable:VarDeclInferred9];
	BindableObject* VarDeclInferred10 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp219" variable:VarDeclInferred10];
	
	[[Scope instance] createInnerScope];
	//changing iTextField_ControlCall0 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall00 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall00 addObject:[[Scope instance] get: @"tmp219"]];
	[arguments_iTextField_ControlCall00 addObject:[[Scope instance] get: @"tmp221"]];
	[arguments_iTextField_ControlCall00 addObject:[[Scope instance] get: @"tmp222"]];
	[arguments_iTextField_ControlCall00 addObject:[[Scope instance] get: @"tmp223"]];
	[arguments_iTextField_ControlCall00 addObject:[[Scope instance] get: @"tmp224"]];
	[arguments_iTextField_ControlCall00 addObject:[[Scope instance] get: @"tmp225"]];
	[arguments_iTextField_ControlCall00 addObject:[[Scope instance] get: @"tmp226"]];
	[arguments_iTextField_ControlCall00 addObject:[[Scope instance] get: @"tmp217"]];
	[arguments_iTextField_ControlCall00 addObject:[[Scope instance] get: @"tmp216"]];
	[arguments_iTextField_ControlCall00 addObject:[[Scope instance] get: @"tmp227"]];
	[arguments_iTextField_ControlCall00 addObject:[[Scope instance] get: @"tmp218"]];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall0 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall00 container: [containerStack top]];
	//push iTextField_ControlCall0 to stack to add innert controls
	[containerStack push:iTextField_ControlCall0];
	
	//pop iTextField_ControlCall0
	[containerStack pop];
	[iTextField_ControlCall0 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall0];
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
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "iTable.h"
#import "iSection.h"
#import "iItemText.h"
#import "iTextField.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iLabel.h"
#import "iTextBox.h"
#import "iButton.h"


@interface myCustomControl : iCustomControl{
}
@end
@implementation myCustomControl
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[[Scope instance] createInnerScope];
	int l_1393 = -1;
	
	[[Scope instance]  set:@"s" variable:[arguments objectAtIndex:++l_1393]];
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred11 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:YES]];
	[[Scope instance] set:@"tmp231" variable:VarDeclInferred11];
	BindableObject* VarDeclInferred12 = [[BindableObject alloc] initWithValue: @"TamTam"];
	[[Scope instance] set:@"tmp229" variable:VarDeclInferred12];
	BindableObject* VarDeclInferred13 = [[BindableObject alloc] initWithValue: @"Organization"];
	[[Scope instance] set:@"tmp228" variable:VarDeclInferred13];
	BindableObject* VarDeclInferred14 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp239" variable:VarDeclInferred14];
	BindableObject* VarDeclInferred15 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp238" variable:VarDeclInferred15];
	BindableObject* VarDeclInferred16 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp237" variable:VarDeclInferred16];
	BindableObject* VarDeclInferred17 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp236" variable:VarDeclInferred17];
	BindableObject* VarDeclInferred18 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:31]];
	[[Scope instance] set:@"tmp235" variable:VarDeclInferred18];
	BindableObject* VarDeclInferred19 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:100]];
	[[Scope instance] set:@"tmp234" variable:VarDeclInferred19];
	BindableObject* VarDeclInferred20 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp233" variable:VarDeclInferred20];
	BindableObject* VarDeclInferred21 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp232" variable:VarDeclInferred21];
	
	[[Scope instance] createInnerScope];
	//changing iTextField_ControlCall1 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall10 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall10 addObject:[[Scope instance] get: @"tmp232"]];
	[arguments_iTextField_ControlCall10 addObject:[[Scope instance] get: @"tmp233"]];
	[arguments_iTextField_ControlCall10 addObject:[[Scope instance] get: @"tmp234"]];
	[arguments_iTextField_ControlCall10 addObject:[[Scope instance] get: @"tmp235"]];
	[arguments_iTextField_ControlCall10 addObject:[[Scope instance] get: @"tmp236"]];
	[arguments_iTextField_ControlCall10 addObject:[[Scope instance] get: @"tmp237"]];
	[arguments_iTextField_ControlCall10 addObject:[[Scope instance] get: @"tmp238"]];
	[arguments_iTextField_ControlCall10 addObject:[[Scope instance] get: @"tmp229"]];
	[arguments_iTextField_ControlCall10 addObject:[[Scope instance] get: @"tmp228"]];
	[arguments_iTextField_ControlCall10 addObject:[[Scope instance] get: @"tmp239"]];
	[arguments_iTextField_ControlCall10 addObject:[[Scope instance] get: @"tmp231"]];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall1 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall10 container: [containerStack top]];
	//push iTextField_ControlCall1 to stack to add innert controls
	[containerStack push:iTextField_ControlCall1];
	
	//pop iTextField_ControlCall1
	[containerStack pop];
	[iTextField_ControlCall1 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall1];
	[[Scope instance] exitScope];
	
	[[Scope instance] createInnerScope];
	//changing mySecondCustomControl_ControlCall2 arguments to an array
	
	NSMutableArray* arguments_mySecondCustomControl_ControlCall20 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	mySecondCustomControl* mySecondCustomControl_ControlCall2 = [[mySecondCustomControl alloc] initialize:arguments_mySecondCustomControl_ControlCall20 container: [containerStack top]];
	//push mySecondCustomControl_ControlCall2 to stack to add innert controls
	[containerStack push:mySecondCustomControl_ControlCall2];
	
	//pop mySecondCustomControl_ControlCall2
	[containerStack pop];
	[mySecondCustomControl_ControlCall2 finilize];
	[[containerStack top] addBodyControl:mySecondCustomControl_ControlCall2];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred22 = [[BindableObject alloc] initWithValue: 
										 [[NSSelector alloc] initWithSelector:@selector(action:) target:[[Callbacktmp241 alloc] initWithScope:[Scope instance]]]
										 ];
	[[Scope instance] set:@"tmp241" variable:VarDeclInferred22];
	BindableObject* VarDeclInferred23 = [[BindableObject alloc] initWithValue: @"Button"];
	[[Scope instance] set:@"tmp247" variable:VarDeclInferred23];
	BindableObject* VarDeclInferred24 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:0]];
	[[Scope instance] set:@"tmp246" variable:VarDeclInferred24];
	BindableObject* VarDeclInferred25 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp245" variable:VarDeclInferred25];
	BindableObject* VarDeclInferred26 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:37]];
	[[Scope instance] set:@"tmp244" variable:VarDeclInferred26];
	BindableObject* VarDeclInferred27 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:72]];
	[[Scope instance] set:@"tmp243" variable:VarDeclInferred27];
	BindableObject* VarDeclInferred28 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp242" variable:VarDeclInferred28];
	
	[[Scope instance] createInnerScope];
	//changing iButton_ControlCall3 arguments to an array
	
	NSMutableArray* arguments_iButton_ControlCall30 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_ControlCall30 addObject:[[Scope instance] get: @"s"]];
	[arguments_iButton_ControlCall30 addObject:[[Scope instance] get: @"tmp242"]];
	[arguments_iButton_ControlCall30 addObject:[[Scope instance] get: @"tmp243"]];
	[arguments_iButton_ControlCall30 addObject:[[Scope instance] get: @"tmp244"]];
	[arguments_iButton_ControlCall30 addObject:[[Scope instance] get: @"tmp245"]];
	[arguments_iButton_ControlCall30 addObject:[[Scope instance] get: @"tmp246"]];
	[arguments_iButton_ControlCall30 addObject:[[Scope instance] get: @"tmp247"]];
	[arguments_iButton_ControlCall30 addObject:[[Scope instance] get: @"tmp241"]];
	
	//initializing [varName] control
	iButton* iButton_ControlCall3 = [[iButton alloc] initialize:arguments_iButton_ControlCall30 container: [containerStack top]];
	//push iButton_ControlCall3 to stack to add innert controls
	[containerStack push:iButton_ControlCall3];
	
	//pop iButton_ControlCall3
	[containerStack pop];
	[iButton_ControlCall3 finilize];
	[[containerStack top] addBodyControl:iButton_ControlCall3];
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
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
@interface Callbacktmp241 : Callback {
}
@end

@implementation Callbacktmp241

-(void) action: (id)sender
{
	[[Scope instance] createInnerScope];
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call0 = [[NSMutableArray alloc] init];
	
	
	nextScreen *screen_arguments_Call00 = [[nextScreen alloc]init];
	[screen_arguments_Call00 initialize:arguments_Call0 container: NULL];
	[[[Utilities CurrentView] navigationController] pushViewController:[screen_arguments_Call00 viewController] animated:YES];
	[screen_arguments_Call00 release];
	[[Scope instance] exitScope];
}
@end



#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"	
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "root.h"
#import "iTable.h"
#import "iSection.h"
#import "iItemText.h"
#import "iTextField.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iLabel.h"
#import "iTextBox.h"
#import "iButton.h"


@implementation root
@synthesize window;
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[[Scope instance] createInnerScope];
	int m_1393 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred29 = [[BindableObject alloc] initWithValue: @"Code"];
	[[Scope instance] set:@"tmp248" variable:VarDeclInferred29];
	BindableObject* VarDeclInferred30 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:0]];
	[[Scope instance] set:@"tmp255" variable:VarDeclInferred30];
	BindableObject* VarDeclInferred31 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp254" variable:VarDeclInferred31];
	BindableObject* VarDeclInferred32 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:21]];
	[[Scope instance] set:@"tmp253" variable:VarDeclInferred32];
	BindableObject* VarDeclInferred33 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:90]];
	[[Scope instance] set:@"tmp252" variable:VarDeclInferred33];
	BindableObject* VarDeclInferred34 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp251" variable:VarDeclInferred34];
	BindableObject* VarDeclInferred35 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp249" variable:VarDeclInferred35];
	
	[[Scope instance] createInnerScope];
	//changing iLabel_ControlCall4 arguments to an array
	
	NSMutableArray* arguments_iLabel_ControlCall40 = [[NSMutableArray alloc] init];
	
	[arguments_iLabel_ControlCall40 addObject:[[Scope instance] get: @"tmp249"]];
	[arguments_iLabel_ControlCall40 addObject:[[Scope instance] get: @"tmp251"]];
	[arguments_iLabel_ControlCall40 addObject:[[Scope instance] get: @"tmp252"]];
	[arguments_iLabel_ControlCall40 addObject:[[Scope instance] get: @"tmp253"]];
	[arguments_iLabel_ControlCall40 addObject:[[Scope instance] get: @"tmp254"]];
	[arguments_iLabel_ControlCall40 addObject:[[Scope instance] get: @"tmp255"]];
	[arguments_iLabel_ControlCall40 addObject:[[Scope instance] get: @"tmp248"]];
	
	//initializing [varName] control
	iLabel* iLabel_ControlCall4 = [[iLabel alloc] initialize:arguments_iLabel_ControlCall40 container: [containerStack top]];
	//push iLabel_ControlCall4 to stack to add innert controls
	[containerStack push:iLabel_ControlCall4];
	
	//pop iLabel_ControlCall4
	[containerStack pop];
	[iLabel_ControlCall4 finilize];
	[[containerStack top] addBodyControl:iLabel_ControlCall4];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred36 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp258" variable:VarDeclInferred36];
	BindableObject* VarDeclInferred37 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:0]];
	[[Scope instance] set:@"tmp257" variable:VarDeclInferred37];
	BindableObject* VarDeclInferred38 = [[BindableObject alloc] initWithValue: @"Valid"];
	[[Scope instance] set:@"tmp256" variable:VarDeclInferred38];
	BindableObject* VarDeclInferred39 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:21]];
	[[Scope instance] set:@"tmp263" variable:VarDeclInferred39];
	BindableObject* VarDeclInferred40 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:90]];
	[[Scope instance] set:@"tmp262" variable:VarDeclInferred40];
	BindableObject* VarDeclInferred41 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp261" variable:VarDeclInferred41];
	BindableObject* VarDeclInferred42 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp259" variable:VarDeclInferred42];
	
	[[Scope instance] createInnerScope];
	//changing iLabel_ControlCall5 arguments to an array
	
	NSMutableArray* arguments_iLabel_ControlCall50 = [[NSMutableArray alloc] init];
	
	[arguments_iLabel_ControlCall50 addObject:[[Scope instance] get: @"tmp259"]];
	[arguments_iLabel_ControlCall50 addObject:[[Scope instance] get: @"tmp261"]];
	[arguments_iLabel_ControlCall50 addObject:[[Scope instance] get: @"tmp262"]];
	[arguments_iLabel_ControlCall50 addObject:[[Scope instance] get: @"tmp263"]];
	[arguments_iLabel_ControlCall50 addObject:[[Scope instance] get: @"tmp257"]];
	[arguments_iLabel_ControlCall50 addObject:[[Scope instance] get: @"tmp258"]];
	[arguments_iLabel_ControlCall50 addObject:[[Scope instance] get: @"tmp256"]];
	
	//initializing [varName] control
	iLabel* iLabel_ControlCall5 = [[iLabel alloc] initialize:arguments_iLabel_ControlCall50 container: [containerStack top]];
	//push iLabel_ControlCall5 to stack to add innert controls
	[containerStack push:iLabel_ControlCall5];
	
	//pop iLabel_ControlCall5
	[containerStack pop];
	[iLabel_ControlCall5 finilize];
	[[containerStack top] addBodyControl:iLabel_ControlCall5];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred43 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:0]];
	[[Scope instance] set:@"tmp267" variable:VarDeclInferred43];
	BindableObject* VarDeclInferred44 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:YES]];
	[[Scope instance] set:@"tmp266" variable:VarDeclInferred44];
	BindableObject* VarDeclInferred45 = [[BindableObject alloc] initWithValue: @"1234"];
	[[Scope instance] set:@"tmp265" variable:VarDeclInferred45];
	BindableObject* VarDeclInferred46 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp264" variable:VarDeclInferred46];
	BindableObject* VarDeclInferred47 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp273" variable:VarDeclInferred47];
	BindableObject* VarDeclInferred48 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:31]];
	[[Scope instance] set:@"tmp272" variable:VarDeclInferred48];
	BindableObject* VarDeclInferred49 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:100]];
	[[Scope instance] set:@"tmp271" variable:VarDeclInferred49];
	BindableObject* VarDeclInferred50 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp269" variable:VarDeclInferred50];
	BindableObject* VarDeclInferred51 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp268" variable:VarDeclInferred51];
	
	[[Scope instance] createInnerScope];
	//changing iTextBox_ControlCall6 arguments to an array
	
	NSMutableArray* arguments_iTextBox_ControlCall60 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_ControlCall60 addObject:[[Scope instance] get: @"tmp268"]];
	[arguments_iTextBox_ControlCall60 addObject:[[Scope instance] get: @"tmp269"]];
	[arguments_iTextBox_ControlCall60 addObject:[[Scope instance] get: @"tmp271"]];
	[arguments_iTextBox_ControlCall60 addObject:[[Scope instance] get: @"tmp272"]];
	[arguments_iTextBox_ControlCall60 addObject:[[Scope instance] get: @"tmp267"]];
	[arguments_iTextBox_ControlCall60 addObject:[[Scope instance] get: @"tmp273"]];
	[arguments_iTextBox_ControlCall60 addObject:[[Scope instance] get: @"tmp264"]];
	[arguments_iTextBox_ControlCall60 addObject:[[Scope instance] get: @"tmp265"]];
	[arguments_iTextBox_ControlCall60 addObject:[[Scope instance] get: @"tmp266"]];
	
	//initializing [varName] control
	iTextBox* iTextBox_ControlCall6 = [[iTextBox alloc] initialize:arguments_iTextBox_ControlCall60 container: [containerStack top]];
	//push iTextBox_ControlCall6 to stack to add innert controls
	[containerStack push:iTextBox_ControlCall6];
	
	//pop iTextBox_ControlCall6
	[containerStack pop];
	[iTextBox_ControlCall6 finilize];
	[[containerStack top] addBodyControl:iTextBox_ControlCall6];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred52 = [[BindableObject alloc] initWithValue: @"FirstName"];
	[[Scope instance] set:@"tmp274" variable:VarDeclInferred52];
	BindableObject* VarDeclInferred53 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:0]];
	[[Scope instance] set:@"tmp281" variable:VarDeclInferred53];
	BindableObject* VarDeclInferred54 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp279" variable:VarDeclInferred54];
	BindableObject* VarDeclInferred55 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:21]];
	[[Scope instance] set:@"tmp278" variable:VarDeclInferred55];
	BindableObject* VarDeclInferred56 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:90]];
	[[Scope instance] set:@"tmp277" variable:VarDeclInferred56];
	BindableObject* VarDeclInferred57 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp276" variable:VarDeclInferred57];
	BindableObject* VarDeclInferred58 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp275" variable:VarDeclInferred58];
	
	[[Scope instance] createInnerScope];
	//changing iLabel_ControlCall7 arguments to an array
	
	NSMutableArray* arguments_iLabel_ControlCall70 = [[NSMutableArray alloc] init];
	
	[arguments_iLabel_ControlCall70 addObject:[[Scope instance] get: @"tmp275"]];
	[arguments_iLabel_ControlCall70 addObject:[[Scope instance] get: @"tmp276"]];
	[arguments_iLabel_ControlCall70 addObject:[[Scope instance] get: @"tmp277"]];
	[arguments_iLabel_ControlCall70 addObject:[[Scope instance] get: @"tmp278"]];
	[arguments_iLabel_ControlCall70 addObject:[[Scope instance] get: @"tmp279"]];
	[arguments_iLabel_ControlCall70 addObject:[[Scope instance] get: @"tmp281"]];
	[arguments_iLabel_ControlCall70 addObject:[[Scope instance] get: @"tmp274"]];
	
	//initializing [varName] control
	iLabel* iLabel_ControlCall7 = [[iLabel alloc] initialize:arguments_iLabel_ControlCall70 container: [containerStack top]];
	//push iLabel_ControlCall7 to stack to add innert controls
	[containerStack push:iLabel_ControlCall7];
	
	//pop iLabel_ControlCall7
	[containerStack pop];
	[iLabel_ControlCall7 finilize];
	[[containerStack top] addBodyControl:iLabel_ControlCall7];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred59 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp284" variable:VarDeclInferred59];
	BindableObject* VarDeclInferred60 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:0]];
	[[Scope instance] set:@"tmp283" variable:VarDeclInferred60];
	BindableObject* VarDeclInferred61 = [[BindableObject alloc] initWithValue: @"Go"];
	[[Scope instance] set:@"tmp282" variable:VarDeclInferred61];
	BindableObject* VarDeclInferred62 = [[BindableObject alloc] initWithValue: [[NullObject alloc] init]];
	[[Scope instance] set:@"tmp289" variable:VarDeclInferred62];
	BindableObject* VarDeclInferred63 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:37]];
	[[Scope instance] set:@"tmp288" variable:VarDeclInferred63];
	BindableObject* VarDeclInferred64 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:72]];
	[[Scope instance] set:@"tmp287" variable:VarDeclInferred64];
	BindableObject* VarDeclInferred65 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp286" variable:VarDeclInferred65];
	BindableObject* VarDeclInferred66 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp285" variable:VarDeclInferred66];
	
	[[Scope instance] createInnerScope];
	//changing iButton_ControlCall8 arguments to an array
	
	NSMutableArray* arguments_iButton_ControlCall80 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_ControlCall80 addObject:[[Scope instance] get: @"tmp285"]];
	[arguments_iButton_ControlCall80 addObject:[[Scope instance] get: @"tmp286"]];
	[arguments_iButton_ControlCall80 addObject:[[Scope instance] get: @"tmp287"]];
	[arguments_iButton_ControlCall80 addObject:[[Scope instance] get: @"tmp288"]];
	[arguments_iButton_ControlCall80 addObject:[[Scope instance] get: @"tmp283"]];
	[arguments_iButton_ControlCall80 addObject:[[Scope instance] get: @"tmp284"]];
	[arguments_iButton_ControlCall80 addObject:[[Scope instance] get: @"tmp282"]];
	[arguments_iButton_ControlCall80 addObject:[[Scope instance] get: @"tmp289"]];
	
	//initializing [varName] control
	iButton* iButton_ControlCall8 = [[iButton alloc] initialize:arguments_iButton_ControlCall80 container: [containerStack top]];
	//push iButton_ControlCall8 to stack to add innert controls
	[containerStack push:iButton_ControlCall8];
	
	//pop iButton_ControlCall8
	[containerStack pop];
	[iButton_ControlCall8 finilize];
	[[containerStack top] addBodyControl:iButton_ControlCall8];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred67 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp294" variable:VarDeclInferred67];
	BindableObject* VarDeclInferred68 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:0]];
	[[Scope instance] set:@"tmp293" variable:VarDeclInferred68];
	BindableObject* VarDeclInferred69 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:50]];
	[[Scope instance] set:@"tmp292" variable:VarDeclInferred69];
	BindableObject* VarDeclInferred70 = [[BindableObject alloc] initWithValue: @"Click"];
	[[Scope instance] set:@"tmp291" variable:VarDeclInferred70];
	BindableObject* VarDeclInferred71 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:21]];
	[[Scope instance] set:@"tmp297" variable:VarDeclInferred71];
	BindableObject* VarDeclInferred72 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp296" variable:VarDeclInferred72];
	BindableObject* VarDeclInferred73 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp295" variable:VarDeclInferred73];
	
	[[Scope instance] createInnerScope];
	//changing iLabel_ControlCall9 arguments to an array
	
	NSMutableArray* arguments_iLabel_ControlCall90 = [[NSMutableArray alloc] init];
	
	[arguments_iLabel_ControlCall90 addObject:[[Scope instance] get: @"tmp295"]];
	[arguments_iLabel_ControlCall90 addObject:[[Scope instance] get: @"tmp296"]];
	[arguments_iLabel_ControlCall90 addObject:[[Scope instance] get: @"tmp292"]];
	[arguments_iLabel_ControlCall90 addObject:[[Scope instance] get: @"tmp297"]];
	[arguments_iLabel_ControlCall90 addObject:[[Scope instance] get: @"tmp293"]];
	[arguments_iLabel_ControlCall90 addObject:[[Scope instance] get: @"tmp294"]];
	[arguments_iLabel_ControlCall90 addObject:[[Scope instance] get: @"tmp291"]];
	
	//initializing [varName] control
	iLabel* iLabel_ControlCall9 = [[iLabel alloc] initialize:arguments_iLabel_ControlCall90 container: [containerStack top]];
	//push iLabel_ControlCall9 to stack to add innert controls
	[containerStack push:iLabel_ControlCall9];
	
	//pop iLabel_ControlCall9
	[containerStack pop];
	[iLabel_ControlCall9 finilize];
	[[containerStack top] addBodyControl:iLabel_ControlCall9];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred74 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:0]];
	[[Scope instance] set:@"tmp301" variable:VarDeclInferred74];
	BindableObject* VarDeclInferred75 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:YES]];
	[[Scope instance] set:@"tmp300" variable:VarDeclInferred75];
	BindableObject* VarDeclInferred76 = [[BindableObject alloc] initWithValue: @"John"];
	[[Scope instance] set:@"tmp299" variable:VarDeclInferred76];
	BindableObject* VarDeclInferred77 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp298" variable:VarDeclInferred77];
	BindableObject* VarDeclInferred78 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp306" variable:VarDeclInferred78];
	BindableObject* VarDeclInferred79 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:31]];
	[[Scope instance] set:@"tmp305" variable:VarDeclInferred79];
	BindableObject* VarDeclInferred80 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:100]];
	[[Scope instance] set:@"tmp304" variable:VarDeclInferred80];
	BindableObject* VarDeclInferred81 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp303" variable:VarDeclInferred81];
	BindableObject* VarDeclInferred82 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp302" variable:VarDeclInferred82];
	
	[[Scope instance] createInnerScope];
	//changing iTextBox_ControlCall10 arguments to an array
	
	NSMutableArray* arguments_iTextBox_ControlCall100 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_ControlCall100 addObject:[[Scope instance] get: @"tmp302"]];
	[arguments_iTextBox_ControlCall100 addObject:[[Scope instance] get: @"tmp303"]];
	[arguments_iTextBox_ControlCall100 addObject:[[Scope instance] get: @"tmp304"]];
	[arguments_iTextBox_ControlCall100 addObject:[[Scope instance] get: @"tmp305"]];
	[arguments_iTextBox_ControlCall100 addObject:[[Scope instance] get: @"tmp301"]];
	[arguments_iTextBox_ControlCall100 addObject:[[Scope instance] get: @"tmp306"]];
	[arguments_iTextBox_ControlCall100 addObject:[[Scope instance] get: @"tmp298"]];
	[arguments_iTextBox_ControlCall100 addObject:[[Scope instance] get: @"tmp299"]];
	[arguments_iTextBox_ControlCall100 addObject:[[Scope instance] get: @"tmp300"]];
	
	//initializing [varName] control
	iTextBox* iTextBox_ControlCall10 = [[iTextBox alloc] initialize:arguments_iTextBox_ControlCall100 container: [containerStack top]];
	//push iTextBox_ControlCall10 to stack to add innert controls
	[containerStack push:iTextBox_ControlCall10];
	
	//pop iTextBox_ControlCall10
	[containerStack pop];
	[iTextBox_ControlCall10 finilize];
	[[containerStack top] addBodyControl:iTextBox_ControlCall10];
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
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "root.h"
#import "iTable.h"
#import "iSection.h"
#import "iItemText.h"
#import "iTextField.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iLabel.h"
#import "iTextBox.h"
#import "iButton.h"


@interface nextScreen : iView{
}
@end
@implementation nextScreen

-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[[Scope instance] createInnerScope];
	int n_1393 = -1;
	
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred83 = [[BindableObject alloc] initWithValue: @"My Second Header"];
	[[Scope instance] set:@"tmp316" variable:VarDeclInferred83];
	BindableObject* VarDeclInferred84 = [[BindableObject alloc] initWithValue: @"Header"];
	[[Scope instance] set:@"tmp323" variable:VarDeclInferred84];
	BindableObject* VarDeclInferred85 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp322" variable:VarDeclInferred85];
	BindableObject* VarDeclInferred86 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp321" variable:VarDeclInferred86];
	BindableObject* VarDeclInferred87 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:37]];
	[[Scope instance] set:@"tmp319" variable:VarDeclInferred87];
	BindableObject* VarDeclInferred88 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:768]];
	[[Scope instance] set:@"tmp318" variable:VarDeclInferred88];
	BindableObject* VarDeclInferred89 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp317" variable:VarDeclInferred89];
	
	[[Scope instance] createInnerScope];
	//changing iHeader_ControlCall11 arguments to an array
	
	NSMutableArray* arguments_iHeader_ControlCall110 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_ControlCall110 addObject:[[Scope instance] get: @"tmp316"]];
	[arguments_iHeader_ControlCall110 addObject:[[Scope instance] get: @"tmp317"]];
	[arguments_iHeader_ControlCall110 addObject:[[Scope instance] get: @"tmp318"]];
	[arguments_iHeader_ControlCall110 addObject:[[Scope instance] get: @"tmp319"]];
	[arguments_iHeader_ControlCall110 addObject:[[Scope instance] get: @"tmp321"]];
	[arguments_iHeader_ControlCall110 addObject:[[Scope instance] get: @"tmp322"]];
	[arguments_iHeader_ControlCall110 addObject:[[Scope instance] get: @"tmp323"]];
	
	//initializing [varName] control
	iHeader* iHeader_ControlCall11 = [[iHeader alloc] initialize:arguments_iHeader_ControlCall110 container: [containerStack top]];
	//push iHeader_ControlCall11 to stack to add innert controls
	[containerStack push:iHeader_ControlCall11];
	BindableObject* VarDeclInferred90 = [[BindableObject alloc] initWithValue: 
										 [[NSSelector alloc] initWithSelector:@selector(action:) target:[[Callbacktmp308 alloc] initWithScope:[Scope instance]]]
										 ];
	[[Scope instance] set:@"tmp308" variable:VarDeclInferred90];
	BindableObject* VarDeclInferred91 = [[BindableObject alloc] initWithValue: @"Third Screen"];
	[[Scope instance] set:@"tmp307" variable:VarDeclInferred91];
	BindableObject* VarDeclInferred92 = [[BindableObject alloc] initWithValue: @"Next"];
	[[Scope instance] set:@"tmp315" variable:VarDeclInferred92];
	BindableObject* VarDeclInferred93 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp314" variable:VarDeclInferred93];
	BindableObject* VarDeclInferred94 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp313" variable:VarDeclInferred94];
	BindableObject* VarDeclInferred95 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:37]];
	[[Scope instance] set:@"tmp312" variable:VarDeclInferred95];
	BindableObject* VarDeclInferred96 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:72]];
	[[Scope instance] set:@"tmp311" variable:VarDeclInferred96];
	BindableObject* VarDeclInferred97 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp309" variable:VarDeclInferred97];
	
	[[Scope instance] createInnerScope];
	//changing iRightButton_ControlCall12 arguments to an array
	
	NSMutableArray* arguments_iRightButton_ControlCall120 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_ControlCall120 addObject:[[Scope instance] get: @"tmp307"]];
	[arguments_iRightButton_ControlCall120 addObject:[[Scope instance] get: @"tmp309"]];
	[arguments_iRightButton_ControlCall120 addObject:[[Scope instance] get: @"tmp311"]];
	[arguments_iRightButton_ControlCall120 addObject:[[Scope instance] get: @"tmp312"]];
	[arguments_iRightButton_ControlCall120 addObject:[[Scope instance] get: @"tmp313"]];
	[arguments_iRightButton_ControlCall120 addObject:[[Scope instance] get: @"tmp314"]];
	[arguments_iRightButton_ControlCall120 addObject:[[Scope instance] get: @"tmp315"]];
	[arguments_iRightButton_ControlCall120 addObject:[[Scope instance] get: @"tmp308"]];
	
	//initializing [varName] control
	iRightButton* iRightButton_ControlCall12 = [[iRightButton alloc] initialize:arguments_iRightButton_ControlCall120 container: [containerStack top]];
	//push iRightButton_ControlCall12 to stack to add innert controls
	[containerStack push:iRightButton_ControlCall12];
	
	//pop iRightButton_ControlCall12
	[containerStack pop];
	[iRightButton_ControlCall12 finilize];
	[[containerStack top] addBodyControl:iRightButton_ControlCall12];
	[[Scope instance] exitScope];
	
	//pop iHeader_ControlCall11
	[containerStack pop];
	[iHeader_ControlCall11 finilize];
	[[containerStack top] addBodyControl:iHeader_ControlCall11];
	[[Scope instance] exitScope];
	BindableObject* VarDecl0 = [[BindableObject alloc] initWithValue: [[NSMutableArray alloc] initWithObjects:[[BindableObject alloc] initWithValue:@"Hello"],[[BindableObject alloc] initWithValue:@"Bye"],[[BindableObject alloc] initWithValue:@"Nami"],[[BindableObject alloc] initWithValue:@"Iran"],[[BindableObject alloc] initWithValue:@"Netherland"],[[BindableObject alloc] initWithValue:@"Zef"], nil]];
	[[Scope instance] set:@"items" variable:VarDecl0];
	BindableObject* VarDeclInferred98 = [[BindableObject alloc] initWithValue: @"I am a label"];
	[[Scope instance] set:@"tmp324" variable:VarDeclInferred98];
	BindableObject* VarDeclInferred99 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp331" variable:VarDeclInferred99];
	BindableObject* VarDeclInferred100 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:0]];
	[[Scope instance] set:@"tmp329" variable:VarDeclInferred100];
	BindableObject* VarDeclInferred101 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp328" variable:VarDeclInferred101];
	BindableObject* VarDeclInferred102 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:21]];
	[[Scope instance] set:@"tmp327" variable:VarDeclInferred102];
	BindableObject* VarDeclInferred103 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:90]];
	[[Scope instance] set:@"tmp326" variable:VarDeclInferred103];
	BindableObject* VarDeclInferred104 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp325" variable:VarDeclInferred104];
	
	[[Scope instance] createInnerScope];
	//changing iLabel_ControlCall13 arguments to an array
	
	NSMutableArray* arguments_iLabel_ControlCall130 = [[NSMutableArray alloc] init];
	
	[arguments_iLabel_ControlCall130 addObject:[[Scope instance] get: @"tmp324"]];
	[arguments_iLabel_ControlCall130 addObject:[[Scope instance] get: @"tmp325"]];
	[arguments_iLabel_ControlCall130 addObject:[[Scope instance] get: @"tmp326"]];
	[arguments_iLabel_ControlCall130 addObject:[[Scope instance] get: @"tmp327"]];
	[arguments_iLabel_ControlCall130 addObject:[[Scope instance] get: @"tmp328"]];
	[arguments_iLabel_ControlCall130 addObject:[[Scope instance] get: @"tmp329"]];
	[arguments_iLabel_ControlCall130 addObject:[[Scope instance] get: @"tmp331"]];
	
	//initializing [varName] control
	iLabel* iLabel_ControlCall13 = [[iLabel alloc] initialize:arguments_iLabel_ControlCall130 container: [containerStack top]];
	//push iLabel_ControlCall13 to stack to add innert controls
	[containerStack push:iLabel_ControlCall13];
	
	//pop iLabel_ControlCall13
	[containerStack pop];
	[iLabel_ControlCall13 finilize];
	[[containerStack top] addBodyControl:iLabel_ControlCall13];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred105 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp344" variable:VarDeclInferred105];
	BindableObject* VarDeclInferred106 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp343" variable:VarDeclInferred106];
	BindableObject* VarDeclInferred107 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1004]];
	[[Scope instance] set:@"tmp342" variable:VarDeclInferred107];
	BindableObject* VarDeclInferred108 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:768]];
	[[Scope instance] set:@"tmp341" variable:VarDeclInferred108];
	BindableObject* VarDeclInferred109 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp339" variable:VarDeclInferred109];
	BindableObject* VarDeclInferred110 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp338" variable:VarDeclInferred110];
	
	[[Scope instance] createInnerScope];
	//changing iTable_ControlCall14 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall140 = [[NSMutableArray alloc] init];
	
	[arguments_iTable_ControlCall140 addObject:[[Scope instance] get: @"tmp338"]];
	[arguments_iTable_ControlCall140 addObject:[[Scope instance] get: @"tmp339"]];
	[arguments_iTable_ControlCall140 addObject:[[Scope instance] get: @"tmp341"]];
	[arguments_iTable_ControlCall140 addObject:[[Scope instance] get: @"tmp342"]];
	[arguments_iTable_ControlCall140 addObject:[[Scope instance] get: @"tmp343"]];
	[arguments_iTable_ControlCall140 addObject:[[Scope instance] get: @"tmp344"]];
	
	//initializing [varName] control
	iTable* iTable_ControlCall14 = [[iTable alloc] initialize:arguments_iTable_ControlCall140 container: [containerStack top]];
	//push iTable_ControlCall14 to stack to add innert controls
	[containerStack push:iTable_ControlCall14];
	
	for (BindableObject* item in [[[Scope instance] get: @"items"] value])
	{
		[[Scope instance] createInnerScope];
		[[Scope instance] set:@"item" variable:item];
		BindableObject* VarDeclInferred111 = [[BindableObject alloc] initWithValue: @"Item"];
		[[Scope instance] set:@"tmp337" variable:VarDeclInferred111];
		BindableObject* VarDeclInferred112 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
		[[Scope instance] set:@"tmp336" variable:VarDeclInferred112];
		BindableObject* VarDeclInferred113 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
		[[Scope instance] set:@"tmp335" variable:VarDeclInferred113];
		BindableObject* VarDeclInferred114 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
		[[Scope instance] set:@"tmp334" variable:VarDeclInferred114];
		BindableObject* VarDeclInferred115 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
		[[Scope instance] set:@"tmp333" variable:VarDeclInferred115];
		BindableObject* VarDeclInferred116 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
		[[Scope instance] set:@"tmp332" variable:VarDeclInferred116];
		
		[[Scope instance] createInnerScope];
		//changing iItem_ControlCall15 arguments to an array
		
		NSMutableArray* arguments_iItem_ControlCall150 = [[NSMutableArray alloc] init];
		
		[arguments_iItem_ControlCall150 addObject:[[Scope instance] get: @"item"]];
		[arguments_iItem_ControlCall150 addObject:[[Scope instance] get: @"tmp332"]];
		[arguments_iItem_ControlCall150 addObject:[[Scope instance] get: @"tmp333"]];
		[arguments_iItem_ControlCall150 addObject:[[Scope instance] get: @"tmp334"]];
		[arguments_iItem_ControlCall150 addObject:[[Scope instance] get: @"tmp335"]];
		[arguments_iItem_ControlCall150 addObject:[[Scope instance] get: @"tmp336"]];
		[arguments_iItem_ControlCall150 addObject:[[Scope instance] get: @"tmp337"]];
		
		//initializing [varName] control
		iItem* iItem_ControlCall15 = [[iItem alloc] initialize:arguments_iItem_ControlCall150 container: [containerStack top]];
		//push iItem_ControlCall15 to stack to add innert controls
		[containerStack push:iItem_ControlCall15];
		
		//pop iItem_ControlCall15
		[containerStack pop];
		[iItem_ControlCall15 finilize];
		[[containerStack top] addBodyControl:iItem_ControlCall15];
		[[Scope instance] exitScope];
		
		[[Scope instance] exitScope];
	}
	
	//pop iTable_ControlCall14
	[containerStack pop];
	[iTable_ControlCall14 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall14];
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
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
@interface Callbacktmp308 : Callback {
}
@end

@implementation Callbacktmp308

-(void) action: (id)sender
{
	[[Scope instance] createInnerScope];
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_Call1 = [[NSMutableArray alloc] init];
	
	
	thirdScreen *screen_arguments_Call10 = [[thirdScreen alloc]init];
	[screen_arguments_Call10 initialize:arguments_Call1 container: NULL];
	[[[Utilities CurrentView] navigationController] pushViewController:[screen_arguments_Call10 viewController] animated:YES];
	[screen_arguments_Call10 release];
	[[Scope instance] exitScope];
}
@end



#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"	
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "root.h"
#import "iTable.h"
#import "iSection.h"
#import "iItemText.h"
#import "iTextField.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iLabel.h"
#import "iTextBox.h"
#import "iButton.h"


@interface thirdScreen : iView{
}
@end
@implementation thirdScreen

-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[[Scope instance] createInnerScope];
	int o_1393 = -1;
	
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred117 = [[BindableObject alloc] initWithValue: @"My Third Header"];
	[[Scope instance] set:@"tmp354" variable:VarDeclInferred117];
	BindableObject* VarDeclInferred118 = [[BindableObject alloc] initWithValue: @"Header"];
	[[Scope instance] set:@"tmp361" variable:VarDeclInferred118];
	BindableObject* VarDeclInferred119 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp359" variable:VarDeclInferred119];
	BindableObject* VarDeclInferred120 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp358" variable:VarDeclInferred120];
	BindableObject* VarDeclInferred121 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:37]];
	[[Scope instance] set:@"tmp357" variable:VarDeclInferred121];
	BindableObject* VarDeclInferred122 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:768]];
	[[Scope instance] set:@"tmp356" variable:VarDeclInferred122];
	BindableObject* VarDeclInferred123 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp355" variable:VarDeclInferred123];
	
	[[Scope instance] createInnerScope];
	//changing iHeader_ControlCall16 arguments to an array
	
	NSMutableArray* arguments_iHeader_ControlCall160 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_ControlCall160 addObject:[[Scope instance] get: @"tmp354"]];
	[arguments_iHeader_ControlCall160 addObject:[[Scope instance] get: @"tmp355"]];
	[arguments_iHeader_ControlCall160 addObject:[[Scope instance] get: @"tmp356"]];
	[arguments_iHeader_ControlCall160 addObject:[[Scope instance] get: @"tmp357"]];
	[arguments_iHeader_ControlCall160 addObject:[[Scope instance] get: @"tmp358"]];
	[arguments_iHeader_ControlCall160 addObject:[[Scope instance] get: @"tmp359"]];
	[arguments_iHeader_ControlCall160 addObject:[[Scope instance] get: @"tmp361"]];
	
	//initializing [varName] control
	iHeader* iHeader_ControlCall16 = [[iHeader alloc] initialize:arguments_iHeader_ControlCall160 container: [containerStack top]];
	//push iHeader_ControlCall16 to stack to add innert controls
	[containerStack push:iHeader_ControlCall16];
	BindableObject* VarDeclInferred124 = [[BindableObject alloc] initWithValue: 
										  [[NSSelector alloc] initWithSelector:@selector(action:) target:[[Callbacktmp346 alloc] initWithScope:[Scope instance]]]
										  ];
	[[Scope instance] set:@"tmp346" variable:VarDeclInferred124];
	BindableObject* VarDeclInferred125 = [[BindableObject alloc] initWithValue: @"Done"];
	[[Scope instance] set:@"tmp345" variable:VarDeclInferred125];
	BindableObject* VarDeclInferred126 = [[BindableObject alloc] initWithValue: @"Next"];
	[[Scope instance] set:@"tmp353" variable:VarDeclInferred126];
	BindableObject* VarDeclInferred127 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp352" variable:VarDeclInferred127];
	BindableObject* VarDeclInferred128 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp351" variable:VarDeclInferred128];
	BindableObject* VarDeclInferred129 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:37]];
	[[Scope instance] set:@"tmp349" variable:VarDeclInferred129];
	BindableObject* VarDeclInferred130 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:72]];
	[[Scope instance] set:@"tmp348" variable:VarDeclInferred130];
	BindableObject* VarDeclInferred131 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp347" variable:VarDeclInferred131];
	
	[[Scope instance] createInnerScope];
	//changing iRightButton_ControlCall17 arguments to an array
	
	NSMutableArray* arguments_iRightButton_ControlCall170 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_ControlCall170 addObject:[[Scope instance] get: @"tmp345"]];
	[arguments_iRightButton_ControlCall170 addObject:[[Scope instance] get: @"tmp347"]];
	[arguments_iRightButton_ControlCall170 addObject:[[Scope instance] get: @"tmp348"]];
	[arguments_iRightButton_ControlCall170 addObject:[[Scope instance] get: @"tmp349"]];
	[arguments_iRightButton_ControlCall170 addObject:[[Scope instance] get: @"tmp351"]];
	[arguments_iRightButton_ControlCall170 addObject:[[Scope instance] get: @"tmp352"]];
	[arguments_iRightButton_ControlCall170 addObject:[[Scope instance] get: @"tmp353"]];
	[arguments_iRightButton_ControlCall170 addObject:[[Scope instance] get: @"tmp346"]];
	
	//initializing [varName] control
	iRightButton* iRightButton_ControlCall17 = [[iRightButton alloc] initialize:arguments_iRightButton_ControlCall170 container: [containerStack top]];
	//push iRightButton_ControlCall17 to stack to add innert controls
	[containerStack push:iRightButton_ControlCall17];
	
	//pop iRightButton_ControlCall17
	[containerStack pop];
	[iRightButton_ControlCall17 finilize];
	[[containerStack top] addBodyControl:iRightButton_ControlCall17];
	[[Scope instance] exitScope];
	
	//pop iHeader_ControlCall16
	[containerStack pop];
	[iHeader_ControlCall16 finilize];
	[[containerStack top] addBodyControl:iHeader_ControlCall16];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred132 = [[BindableObject alloc] initWithValue: @"binding text"];
	[[Scope instance] set:@"input" variable:VarDeclInferred132];
	BindableObject* VarDeclInferred133 = [[BindableObject alloc] initWithValue: @"Input"];
	[[Scope instance] set:@"tmp362" variable:VarDeclInferred133];
	BindableObject* VarDeclInferred134 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:YES]];
	[[Scope instance] set:@"tmp372" variable:VarDeclInferred134];
	BindableObject* VarDeclInferred135 = [[BindableObject alloc] initWithValue: [NSNumber numberWithBool:NO]];
	[[Scope instance] set:@"tmp371" variable:VarDeclInferred135];
	BindableObject* VarDeclInferred136 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp369" variable:VarDeclInferred136];
	BindableObject* VarDeclInferred137 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp368" variable:VarDeclInferred137];
	BindableObject* VarDeclInferred138 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp367" variable:VarDeclInferred138];
	BindableObject* VarDeclInferred139 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:31]];
	[[Scope instance] set:@"tmp366" variable:VarDeclInferred139];
	BindableObject* VarDeclInferred140 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:100]];
	[[Scope instance] set:@"tmp365" variable:VarDeclInferred140];
	BindableObject* VarDeclInferred141 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp364" variable:VarDeclInferred141];
	BindableObject* VarDeclInferred142 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp363" variable:VarDeclInferred142];
	
	[[Scope instance] createInnerScope];
	//changing iTextField_ControlCall18 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall180 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall180 addObject:[[Scope instance] get: @"tmp363"]];
	[arguments_iTextField_ControlCall180 addObject:[[Scope instance] get: @"tmp364"]];
	[arguments_iTextField_ControlCall180 addObject:[[Scope instance] get: @"tmp365"]];
	[arguments_iTextField_ControlCall180 addObject:[[Scope instance] get: @"tmp366"]];
	[arguments_iTextField_ControlCall180 addObject:[[Scope instance] get: @"tmp367"]];
	[arguments_iTextField_ControlCall180 addObject:[[Scope instance] get: @"tmp368"]];
	[arguments_iTextField_ControlCall180 addObject:[[Scope instance] get: @"input"]];
	[arguments_iTextField_ControlCall180 addObject:[[Scope instance] get: @"tmp369"]];
	[arguments_iTextField_ControlCall180 addObject:[[Scope instance] get: @"tmp362"]];
	[arguments_iTextField_ControlCall180 addObject:[[Scope instance] get: @"tmp371"]];
	[arguments_iTextField_ControlCall180 addObject:[[Scope instance] get: @"tmp372"]];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall18 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall180 container: [containerStack top]];
	//push iTextField_ControlCall18 to stack to add innert controls
	[containerStack push:iTextField_ControlCall18];
	
	//pop iTextField_ControlCall18
	[containerStack pop];
	[iTextField_ControlCall18 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall18];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred143 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp432" variable:VarDeclInferred143];
	BindableObject* VarDeclInferred144 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp431" variable:VarDeclInferred144];
	BindableObject* VarDeclInferred145 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1004]];
	[[Scope instance] set:@"tmp429" variable:VarDeclInferred145];
	BindableObject* VarDeclInferred146 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:768]];
	[[Scope instance] set:@"tmp428" variable:VarDeclInferred146];
	BindableObject* VarDeclInferred147 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp427" variable:VarDeclInferred147];
	BindableObject* VarDeclInferred148 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp426" variable:VarDeclInferred148];
	
	[[Scope instance] createInnerScope];
	//changing iTable_ControlCall19 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall190 = [[NSMutableArray alloc] init];
	
	[arguments_iTable_ControlCall190 addObject:[[Scope instance] get: @"tmp426"]];
	[arguments_iTable_ControlCall190 addObject:[[Scope instance] get: @"tmp427"]];
	[arguments_iTable_ControlCall190 addObject:[[Scope instance] get: @"tmp428"]];
	[arguments_iTable_ControlCall190 addObject:[[Scope instance] get: @"tmp429"]];
	[arguments_iTable_ControlCall190 addObject:[[Scope instance] get: @"tmp431"]];
	[arguments_iTable_ControlCall190 addObject:[[Scope instance] get: @"tmp432"]];
	
	//initializing [varName] control
	iTable* iTable_ControlCall19 = [[iTable alloc] initialize:arguments_iTable_ControlCall190 container: [containerStack top]];
	//push iTable_ControlCall19 to stack to add innert controls
	[containerStack push:iTable_ControlCall19];
	BindableObject* VarDeclInferred149 = [[BindableObject alloc] initWithValue: @"General Info"];
	[[Scope instance] set:@"tmp393" variable:VarDeclInferred149];
	BindableObject* VarDeclInferred150 = [[BindableObject alloc] initWithValue: @"Section"];
	[[Scope instance] set:@"tmp399" variable:VarDeclInferred150];
	BindableObject* VarDeclInferred151 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp398" variable:VarDeclInferred151];
	BindableObject* VarDeclInferred152 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp397" variable:VarDeclInferred152];
	BindableObject* VarDeclInferred153 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp396" variable:VarDeclInferred153];
	BindableObject* VarDeclInferred154 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp395" variable:VarDeclInferred154];
	BindableObject* VarDeclInferred155 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp394" variable:VarDeclInferred155];
	
	[[Scope instance] createInnerScope];
	//changing iSection_ControlCall20 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall200 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall200 addObject:[[Scope instance] get: @"tmp393"]];
	[arguments_iSection_ControlCall200 addObject:[[Scope instance] get: @"tmp394"]];
	[arguments_iSection_ControlCall200 addObject:[[Scope instance] get: @"tmp395"]];
	[arguments_iSection_ControlCall200 addObject:[[Scope instance] get: @"tmp396"]];
	[arguments_iSection_ControlCall200 addObject:[[Scope instance] get: @"tmp397"]];
	[arguments_iSection_ControlCall200 addObject:[[Scope instance] get: @"tmp398"]];
	[arguments_iSection_ControlCall200 addObject:[[Scope instance] get: @"tmp399"]];
	
	//initializing [varName] control
	iSection* iSection_ControlCall20 = [[iSection alloc] initialize:arguments_iSection_ControlCall200 container: [containerStack top]];
	//push iSection_ControlCall20 to stack to add innert controls
	[containerStack push:iSection_ControlCall20];
	BindableObject* VarDeclInferred156 = [[BindableObject alloc] initWithValue: @"John"];
	[[Scope instance] set:@"tmp374" variable:VarDeclInferred156];
	BindableObject* VarDeclInferred157 = [[BindableObject alloc] initWithValue: @"FirstName"];
	[[Scope instance] set:@"tmp373" variable:VarDeclInferred157];
	BindableObject* VarDeclInferred158 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp382" variable:VarDeclInferred158];
	BindableObject* VarDeclInferred159 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp381" variable:VarDeclInferred159];
	BindableObject* VarDeclInferred160 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp379" variable:VarDeclInferred160];
	BindableObject* VarDeclInferred161 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:37]];
	[[Scope instance] set:@"tmp378" variable:VarDeclInferred161];
	BindableObject* VarDeclInferred162 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:768]];
	[[Scope instance] set:@"tmp377" variable:VarDeclInferred162];
	BindableObject* VarDeclInferred163 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp376" variable:VarDeclInferred163];
	BindableObject* VarDeclInferred164 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp375" variable:VarDeclInferred164];
	
	[[Scope instance] createInnerScope];
	//changing iItemText_ControlCall21 arguments to an array
	
	NSMutableArray* arguments_iItemText_ControlCall210 = [[NSMutableArray alloc] init];
	
	[arguments_iItemText_ControlCall210 addObject:[[Scope instance] get: @"tmp375"]];
	[arguments_iItemText_ControlCall210 addObject:[[Scope instance] get: @"tmp376"]];
	[arguments_iItemText_ControlCall210 addObject:[[Scope instance] get: @"tmp377"]];
	[arguments_iItemText_ControlCall210 addObject:[[Scope instance] get: @"tmp378"]];
	[arguments_iItemText_ControlCall210 addObject:[[Scope instance] get: @"tmp379"]];
	[arguments_iItemText_ControlCall210 addObject:[[Scope instance] get: @"tmp381"]];
	[arguments_iItemText_ControlCall210 addObject:[[Scope instance] get: @"tmp382"]];
	[arguments_iItemText_ControlCall210 addObject:[[Scope instance] get: @"tmp374"]];
	[arguments_iItemText_ControlCall210 addObject:[[Scope instance] get: @"tmp373"]];
	
	//initializing [varName] control
	iItemText* iItemText_ControlCall21 = [[iItemText alloc] initialize:arguments_iItemText_ControlCall210 container: [containerStack top]];
	//push iItemText_ControlCall21 to stack to add innert controls
	[containerStack push:iItemText_ControlCall21];
	
	//pop iItemText_ControlCall21
	[containerStack pop];
	[iItemText_ControlCall21 finilize];
	[[containerStack top] addBodyControl:iItemText_ControlCall21];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred165 = [[BindableObject alloc] initWithValue: @"Smith"];
	[[Scope instance] set:@"tmp384" variable:VarDeclInferred165];
	BindableObject* VarDeclInferred166 = [[BindableObject alloc] initWithValue: @"LastName"];
	[[Scope instance] set:@"tmp383" variable:VarDeclInferred166];
	BindableObject* VarDeclInferred167 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp392" variable:VarDeclInferred167];
	BindableObject* VarDeclInferred168 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp391" variable:VarDeclInferred168];
	BindableObject* VarDeclInferred169 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp389" variable:VarDeclInferred169];
	BindableObject* VarDeclInferred170 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:37]];
	[[Scope instance] set:@"tmp388" variable:VarDeclInferred170];
	BindableObject* VarDeclInferred171 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:768]];
	[[Scope instance] set:@"tmp387" variable:VarDeclInferred171];
	BindableObject* VarDeclInferred172 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp386" variable:VarDeclInferred172];
	BindableObject* VarDeclInferred173 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp385" variable:VarDeclInferred173];
	
	[[Scope instance] createInnerScope];
	//changing iItemText_ControlCall22 arguments to an array
	
	NSMutableArray* arguments_iItemText_ControlCall220 = [[NSMutableArray alloc] init];
	
	[arguments_iItemText_ControlCall220 addObject:[[Scope instance] get: @"tmp385"]];
	[arguments_iItemText_ControlCall220 addObject:[[Scope instance] get: @"tmp386"]];
	[arguments_iItemText_ControlCall220 addObject:[[Scope instance] get: @"tmp387"]];
	[arguments_iItemText_ControlCall220 addObject:[[Scope instance] get: @"tmp388"]];
	[arguments_iItemText_ControlCall220 addObject:[[Scope instance] get: @"tmp389"]];
	[arguments_iItemText_ControlCall220 addObject:[[Scope instance] get: @"tmp391"]];
	[arguments_iItemText_ControlCall220 addObject:[[Scope instance] get: @"tmp392"]];
	[arguments_iItemText_ControlCall220 addObject:[[Scope instance] get: @"tmp384"]];
	[arguments_iItemText_ControlCall220 addObject:[[Scope instance] get: @"tmp383"]];
	
	//initializing [varName] control
	iItemText* iItemText_ControlCall22 = [[iItemText alloc] initialize:arguments_iItemText_ControlCall220 container: [containerStack top]];
	//push iItemText_ControlCall22 to stack to add innert controls
	[containerStack push:iItemText_ControlCall22];
	
	//pop iItemText_ControlCall22
	[containerStack pop];
	[iItemText_ControlCall22 finilize];
	[[containerStack top] addBodyControl:iItemText_ControlCall22];
	[[Scope instance] exitScope];
	
	//pop iSection_ControlCall20
	[containerStack pop];
	[iSection_ControlCall20 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall20];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred174 = [[BindableObject alloc] initWithValue: @"Education"];
	[[Scope instance] set:@"tmp418" variable:VarDeclInferred174];
	BindableObject* VarDeclInferred175 = [[BindableObject alloc] initWithValue: @"Section"];
	[[Scope instance] set:@"tmp425" variable:VarDeclInferred175];
	BindableObject* VarDeclInferred176 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp424" variable:VarDeclInferred176];
	BindableObject* VarDeclInferred177 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp423" variable:VarDeclInferred177];
	BindableObject* VarDeclInferred178 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp422" variable:VarDeclInferred178];
	BindableObject* VarDeclInferred179 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp421" variable:VarDeclInferred179];
	BindableObject* VarDeclInferred180 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp419" variable:VarDeclInferred180];
	
	[[Scope instance] createInnerScope];
	//changing iSection_ControlCall23 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall230 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall230 addObject:[[Scope instance] get: @"tmp418"]];
	[arguments_iSection_ControlCall230 addObject:[[Scope instance] get: @"tmp419"]];
	[arguments_iSection_ControlCall230 addObject:[[Scope instance] get: @"tmp421"]];
	[arguments_iSection_ControlCall230 addObject:[[Scope instance] get: @"tmp422"]];
	[arguments_iSection_ControlCall230 addObject:[[Scope instance] get: @"tmp423"]];
	[arguments_iSection_ControlCall230 addObject:[[Scope instance] get: @"tmp424"]];
	[arguments_iSection_ControlCall230 addObject:[[Scope instance] get: @"tmp425"]];
	
	//initializing [varName] control
	iSection* iSection_ControlCall23 = [[iSection alloc] initialize:arguments_iSection_ControlCall230 container: [containerStack top]];
	//push iSection_ControlCall23 to stack to add innert controls
	[containerStack push:iSection_ControlCall23];
	BindableObject* VarDeclInferred181 = [[BindableObject alloc] initWithValue: @"TUDelft"];
	[[Scope instance] set:@"tmp401" variable:VarDeclInferred181];
	BindableObject* VarDeclInferred182 = [[BindableObject alloc] initWithValue: @"University"];
	[[Scope instance] set:@"tmp400" variable:VarDeclInferred182];
	BindableObject* VarDeclInferred183 = [[BindableObject alloc] initWithValue: @""];
	[[Scope instance] set:@"tmp408" variable:VarDeclInferred183];
	BindableObject* VarDeclInferred184 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp407" variable:VarDeclInferred184];
	BindableObject* VarDeclInferred185 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp406" variable:VarDeclInferred185];
	BindableObject* VarDeclInferred186 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:37]];
	[[Scope instance] set:@"tmp405" variable:VarDeclInferred186];
	BindableObject* VarDeclInferred187 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:768]];
	[[Scope instance] set:@"tmp404" variable:VarDeclInferred187];
	BindableObject* VarDeclInferred188 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp403" variable:VarDeclInferred188];
	BindableObject* VarDeclInferred189 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp402" variable:VarDeclInferred189];
	
	[[Scope instance] createInnerScope];
	//changing iItemText_ControlCall24 arguments to an array
	
	NSMutableArray* arguments_iItemText_ControlCall240 = [[NSMutableArray alloc] init];
	
	[arguments_iItemText_ControlCall240 addObject:[[Scope instance] get: @"tmp402"]];
	[arguments_iItemText_ControlCall240 addObject:[[Scope instance] get: @"tmp403"]];
	[arguments_iItemText_ControlCall240 addObject:[[Scope instance] get: @"tmp404"]];
	[arguments_iItemText_ControlCall240 addObject:[[Scope instance] get: @"tmp405"]];
	[arguments_iItemText_ControlCall240 addObject:[[Scope instance] get: @"tmp406"]];
	[arguments_iItemText_ControlCall240 addObject:[[Scope instance] get: @"tmp407"]];
	[arguments_iItemText_ControlCall240 addObject:[[Scope instance] get: @"tmp408"]];
	[arguments_iItemText_ControlCall240 addObject:[[Scope instance] get: @"tmp401"]];
	[arguments_iItemText_ControlCall240 addObject:[[Scope instance] get: @"tmp400"]];
	
	//initializing [varName] control
	iItemText* iItemText_ControlCall24 = [[iItemText alloc] initialize:arguments_iItemText_ControlCall240 container: [containerStack top]];
	//push iItemText_ControlCall24 to stack to add innert controls
	[containerStack push:iItemText_ControlCall24];
	
	//pop iItemText_ControlCall24
	[containerStack pop];
	[iItemText_ControlCall24 finilize];
	[[containerStack top] addBodyControl:iItemText_ControlCall24];
	[[Scope instance] exitScope];
	BindableObject* VarDeclInferred190 = [[BindableObject alloc] initWithValue: @"MSc"];
	[[Scope instance] set:@"tmp411" variable:VarDeclInferred190];
	BindableObject* VarDeclInferred191 = [[BindableObject alloc] initWithValue: @"Degree"];
	[[Scope instance] set:@"tmp409" variable:VarDeclInferred191];
	BindableObject* VarDeclInferred192 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:2]];
	[[Scope instance] set:@"tmp417" variable:VarDeclInferred192];
	BindableObject* VarDeclInferred193 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:1]];
	[[Scope instance] set:@"tmp416" variable:VarDeclInferred193];
	BindableObject* VarDeclInferred194 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:37]];
	[[Scope instance] set:@"tmp415" variable:VarDeclInferred194];
	BindableObject* VarDeclInferred195 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:768]];
	[[Scope instance] set:@"tmp414" variable:VarDeclInferred195];
	BindableObject* VarDeclInferred196 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp413" variable:VarDeclInferred196];
	BindableObject* VarDeclInferred197 = [[BindableObject alloc] initWithValue: [NSNumber numberWithInt:-1]];
	[[Scope instance] set:@"tmp412" variable:VarDeclInferred197];
	
	[[Scope instance] createInnerScope];
	//changing iItemText_ControlCall25 arguments to an array
	
	NSMutableArray* arguments_iItemText_ControlCall250 = [[NSMutableArray alloc] init];
	
	[arguments_iItemText_ControlCall250 addObject:[[Scope instance] get: @"tmp412"]];
	[arguments_iItemText_ControlCall250 addObject:[[Scope instance] get: @"tmp413"]];
	[arguments_iItemText_ControlCall250 addObject:[[Scope instance] get: @"tmp414"]];
	[arguments_iItemText_ControlCall250 addObject:[[Scope instance] get: @"tmp415"]];
	[arguments_iItemText_ControlCall250 addObject:[[Scope instance] get: @"tmp416"]];
	[arguments_iItemText_ControlCall250 addObject:[[Scope instance] get: @"tmp417"]];
	[arguments_iItemText_ControlCall250 addObject:[[Scope instance] get: @"input"]];
	[arguments_iItemText_ControlCall250 addObject:[[Scope instance] get: @"tmp411"]];
	[arguments_iItemText_ControlCall250 addObject:[[Scope instance] get: @"tmp409"]];
	
	//initializing [varName] control
	iItemText* iItemText_ControlCall25 = [[iItemText alloc] initialize:arguments_iItemText_ControlCall250 container: [containerStack top]];
	//push iItemText_ControlCall25 to stack to add innert controls
	[containerStack push:iItemText_ControlCall25];
	
	//pop iItemText_ControlCall25
	[containerStack pop];
	[iItemText_ControlCall25 finilize];
	[[containerStack top] addBodyControl:iItemText_ControlCall25];
	[[Scope instance] exitScope];
	
	//pop iSection_ControlCall23
	[containerStack pop];
	[iSection_ControlCall23 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall23];
	[[Scope instance] exitScope];
	
	//pop iTable_ControlCall19
	[containerStack pop];
	[iTable_ControlCall19 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall19];
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
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
@interface Callbacktmp346 : Callback {
}
@end

@implementation Callbacktmp346

-(void) action: (id)sender
{
	[[Scope instance] createInnerScope];
	
	[[Scope instance] exitScope];
}
@end


