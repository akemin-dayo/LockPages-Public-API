/*
 * LockPages Public API - LPPage-Protocol.h
 * https://cydia.angelxwind.net/?page/com.dba-tech.lockpages
 * https://github.com/angelXwind/LockPages-Public-API
 */

#import <Foundation/Foundation.h>
#import "LPPage-Protocol.h"

@interface LPPageController : NSObject
+(LPPageController *) sharedInstance;
-(void) addPage:(id<LPPage>)page;
@end