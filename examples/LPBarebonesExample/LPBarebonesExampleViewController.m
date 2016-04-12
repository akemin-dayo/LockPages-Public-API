#import "LPBarebonesExampleViewController.h"

#define NSLog(LogContents, ...) NSLog((@"LPBarebonesExample: %s:%d " LogContents), __FUNCTION__, __LINE__, ##__VA_ARGS__)

@implementation LPBarebonesExampleViewController
-(id) init {
	self = [super init];
	if (self) {
		_exampleView = [[LPBarebonesExampleView alloc] initWithFrame:[UIScreen mainScreen].bounds];
		[self setView:_exampleView];
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
	return 5;
}
@end