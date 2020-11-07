//
//  PPMarkView.m
//  CocoaPods
//
//  Created by Peace on 10/28/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import "PPMarkView.h"

@implementation PPMarkView

- (id)copyWithZone:(NSZone *)zone {
    PPMarkView *copyMark = [[[self class] allocWithZone:zone] init];
    copyMark.color = self.color;
    copyMark.size = self.size;
    copyMark.location = self.location;
    return copyMark;
}

- (void)setColor:(UIColor *)color {
    _color = color;
}

- (void)setSize:(CGFloat)size {
    _size = size;
}

- (void)setLocation:(CGPoint)location {
    _location = location;
}

@end
