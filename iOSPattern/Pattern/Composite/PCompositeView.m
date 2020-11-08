//
//  PCompositeView.m
//  iOSPattern
//
//  Created by Peace on 11/8/20.
//

#import "PCompositeView.h"

@interface PCompositeView ()
{
    UIView *_leftView;
    UILabel *_leftOneLabel;
    UILabel *_leftTwoLabel;
    UILabel *_leftThreeLabel;
    
    UIView *_rightView;
    UILabel *_rightOneLabel;
    UILabel *_rightTwoLabel;
}
@end

@implementation PCompositeView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        _leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width/2, frame.size.height)];
        _leftView.backgroundColor = [UIColor brownColor];
        [self addSubview:_leftView];
        
        _leftOneLabel = [[UILabel alloc] initWithFrame:
                         CGRectMake(0, 0, _leftView.frame.size.width/3, _leftView.frame.size.height)];
        _leftOneLabel.text = @"1";
        _leftOneLabel.textColor = [UIColor whiteColor];
        [_leftView addSubview:_leftOneLabel];
        
        _leftTwoLabel = [[UILabel alloc] initWithFrame:
                         CGRectMake(_leftView.frame.size.width/3, 0, _leftView.frame.size.width/3, _leftView.frame.size.height)];
        _leftTwoLabel.text = @"2";
        _leftTwoLabel.textColor = [UIColor systemPinkColor];
        [_leftView addSubview:_leftTwoLabel];
        
        _leftThreeLabel = [[UILabel alloc] initWithFrame:
                         CGRectMake(_leftView.frame.size.width/3*2, 0, _leftView.frame.size.width/3, _leftView.frame.size.height)];
        _leftThreeLabel.text = @"3";
        _leftThreeLabel.textColor = [UIColor orangeColor];
        [_leftView addSubview:_leftThreeLabel];
        
        _rightView = [[UIView alloc] initWithFrame:CGRectMake(frame.size.width/2, 0, frame.size.width/2, frame.size.height)];
        _rightView.backgroundColor = [UIColor purpleColor];
        [self addSubview:_rightView];
        
        _rightOneLabel = [[UILabel alloc] initWithFrame:
                         CGRectMake(0, 0, _rightView.frame.size.width/2, _rightView.frame.size.height)];
        _rightOneLabel.text = @"1";
        _rightOneLabel.textColor = [UIColor grayColor];
        [_leftView addSubview:_rightOneLabel];
        
        _rightTwoLabel = [[UILabel alloc] initWithFrame:
                         CGRectMake(_rightView.frame.size.width/2, 0, _rightView.frame.size.width/2, _leftView.frame.size.height)];
        _rightTwoLabel.text = @"2";
        _rightTwoLabel.textColor = [UIColor greenColor];
        [_leftView addSubview:_rightTwoLabel];
    }
    
    return self;
}

@end
