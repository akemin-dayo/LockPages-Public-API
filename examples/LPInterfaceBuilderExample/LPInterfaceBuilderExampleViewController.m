#import "LPInterfaceBuilderExampleViewController.h"

#define NSLog(LogContents, ...) NSLog((@"LPInterfaceBuilderExample: %s:%d " LogContents), __FUNCTION__, __LINE__, ##__VA_ARGS__)

@implementation LPInterfaceBuilderExampleViewController
-(id) init {
	self = [super init];
	if (self) {
		_ibView = [[[NSBundle bundleWithPath:@"/Library/Application Support/LPInterfaceBuilderExample"] loadNibNamed:@"LPBarebonesExampleView" owner:self options:nil] objectAtIndex:0];
		[self setView:_ibView];
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
	return 10;
}
@end