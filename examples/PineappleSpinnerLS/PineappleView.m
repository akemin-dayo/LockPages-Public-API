#import "PineappleView.h"

@implementation PineappleView
-(id) initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		_pineapple = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Library/PineappleSpinnerLS/pineapple_karen.png"]];
		[_pineapple setFrame:CGRectMake(8, 45, 304, 214)];
		[_pineapple setContentMode:UIViewContentModeScaleAspectFit];

		_statusLabel = [[UILabel alloc] initWithFrame:CGRectMake(8, 267, 304, 30)];
		[_statusLabel setFont:[UIFont systemFontOfSize:28]];
		[_statusLabel setTextColor:[UIColor whiteColor]];
		[_statusLabel setTextAlignment:NSTextAlignmentCenter];

		_startButton = [UIButton buttonWithType:UIButtonTypeSystem];
		[_startButton.titleLabel setFont:[UIFont systemFontOfSize:28]];
		[_startButton setTitleColor:[UIColor colorWithRed:1 green:0.53251156245666109 blue:0.72289450814109069 alpha:1] forState:UIControlStateNormal];
		[_startButton setFrame:CGRectMake(8, 316, 304, 30)];
		[_startButton addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchDown];

		_kasokuButton = [UIButton buttonWithType:UIButtonTypeSystem];
		[_kasokuButton setTitle:@"Accelerate" forState:UIControlStateNormal];
		[_kasokuButton.titleLabel setFont:[UIFont systemFontOfSize:28]];
		[_kasokuButton setTitleColor:[UIColor colorWithRed:1 green:0.53251156245666109 blue:0.72289450814109069 alpha:1] forState:UIControlStateNormal];
		[_kasokuButton setFrame:CGRectMake(8, 354, 304, 30)];
		[_kasokuButton addTarget:self action:@selector(kasoku) forControlEvents:UIControlEventTouchDown];

		[self reset];

		[self addSubview:_pineapple];
		[self addSubview:_statusLabel];
		[self addSubview:_startButton];
		[self addSubview:_kasokuButton];
	}
	return self;
}

-(void) reset {
	_shouldRotatePineapple = 0;
	_kasokuCounter = 0;
	[_kasokuButton setHidden:1];
	[_statusLabel setText:@"hello~"];
	[_startButton setTitle:@"Start Spinning" forState:UIControlStateNormal];
}

-(void) start {
	if (_shouldRotatePineapple) {
		[self reset];
		return;
	}
	[_startButton setTitle:@"Stop Spinning" forState:UIControlStateNormal];
	[_kasokuButton setHidden:0];
	_shouldRotatePineapple = 1;
	[self rotatePineapple];
}

-(void) kasoku {
	_kasokuCounter++;
	switch (_kasokuCounter) {
		case 5:
			[_statusLabel setText:@"why would you do this"];
			break;
		case 10:
			[_statusLabel setText:@"please stop"];
			break;
		case 15:
			[_statusLabel setText:@"you monster"];
			break;
		case 20:
			[_statusLabel setText:@"do you enjoy this"];
			break;
		case 25:
			[_statusLabel setText:@"this is suffering"];
			break;
		case 30:
			[_statusLabel setText:@"what did i do to you"];
			break;
		case 35:
			[_statusLabel setText:@"i'm gonna throw up"];
			break;
		case 40:
			[_statusLabel setText:@"mommy, where are you"];
			break;
		default:
			break;
	}
	[self rotatePineapple];
}

-(void) rotatePineapple {
	[UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveLinear
			animations:^{
				_pineapple.transform = CGAffineTransformMakeRotation(M_PI);
			}
			completion:^(BOOL finished) {
				[UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveLinear
						animations:^{
							_pineapple.transform = CGAffineTransformMakeRotation(0);
						}
						completion:^(BOOL finished) {
							if (_shouldRotatePineapple) {
								[self rotatePineapple];
							}
						}
				 ];
			}
	 ];
}
@end