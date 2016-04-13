#import <lockpages/LPPage-Protocol.h>
#import <lockpages/LPPageController.h>
#import "LPInterfaceBuilderExampleViewController.h"

%ctor {
	LPInterfaceBuilderExampleViewController *_examplePage = [[LPInterfaceBuilderExampleViewController alloc] init];
	[[LPPageController sharedInstance] addPage:_examplePage];
}