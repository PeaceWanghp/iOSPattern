//
//  PObserverController.m
//  iOSPattern
//
//  Created by Peace on 11/8/20.
//

#import "PObserverController.h"

#import "POSubject.h"
#import "POASubscription.h"
#import "POBSubscription.h"

@interface PObserverController ()
{
    POASubscription *a;
    POBSubscription *b;
}
@end

@implementation PObserverController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.model appendOpenedHeader:@"介绍："];
    [self.model appendDarkItemWithTitle:@"意图：定义对象间的一种一对多的依赖关系，当一个对象的状态发生改变时，所有依赖于它的对象都得到通知并被自动更新。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"主要解决：一个对象状态改变给其他对象通知的问题，而且要考虑到易用和低耦合，保证高度的协作。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"何时使用：一个对象（目标对象）的状态发生改变，所有的依赖对象（观察者对象）都将得到广播通知。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"在抽象类里有一个 ArrayList 存放观察者们。"
                                  class:[UIViewController class]];
    [self.model appendDarkItemWithTitle:@"优点： 1、观察者和被观察者是抽象耦合的。 2、建立一套触发机制。"
                                  class:[UIViewController class]];
    
    [self.model appendOpenedHeader:@"应用:"];
    [self.model appendDarkItemTitle:@"Customer Observer" target:self selector:@selector(todo)];
    [self.model appendDarkItemTitle:@"KVO" target:self selector:@selector(systemKVOAction)];
}

- (void)todo {
    POSubject *subject = [POSubject new];
    id<PObserver> a = [POASubscription new];
    [subject addObserver:a];
    id<PObserver> b = [POBSubscription new];
    [subject addObserver:b];
    
    [subject changeValue:@"111" andValue:@"2222"];
    
    [subject removeObserver:a];
    [subject changeValue:@"333" andValue:@"4444"];
}

- (void)systemKVOAction {
    a = [POASubscription new];
    b = [POBSubscription new];
    
    [a addObserver:self forKeyPath:@"tag" options:NSKeyValueObservingOptionNew context:nil];
    [b addObserver:self forKeyPath:@"tag" options:NSKeyValueObservingOptionNew context:nil];
    
    a.tag = 1;
    b.tag = 10;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if (object == a) {
        NSLog(@"a == %@",change);
    }
    else {
        NSLog(@"b == %@",change);
    }
}

@end
