#import <lockpages/LPPage-Protocol.h>
#import <lockpages/LPPageController.h>
#import "PineappleViewController.h"

%ctor {
	PineappleViewController *_pineapplePage = [[PineappleViewController alloc] init];
	[[LPPageController sharedInstance] addPage:_pineapplePage];
}