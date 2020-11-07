//
//  PSingeltonController.m
//  iOSPattern
//
//  Created by Peace on 11/7/20.
//

#import "PSingeltonController.h"

#import "PSingelton.h"
#import "PSubSingelton.h"

@interface PSingeltonController ()

@end

@implementation PSingeltonController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.model appendOpenedHeader:@"定义/特性："];
    [self.model appendDarkItemWithTitle:@"保证一个类只有一个实例，并且提供一个全局访问点"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"主要解决：一个全局使用的类频繁地创建与销毁"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"何时使用：当您想控制实例数目，节省系统资源的时候"
                                  class:[UIViewController class]];
    
    [self.model appendOpenedHeader:@"优点："];
    [self.model appendDarkItemWithTitle:@"在内存里只有一个实例，减少了内存的开销，尤其是频繁的创建和销毁实例"
                                  class:[UIViewController class]];
    
    [self.model appendOpenedHeader:@"缺点："];
    [self.model appendDarkItemWithTitle:@"不能被继承" class:[UIViewController class]];
    
    [self.model appendOpenedHeader:@"单例测试："];
    [self.model appendDarkItemTitle:@"sharedInstance测试" target:self selector:@selector(todo)];
    [self.model appendDarkItemTitle:@"sharedInstance线程安全测试" target:self selector:@selector(todo2)];
    
    [self.model appendOpenedHeader:@"子类测试："];
    [self.model appendDarkItemTitle:@"初始化子类" target:self selector:@selector(subsingeltonAlloc)];
    [self.model appendDarkItemTitle:@"调用子类方法" target:self selector:@selector(subsingeltonMethod)];
}

- (void)todo {
    PSingelton *singelton = [PSingelton sharedInstance];
    [singelton test];
    NSLog(@"%@",singelton);
}

- (void)todo2 {
    for (int i=0; i<100; i++) {
        dispatch_async(dispatch_queue_create("xxxx", DISPATCH_QUEUE_CONCURRENT), ^{
            PSingelton *singelton = [PSingelton sharedInstance];
            NSLog(@"%@",singelton);
        });
    }
}

- (void)subsingeltonAlloc {
    PSubSingelton *subSingelton = [PSubSingelton sharedInstance];
    NSLog(@"%@",subSingelton);
}

- (void)subsingeltonMethod {
    PSubSingelton *subSingelton = [PSubSingelton sharedInstance];
    NSLog(@"%@",subSingelton);
    [subSingelton subTest];
}

@end
