//
//  ViewController.m
//  iOSPattern
//
//  Created by Peace on 11/6/20.
//

#import "ViewController.h"

//复合模式
#import "AnimalTableViewController.h"
#import "MAnimalsViewController.h"

//建造模式
#import "PPrototypeController.h"
#import "PFactoryMethodController.h"
#import "PAbstractFactoryController.h"
#import "PSingeltonController.h"
//
#import "PMediatorController.h"
#import "PObserverController.h"

#import "PCompositeController.h"
#import "PIteratorController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.model appendOpenedHeader:@"Multi Design Pattern/复合设计模式："];
    [self.model appendDarkItemWithTitle:@"MVC:\nComposite/组合、Command/命令、\nMediator/中介者、Strategy/策略、\nObserver/观察者"
                                  class:[AnimalTableViewController class]];
    [self.model appendDarkItemWithTitle:@"MVVM"
                                  class:[MAnimalsViewController class]];
    [self.model appendItemWithTitle:@"MVP"
                              class:[UIViewController class]];
    
    [self.model appendOpenedHeader:@"Design Pattern/设计模式:"];
    //创建型：
    [self.model appendDarkItemWithTitle:@"Prototype/原型模式" class:[PPrototypeController class]];
    [self.model appendItemWithTitle:@"简单工厂模式" class:[PFactoryMethodController class]];
    [self.model appendDarkItemWithTitle:@"FactoryMethod/工厂方法模式" class:[PFactoryMethodController class]];
    [self.model appendDarkItemWithTitle:@"AbstractFactory/抽象工厂模式" class:[PAbstractFactoryController class]];
    [self.model appendDarkItemWithTitle:@"Singelton/单例模式" class:[PSingeltonController class]];
    [self.model appendItemWithTitle:@"Builder/建造者模式" class:[UIViewController class]];
    
    //对象去耦：
    [self.model appendItemWithTitle:@"Mediator/中介者模式" class:[PMediatorController class]];
    [self.model appendItemWithTitle:@"Observer/观察者模式" class:[PObserverController class]];
    
    //抽象集合：
    [self.model appendDarkItemWithTitle:@"Composite/组合模式" class:[PCompositeController class]];
    [self.model appendDarkItemWithTitle:@"Iterator/迭代器模式" class:[PIteratorController class]];
    
    //算法封装：
    [self.model appendItemWithTitle:@"策略模式" class:[UIViewController class]];
    [self.model appendItemWithTitle:@"命令模式" class:[UIViewController class]];
    [self.model appendItemWithTitle:@"模板方法模式" class:[UIViewController class]];
    
    //接口适配：
    [self.model appendItemWithTitle:@"适配器模式" class:[UIViewController class]];
    [self.model appendItemWithTitle:@"桥接模式" class:[UIViewController class]];
    [self.model appendItemWithTitle:@"外观模式" class:[UIViewController class]];
    
    //行为扩展：
    [self.model appendItemWithTitle:@"访问者模式" class:[UIViewController class]];
    [self.model appendItemWithTitle:@"装饰器模式" class:[UIViewController class]];
    [self.model appendItemWithTitle:@"责任链模式" class:[UIViewController class]];
    
    //性能与对象访问：
    [self.model appendItemWithTitle:@"享元模式" class:[UIViewController class]];
    [self.model appendItemWithTitle:@"代理模式" class:[UIViewController class]];
    //对象状态：
    [self.model appendItemWithTitle:@"备忘录模式" class:[UIViewController class]];
    //其他
    [self.model appendItemWithTitle:@"状态模式" class:[UIViewController class]];
    [self.model appendItemWithTitle:@"解释器模式" class:[UIViewController class]];}


@end
