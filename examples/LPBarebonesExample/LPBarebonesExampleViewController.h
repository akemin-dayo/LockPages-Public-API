#import "LPBarebonesExampleView.h"
#import <lockpages/LPPage-Protocol.h>

@interface LPBarebonesExampleViewController : UIViewController <LPPage>
@property (nonatomic, retain) LPBarebonesExampleView *exampleView;
@end