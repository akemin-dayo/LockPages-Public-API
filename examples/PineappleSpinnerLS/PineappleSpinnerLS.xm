#import <lockpages/LPPage-Protocol.h>
#import <lockpages/LPPageController.h>
#import "PineappleViewController.h"

%hook SpringBoard
-(instancetype) init {
	PineappleViewController *_pineapplePage = [[PineappleViewController alloc] init];
	[[LPPageController sharedInstance] addPage:_pineapplePage];
	return %orig();
}
%end