#import "PineappleView.h"
#import <lockpages/LPPage-Protocol.h>

@interface PineappleViewController : UIViewController <LPPage>
@property (nonatomic, retain) PineappleView *pineappleView;
@end