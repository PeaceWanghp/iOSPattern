//
//  SContext.m
//  iOSPattern
//
//  Created by Peace on 12/6/20.
//

#import "SContext.h"

@interface SContext ()

@property(nonatomic,strong) id<Strategy> strategy;

@end

@implementation SContext

- (instancetype)initWithStrategy:(id<Strategy>)strategy {
    self = [super init];
    if (self) {
        self.strategy = strategy;
    }
    return self;
}

- (void)executeOperation:(int)num1 :(int)num2 {
    [self.strategy doOperation:num1 :num2];
}

@end
