
#import "Application.h"
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"
#import "iView.h"
#import "Context.h"
#import "iTable.h"
#import "iItem.h"
#import "iTextField.h"
#import "iButton.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iSection.h"
#import "iLeftButton.h"


NSString* helloWorld()
{
	return NULL;
}

@implementation Application
@synthesize window;


id myText;
id tmp1299;

id title;
id tmp1296;

id tmp1298;
id tmp1297;

id tmp1301;
id tmp1300;





id tmp1302;

id tmp1306;

id tmp1303;

id tmp1304;

id tmp1305;

-(void) root
{
	NSString* t = helloWorld();
	iView *aView = [Context getView:@"root"];
	if (aView != NULL)
	{
		[Context bringToFront:aView];
		return;
	}
	aView = [[iView alloc] init];
	[aView initialize:NULL];
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:aView.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc] init];
	[containerStack push:aView];
	
	myText = [[BindableObject alloc] initWithValue:@"Go"];
	tmp1299 = [[BindableObject alloc] initWithValue:@"MyHeader"];
	//changing iHeader_ControlCall386 arguments to an array
	
	NSMutableArray* arguments_iHeader_ControlCall3860 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_ControlCall3860 addObject:tmp1299];
	
	//initializing [varName] control
	iHeader* iHeader_ControlCall386 = [[iHeader alloc] initialize:arguments_iHeader_ControlCall3860];
	//push iHeader_ControlCall386 to stack to add innert controls
	[containerStack push:iHeader_ControlCall386];
	//push inner element of iHeader_ControlCall386
	
	title = [[BindableObject alloc] initWithValue:@"Next Screen"];
	tmp1296 = [[NSSelector alloc] initWithSelector:@selector(Callback70:) target:self];
	//changing iRightButton_ControlCall387 arguments to an array
	
	NSMutableArray* arguments_iRightButton_ControlCall3870 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_ControlCall3870 addObject:title];
	[arguments_iRightButton_ControlCall3870 addObject:tmp1296];
	
	//initializing [varName] control
	iRightButton* iRightButton_ControlCall387 = [[iRightButton alloc] initialize:arguments_iRightButton_ControlCall3870];
	//push iRightButton_ControlCall387 to stack to add innert controls
	[containerStack push:iRightButton_ControlCall387];
	//push inner element of iRightButton_ControlCall387
	
	//pop iRightButton_ControlCall387
	[containerStack pop];
	[iRightButton_ControlCall387 finilize];
	[[containerStack top] addBodyControl:iRightButton_ControlCall387];
	
	tmp1298 = [[NSSelector alloc] initWithSelector:@selector(Callback71:) target:self];
	tmp1297 = [[BindableObject alloc] initWithValue:@"Third Screen"];
	//changing iLeftButton_ControlCall388 arguments to an array
	
	NSMutableArray* arguments_iLeftButton_ControlCall3880 = [[NSMutableArray alloc] init];
	
	[arguments_iLeftButton_ControlCall3880 addObject:tmp1297];
	[arguments_iLeftButton_ControlCall3880 addObject:tmp1298];
	
	//initializing [varName] control
	iLeftButton* iLeftButton_ControlCall388 = [[iLeftButton alloc] initialize:arguments_iLeftButton_ControlCall3880];
	//push iLeftButton_ControlCall388 to stack to add innert controls
	[containerStack push:iLeftButton_ControlCall388];
	//push inner element of iLeftButton_ControlCall388
	
	//pop iLeftButton_ControlCall388
	[containerStack pop];
	[iLeftButton_ControlCall388 finilize];
	[[containerStack top] addBodyControl:iLeftButton_ControlCall388];
	
	//pop iHeader_ControlCall386
	[containerStack pop];
	[iHeader_ControlCall386 finilize];
	[[containerStack top] addBodyControl:iHeader_ControlCall386];
	
	tmp1301 = [[NSSelector alloc] initWithSelector:@selector(Callback72:) target:self];
	tmp1300 = [[BindableObject alloc] initWithValue:@"Go"];
	//changing iButton_ControlCall389 arguments to an array
	
	NSMutableArray* arguments_iButton_ControlCall3890 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_ControlCall3890 addObject:tmp1300];
	[arguments_iButton_ControlCall3890 addObject:tmp1301];
	
	//initializing [varName] control
	iButton* iButton_ControlCall389 = [[iButton alloc] initialize:arguments_iButton_ControlCall3890];
	//push iButton_ControlCall389 to stack to add innert controls
	[containerStack push:iButton_ControlCall389];
	//push inner element of iButton_ControlCall389
	
	//pop iButton_ControlCall389
	[containerStack pop];
	[iButton_ControlCall389 finilize];
	[[containerStack top] addBodyControl:iButton_ControlCall389];
	
	//changing iTextField_ControlCall390 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall3900 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall3900 addObject:myText];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall390 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall3900];
	//push iTextField_ControlCall390 to stack to add innert controls
	[containerStack push:iTextField_ControlCall390];
	//push inner element of iTextField_ControlCall390
	
	//pop iTextField_ControlCall390
	[containerStack pop];
	[iTextField_ControlCall390 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall390];
	
	//changing iTable_ControlCall391 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall3910 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	iTable* iTable_ControlCall391 = [[iTable alloc] initialize:arguments_iTable_ControlCall3910];
	//push iTable_ControlCall391 to stack to add innert controls
	[containerStack push:iTable_ControlCall391];
	//push inner element of iTable_ControlCall391
	
	//changing iSection_ControlCall392 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall3920 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall3920 addObject:myText];
	
	//initializing [varName] control
	iSection* iSection_ControlCall392 = [[iSection alloc] initialize:arguments_iSection_ControlCall3920];
	//push iSection_ControlCall392 to stack to add innert controls
	[containerStack push:iSection_ControlCall392];
	//push inner element of iSection_ControlCall392
	
	//changing iItem_ControlCall393 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall3930 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall3930 addObject:myText];
	
	//initializing [varName] control
	iItem* iItem_ControlCall393 = [[iItem alloc] initialize:arguments_iItem_ControlCall3930];
	//push iItem_ControlCall393 to stack to add innert controls
	[containerStack push:iItem_ControlCall393];
	//push inner element of iItem_ControlCall393
	
	//pop iItem_ControlCall393
	[containerStack pop];
	[iItem_ControlCall393 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall393];
	
	tmp1302 = [[BindableObject alloc] initWithValue:@"Nima"];
	//changing iItem_ControlCall394 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall3940 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall3940 addObject:tmp1302];
	
	//initializing [varName] control
	iItem* iItem_ControlCall394 = [[iItem alloc] initialize:arguments_iItem_ControlCall3940];
	//push iItem_ControlCall394 to stack to add innert controls
	[containerStack push:iItem_ControlCall394];
	//push inner element of iItem_ControlCall394
	
	//pop iItem_ControlCall394
	[containerStack pop];
	[iItem_ControlCall394 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall394];
	
	//pop iSection_ControlCall392
	[containerStack pop];
	[iSection_ControlCall392 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall392];
	
	tmp1306 = [[BindableObject alloc] initWithValue:@"Second Section"];
	//changing iSection_ControlCall395 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall3950 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall3950 addObject:tmp1306];
	
	//initializing [varName] control
	iSection* iSection_ControlCall395 = [[iSection alloc] initialize:arguments_iSection_ControlCall3950];
	//push iSection_ControlCall395 to stack to add innert controls
	[containerStack push:iSection_ControlCall395];
	//push inner element of iSection_ControlCall395
	
	tmp1303 = [[BindableObject alloc] initWithValue:@"Zef"];
	//changing iItem_ControlCall396 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall3960 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall3960 addObject:tmp1303];
	
	//initializing [varName] control
	iItem* iItem_ControlCall396 = [[iItem alloc] initialize:arguments_iItem_ControlCall3960];
	//push iItem_ControlCall396 to stack to add innert controls
	[containerStack push:iItem_ControlCall396];
	//push inner element of iItem_ControlCall396
	
	//pop iItem_ControlCall396
	[containerStack pop];
	[iItem_ControlCall396 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall396];
	
	tmp1304 = [[BindableObject alloc] initWithValue:@"Eelco"];
	//changing iItem_ControlCall397 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall3970 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall3970 addObject:tmp1304];
	
	//initializing [varName] control
	iItem* iItem_ControlCall397 = [[iItem alloc] initialize:arguments_iItem_ControlCall3970];
	//push iItem_ControlCall397 to stack to add innert controls
	[containerStack push:iItem_ControlCall397];
	//push inner element of iItem_ControlCall397
	
	//pop iItem_ControlCall397
	[containerStack pop];
	[iItem_ControlCall397 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall397];
	
	tmp1305 = [[BindableObject alloc] initWithValue:@"Danny"];
	//changing iItem_ControlCall398 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall3980 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall3980 addObject:tmp1305];
	
	//initializing [varName] control
	iItem* iItem_ControlCall398 = [[iItem alloc] initialize:arguments_iItem_ControlCall3980];
	//push iItem_ControlCall398 to stack to add innert controls
	[containerStack push:iItem_ControlCall398];
	//push inner element of iItem_ControlCall398
	
	//pop iItem_ControlCall398
	[containerStack pop];
	[iItem_ControlCall398 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall398];
	
	//pop iSection_ControlCall395
	[containerStack pop];
	[iSection_ControlCall395 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall395];
	
	//pop iTable_ControlCall391
	[containerStack pop];
	[iTable_ControlCall391 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall391];
	
	//pop screen
	[containerStack pop];
	//navigation stack handling
	
	[Context addView:aView withName:@"root"];
	if (Context.rootView != NULL)
		[[Context rootView].viewController.navigationController pushViewController:aView.viewController animated:YES];
	
	else 
	{
		Context.rootView = [aView retain];
		[aView release];
	}
	
}


id tmp1309;

id tmp1308;
id tmp1307;

id tmp1311;
id tmp1310;

id tmp1312;


id tmp1313;

id tmp1314;

id tmp1315;

-(void) nextScreen
{
	iView *aView = [Context getView:@"nextScreen"];
	if (aView != NULL)
	{
		[Context bringToFront:aView];
		return;
	}
	aView = [[iView alloc] init];
	[aView initialize:NULL];
	
	NSStack* containerStack = [[NSStack alloc] init];
	[containerStack push:aView];
	
	tmp1309 = [[BindableObject alloc] initWithValue:@"My Second Header"];
	//changing iHeader_ControlCall399 arguments to an array
	
	NSMutableArray* arguments_iHeader_ControlCall3990 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_ControlCall3990 addObject:tmp1309];
	
	//initializing [varName] control
	iHeader* iHeader_ControlCall399 = [[iHeader alloc] initialize:arguments_iHeader_ControlCall3990];
	//push iHeader_ControlCall399 to stack to add innert controls
	[containerStack push:iHeader_ControlCall399];
	//push inner element of iHeader_ControlCall399
	
	tmp1308 = [[NSSelector alloc] initWithSelector:@selector(Callback73:) target:self];
	tmp1307 = [[BindableObject alloc] initWithValue:@"Third Screen"];
	//changing iRightButton_ControlCall400 arguments to an array
	
	NSMutableArray* arguments_iRightButton_ControlCall4000 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_ControlCall4000 addObject:tmp1307];
	[arguments_iRightButton_ControlCall4000 addObject:tmp1308];
	
	//initializing [varName] control
	iRightButton* iRightButton_ControlCall400 = [[iRightButton alloc] initialize:arguments_iRightButton_ControlCall4000];
	//push iRightButton_ControlCall400 to stack to add innert controls
	[containerStack push:iRightButton_ControlCall400];
	//push inner element of iRightButton_ControlCall400
	
	//pop iRightButton_ControlCall400
	[containerStack pop];
	[iRightButton_ControlCall400 finilize];
	[[containerStack top] addBodyControl:iRightButton_ControlCall400];
	
	//pop iHeader_ControlCall399
	[containerStack pop];
	[iHeader_ControlCall399 finilize];
	[[containerStack top] addBodyControl:iHeader_ControlCall399];
	
	tmp1311 = [[NSSelector alloc] initWithSelector:@selector(Callback74:) target:self];
	tmp1310 = [[BindableObject alloc] initWithValue:@"Go"];
	//changing iButton_ControlCall401 arguments to an array
	
	NSMutableArray* arguments_iButton_ControlCall4010 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_ControlCall4010 addObject:tmp1310];
	[arguments_iButton_ControlCall4010 addObject:tmp1311];
	
	//initializing [varName] control
	iButton* iButton_ControlCall401 = [[iButton alloc] initialize:arguments_iButton_ControlCall4010];
	//push iButton_ControlCall401 to stack to add innert controls
	[containerStack push:iButton_ControlCall401];
	//push inner element of iButton_ControlCall401
	
	//pop iButton_ControlCall401
	[containerStack pop];
	[iButton_ControlCall401 finilize];
	[[containerStack top] addBodyControl:iButton_ControlCall401];
	
	tmp1312 = [[BindableObject alloc] initWithValue:@"Hello"];
	//changing iTextField_ControlCall402 arguments to an array
	
	NSMutableArray* arguments_iTextField_ControlCall4020 = [[NSMutableArray alloc] init];
	
	[arguments_iTextField_ControlCall4020 addObject:tmp1312];
	
	//initializing [varName] control
	iTextField* iTextField_ControlCall402 = [[iTextField alloc] initialize:arguments_iTextField_ControlCall4020];
	//push iTextField_ControlCall402 to stack to add innert controls
	[containerStack push:iTextField_ControlCall402];
	//push inner element of iTextField_ControlCall402
	
	//pop iTextField_ControlCall402
	[containerStack pop];
	[iTextField_ControlCall402 finilize];
	[[containerStack top] addBodyControl:iTextField_ControlCall402];
	
	//changing iTable_ControlCall403 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall4030 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	iTable* iTable_ControlCall403 = [[iTable alloc] initialize:arguments_iTable_ControlCall4030];
	//push iTable_ControlCall403 to stack to add innert controls
	[containerStack push:iTable_ControlCall403];
	//push inner element of iTable_ControlCall403
	
	tmp1313 = [[BindableObject alloc] initWithValue:@"Netherlands"];
	//changing iItem_ControlCall404 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall4040 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall4040 addObject:tmp1313];
	
	//initializing [varName] control
	iItem* iItem_ControlCall404 = [[iItem alloc] initialize:arguments_iItem_ControlCall4040];
	//push iItem_ControlCall404 to stack to add innert controls
	[containerStack push:iItem_ControlCall404];
	//push inner element of iItem_ControlCall404
	
	//pop iItem_ControlCall404
	[containerStack pop];
	[iItem_ControlCall404 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall404];
	
	tmp1314 = [[BindableObject alloc] initWithValue:@"France"];
	//changing iItem_ControlCall405 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall4050 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall4050 addObject:tmp1314];
	
	//initializing [varName] control
	iItem* iItem_ControlCall405 = [[iItem alloc] initialize:arguments_iItem_ControlCall4050];
	//push iItem_ControlCall405 to stack to add innert controls
	[containerStack push:iItem_ControlCall405];
	//push inner element of iItem_ControlCall405
	
	//pop iItem_ControlCall405
	[containerStack pop];
	[iItem_ControlCall405 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall405];
	
	tmp1315 = [[BindableObject alloc] initWithValue:@"Italy"];
	//changing iItem_ControlCall406 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall4060 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall4060 addObject:tmp1315];
	
	//initializing [varName] control
	iItem* iItem_ControlCall406 = [[iItem alloc] initialize:arguments_iItem_ControlCall4060];
	//push iItem_ControlCall406 to stack to add innert controls
	[containerStack push:iItem_ControlCall406];
	//push inner element of iItem_ControlCall406
	
	//pop iItem_ControlCall406
	[containerStack pop];
	[iItem_ControlCall406 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall406];
	
	//pop iTable_ControlCall403
	[containerStack pop];
	[iTable_ControlCall403 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall403];
	
	//pop screen
	[containerStack pop];
	//navigation stack handling
	
	[Context addView:aView withName:@"nextScreen"];
	if (Context.rootView != NULL)
		[[Context rootView].viewController.navigationController pushViewController:aView.viewController animated:YES];
	
}



id tmp1316;

id tmp1317;

id tmp1318;

-(void) thirdScreen
{
	iView *aView = [Context getView:@"thirdScreen"];
	if (aView != NULL)
	{
		[Context bringToFront:aView];
		return;
	}
	aView = [[iView alloc] init];
	[aView initialize:NULL];
	
	NSStack* containerStack = [[NSStack alloc] init];
	[containerStack push:aView];
	
	//changing iTable_ControlCall407 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall4070 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	iTable* iTable_ControlCall407 = [[iTable alloc] initialize:arguments_iTable_ControlCall4070];
	//push iTable_ControlCall407 to stack to add innert controls
	[containerStack push:iTable_ControlCall407];
	//push inner element of iTable_ControlCall407
	
	tmp1316 = [[BindableObject alloc] initWithValue:@"Iran"];
	//changing iItem_ControlCall408 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall4080 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall4080 addObject:tmp1316];
	
	//initializing [varName] control
	iItem* iItem_ControlCall408 = [[iItem alloc] initialize:arguments_iItem_ControlCall4080];
	//push iItem_ControlCall408 to stack to add innert controls
	[containerStack push:iItem_ControlCall408];
	//push inner element of iItem_ControlCall408
	
	//pop iItem_ControlCall408
	[containerStack pop];
	[iItem_ControlCall408 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall408];
	
	tmp1317 = [[BindableObject alloc] initWithValue:@"Iraq"];
	//changing iItem_ControlCall409 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall4090 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall4090 addObject:tmp1317];
	
	//initializing [varName] control
	iItem* iItem_ControlCall409 = [[iItem alloc] initialize:arguments_iItem_ControlCall4090];
	//push iItem_ControlCall409 to stack to add innert controls
	[containerStack push:iItem_ControlCall409];
	//push inner element of iItem_ControlCall409
	
	//pop iItem_ControlCall409
	[containerStack pop];
	[iItem_ControlCall409 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall409];
	
	tmp1318 = [[BindableObject alloc] initWithValue:@"Turkey"];
	//changing iItem_ControlCall410 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall4100 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall4100 addObject:tmp1318];
	
	//initializing [varName] control
	iItem* iItem_ControlCall410 = [[iItem alloc] initialize:arguments_iItem_ControlCall4100];
	//push iItem_ControlCall410 to stack to add innert controls
	[containerStack push:iItem_ControlCall410];
	//push inner element of iItem_ControlCall410
	
	//pop iItem_ControlCall410
	[containerStack pop];
	[iItem_ControlCall410 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall410];
	
	//pop iTable_ControlCall407
	[containerStack pop];
	[iTable_ControlCall407 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall407];
	
	//pop screen
	[containerStack pop];
	//navigation stack handling
	
	[Context addView:aView withName:@"thirdScreen"];
	if (Context.rootView != NULL)
		[[Context rootView].viewController.navigationController pushViewController:aView.viewController animated:YES];
	
}


-(void)Callback74:(id)sender{
	
	[self root];
}

-(void)Callback73:(id)sender{
	
	[self thirdScreen];
}

-(void)Callback72:(id)sender{
	
	[self nextScreen];
}

-(void)Callback71:(id)sender{
	
	[self thirdScreen];
}

-(void)Callback70:(id)sender{
	
	[self nextScreen];
}

@end
