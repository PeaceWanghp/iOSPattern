//
//  PPrototypeController.m
//  CocoaPods
//
//  Created by Peace on 10/19/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import "PPrototypeController.h"

#import "PPMarkView.h"
#include <stdlib.h>

@interface PPrototypeController ()
{
    PPMarkView *_markView;
}
@end

@implementation PPrototypeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.model appendOpenedHeader:@"原型模式："];
    [self.model appendDarkItemTitle:@"Tap" target:self selector:@selector(todo)];
    
    _markView = [[PPMarkView alloc] init];
    _markView.color = [UIColor redColor];
    _markView.size = 20;
    _markView.location = CGPointMake(50, 50);
    [self showMark:_markView];
}

- (void)todo {
    PPMarkView *copyMark = [_markView copy];
    int x = arc4random_uniform(500);
    int y = arc4random_uniform(500);
    CGPoint point = CGPointMake(x, y);
    NSLog(@"point : %@",NSStringFromCGPoint(point));
    copyMark.location = point;
    
    [self showMark:copyMark];
}

- (void)showMark:(PPMarkView *)mark {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(mark.location.x, mark.location.y, mark.size, mark.size)];
    view.backgroundColor = mark.color;
    [self.view addSubview:view];
}

@end
