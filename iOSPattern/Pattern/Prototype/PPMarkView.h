//
//  PPMarkView.h
//  CocoaPods
//
//  Created by Peace on 10/28/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PPMarkView : NSObject <NSCopying>

@property(nonatomic,strong) UIColor *color;
@property(nonatomic,assign) CGFloat size;
@property(nonatomic,assign) CGPoint location;

@end

NS_ASSUME_NONNULL_END
