#import "PineappleViewController.h"

#define NSLog(LogContents, ...) NSLog((@"PineappleSpinnerLS: %s:%d " LogContents), __FUNCTION__, __LINE__, ##__VA_ARGS__)

@implementation PineappleViewController
-(id) init {
	self = [super init];
	if (self) {
		_pineappleView = [[PineappleView alloc] initWithFrame:[UIScreen mainScreen].bounds];
		[self setView:_pineappleView];
	}
	return self;
}

-(void) pageWillPresent {
	NSLog(@"pageWillPresent called!");
}

-(void) pageDidPresent {
	NSLog(@"pageDidPresent called!");
}

-(void) pageWillDismiss {
	NSLog(@"pageWillDismiss called!");
}

-(void) pageDidDismiss {
	[_pineappleView reset];
	NSLog(@"pageDidDismiss called!");
}

-(CGFloat) idleTimerInterval {
	return 60;
}

-(BOOL) isTimeEnabled {
	return 1;
}

-(CGFloat) backgroundAlpha {
	return 0.6;
}

-(NSInteger) priority {
	// Using a priority value of -5 because Forecast's priority value is 0
	// This makes it so that Forecast will come before PineappleSpinnerLS in order
	return -5;
}
@end