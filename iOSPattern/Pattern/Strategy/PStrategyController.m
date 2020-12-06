//
//  PStrategyController.m
//  iOSPattern
//
//  Created by Peace on 11/29/20.
//

#import "PStrategyController.h"

#import "SContext.h"

@interface PStrategyController ()

@end

@implementation PStrategyController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.model appendOpenedHeader:@"Strategy/策略:"];
    [self.model appendDarkItemWithTitle:@"将一系列的算法单独封装起来，使调用者在使用的时候，可以互相替换。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemTitle:@"1.对象封装" target:self selector:@selector(todo)];
    [self.model appendDarkItemTitle:@"2.方法封装" target:self selector:@selector(todo2)];
}

- (void)todo2 {
    SContext *context = [[SContext alloc] initWithStrategy:[OperationAdd new]];
    [context executeOperation:2 :4];
    
    context = [[SContext alloc] initWithStrategy:[OperationSubtract new]];
    [context executeOperation:2 :4];
    
    context = [[SContext alloc] initWithStrategy:[OperationMultiply new]];
    [context executeOperation:2 :4];
}

@end
