//
//  PCommandController.m
//  iOSPattern
//
//  Created by Peace on 12/3/20.
//

#import "PCommandController.h"

#import "PInvokerManager.h"

@interface PCommandController ()

@end

@implementation PCommandController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.model appendOpenedHeader:@"Command/命令模式："];
    [self.model appendDarkItemWithTitle:@"是一种数据驱动的设计模式，它属于行为型模式。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"请求以命令的形式包裹在对象中，并传给调用对象。调用对象寻找可以处理该命令的合适的对象，\
                                        并把该命令传给相应的对象，该对象执行命令。"
                                  class:[UIViewController class]];
    
    [self.model appendDarkItemTitle:@"测试" target:self selector:@selector(todo)];
}

- (void)todo {
    PRecive *recive = [PRecive new];
    PACommand *aCommand = [PACommand new];
    aCommand.recive = recive;
    PBCommand *bCommand = [PBCommand new];
    bCommand.recive = recive;
    PCCommand *cCommand = [PCCommand new];
    cCommand.recive = recive;
    
    PInvokerManager *invoker = [PInvokerManager new];
    [invoker setCommand:aCommand];
    [invoker setCommand:bCommand];
    [invoker setCommand:cCommand];
    [invoker placeCommands];
}

@end
