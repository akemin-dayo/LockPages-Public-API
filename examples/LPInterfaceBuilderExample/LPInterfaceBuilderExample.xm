#import <lockpages/LPPage-Protocol.h>
#import <lockpages/LPPageController.h>
#import "LPInterfaceBuilderExampleViewController.h"

%hook SpringBoard
-(instancetype) init {
	LPInterfaceBuilderExampleViewController *_examplePage = [[LPInterfaceBuilderExampleViewController alloc] init];
	[[LPPageController sharedInstance] addPage:_examplePage];
	return %orig();
}
%end