#import <lockpages/LPPage-Protocol.h>
#import <lockpages/LPPageController.h>
#import "LPBarebonesExampleViewController.h"

%hook SpringBoard
-(instancetype) init {
	LPBarebonesExampleViewController *_examplePage = [[LPBarebonesExampleViewController alloc] init];
	[[LPPageController sharedInstance] addPage:_examplePage];
	return %orig();
}
%end