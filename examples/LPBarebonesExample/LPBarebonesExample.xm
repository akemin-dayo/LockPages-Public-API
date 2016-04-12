#import <lockpages/LPPage-Protocol.h>
#import <lockpages/LPPageController.h>
#import "LPBarebonesExampleViewController.h"

%ctor {
	LPBarebonesExampleViewController *_examplePage = [[LPBarebonesExampleViewController alloc] init];
	[[LPPageController sharedInstance] addPage:_examplePage];
}