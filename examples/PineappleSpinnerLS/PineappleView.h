#import <UIKit/UIView.h>
#import <lockpages/LPPage-Protocol.h>

@interface PineappleView : UIView
@property (nonatomic, retain) UIImageView *pineapple;
@property (nonatomic, retain) UILabel *statusLabel;
@property (nonatomic, retain) UIButton *startButton;
@property (nonatomic, retain) UIButton *kasokuButton;
@property BOOL shouldRotatePineapple;
@property NSInteger kasokuCounter;
-(void) reset;
@end