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
    
    [self.model appendOpenedHeader:@"定义："];
    [self.model appendDarkItemWithTitle:@"组成一个树形结构的聚合对象，使整个结构可以作为一个统一的抽象结构使用，而不暴露其内部的表示。" class:[UIViewController class]];
}

@end
