//
//  PMediatorController.m
//  iOSPattern
//
//  Created by Peace on 11/8/20.
//

#import "PMediatorController.h"

@interface PMediatorController ()

@end

@implementation PMediatorController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    [self.model appendOpenedHeader:@"介绍："];
    [self.model appendDarkItemWithTitle:@"意图：用一个中介对象来封装一系列的对象交互，中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"对象与对象之间存在大量的关联关系，这样势必会导致系统的结构变得很复杂，同时若一个对象发生改变，我们也需要跟踪与之相关联的对象，同时做出相应的处理。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"何时使用：多个类相互耦合，形成了网状结构。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"应用实例： 1、中国加入 WTO 之前是各个国家相互贸易，结构复杂，现在是各个国家通过 WTO 来互相贸易。 2、机场调度系统。 3、MVC 框架，其中C（控制器）就是 M（模型）和 V（视图）的中介者。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"优点：1、降低了类的复杂度，将一对多转化成了一对一。 2、各个类之间的解耦。 3、符合迪米特原则。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"缺点：中介者会庞大，变得复杂难以维护。"
                                  class:[UIViewController class]];
    
    
    
    
}

@end
