/*
 * LockPages Public API - LPPage-Protocol.h
 * https://cydia.angelxwind.net/?page/com.dba-tech.lockpages
 * https://github.com/angelXwind/LockPages-Public-API
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol LPPage <NSObject>
// The UIView object which will be your page
-(UIView *) view;

// This value determines the order in which your page will appear. Pages are laid out in descending priority order.
-(NSInteger) priority;

@optional
// This method is called when your page begins animating into the view.
-(void) pageWillPresent;

// This method is called when your page finishes animating into the view.
-(void) pageDidPresent;

// This method is called when your page begins animating out of the view.
// It is important to note that this method will be called ONLY if the user has stopped on your page when swiping.
-(void) pageWillDismiss;

// This method is called when your page finishes animating out of the view.
-(void) pageDidDismiss;

// This value overrides the default iOS /lock screen/ idle timer value.
-(CGFloat) idleTimerInterval;

// This value determines whether or not to show the status bar clock on your page. (default value = 1)
-(BOOL) isTimeEnabled;

// This value determines the alpha level of your page's background.
-(CGFloat) backgroundAlpha;
@end