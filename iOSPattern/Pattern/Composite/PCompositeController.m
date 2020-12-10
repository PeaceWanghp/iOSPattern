//
//  PCompositeController.m
//  iOSPattern
//
//  Created by Peace on 11/8/20.
//

#import "PCompositeController.h"

@interface PCompositeController ()

@end

@implementation PCompositeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.model appendOpenedHeader:@"组合模式定义："];
    [self.model appendDarkItemWithTitle:@"聚合多个对象组成一个树形结构，使整个结构可以作为一个统一的抽象结构使用，并不暴露其内部的表示。" class:[UIViewController class]];
    
    [self.model appendOpenedHeader:@"实例："];
    [self.model appendDarkItemWithTitle:@"UITableViewCell就是一个组合模式应用" class:[UIViewController class]];
}

@end
