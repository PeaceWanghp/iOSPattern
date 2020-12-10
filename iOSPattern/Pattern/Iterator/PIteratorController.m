//
//  PIteratorController.m
//  iOSPattern
//
//  Created by Peace on 11/8/20.
//

#import "PIteratorController.h"

#import "PCompositeView.h"
#import "PCompositeView+Iterator.h"

@interface PIteratorController ()

@end

@implementation PIteratorController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.model appendOpenedHeader:@"迭代器介绍："];
    [self.model appendDarkItemWithTitle:@"意图：提供一种方法顺序访问一个聚合对象中各个元素, 而无须暴露该对象的内部表示"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"主要解决：不同的方式来遍历整个整合对象"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"何时使用：遍历一个聚合对象。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"如何解决：把在元素之间游走的责任交给迭代器，而不是聚合对象。"
                                  class:[UIViewController class]];
    
    [self.model appendOpenedHeader:@"实例："];
    [self.model appendDarkItemTitle:@"遍历" target:self selector:@selector(todo)];
}

- (void)todo {
    PCompositeView *view = [[PCompositeView alloc] initWithFrame:
                            CGRectMake(0, self.view.frame.size.height-100, self.view.frame.size.width, 100)];
    [self.view addSubview:view];
    
    [view iteratorUsingBlock:^(id  _Nonnull item) {
        NSLog(@"item = %@",item);
    }];
}

@end
