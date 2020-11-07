//
//  PFactoryMethodController.m
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import "PFactoryMethodController.h"

#import "PFMTrainer.h"
#import "PFMMaster.h"
#import "PFMProtector.h"

@interface PFactoryMethodController ()

@end

@implementation PFactoryMethodController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.model appendOpenedHeader:@"介绍:"];
    [self.model appendDarkItemWithTitle:@"工厂方法模式，又称工厂模式、多态工厂模式和虚拟构造器模式，通过定义工厂父类负责定义创建对象的公共接口，而子类则负责生成具体的对象。" class:[UIViewController class]];
    [self.model appendOpenedHeader:@"优点:"];
    [self.model appendDarkItemWithTitle:@"符合开闭原则" class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"符合单一职责原则" class:[UIViewController class]];
    
    [self.model appendOpenedHeader:@"缺点:"];
    [self.model appendDarkItemWithTitle:@"增加新产品时，对应的工厂类也要成对儿增加，给编译、运行、理解上增加了复杂度。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"一个工厂只能创建一种对应产品"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"保证了工厂类的开闭原则，但是保证不了使用工厂类的的扩展修改"
                                  class:[UIViewController class]];
    
    [self.model appendOpenedHeader:@"Feed:"];
    [self.model appendDarkItemTitle:@"Trainer" target:self selector:@selector(todo1)];
    [self.model appendDarkItemTitle:@"Master" target:self selector:@selector(todo2)];
    [self.model appendDarkItemTitle:@"Protector" target:self selector:@selector(todo3)];
}

- (void)todo1 {
    PFMTrainer *trainer = [PFMTrainer new];
    [trainer feed:@"meat"];
}

- (void)todo2 {
    PFMMaster *master = [PFMMaster new];
    [master feed:@"bone"];
}

- (void)todo3 {
    PFMProtector *protector = [PFMProtector new];
    [protector feed:@"fish"];
}

@end
