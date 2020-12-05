//
//  PInvokerManager.m
//  iOSPattern
//
//  Created by Peace on 12/5/20.
//

#import "PInvokerManager.h"

@interface PInvokerManager ()
@property(nonatomic,copy) NSMutableArray *commands;
@end

@implementation PInvokerManager

- (void)setCommand:(id<PCommand>)command {
    [self.commands addObject:command];
}

- (void)placeCommands {
    for (id<PCommand> command in self.commands) {
        [command execute];
    }
    [self.commands removeAllObjects];
}

- (NSMutableArray *)commands {
    if (!_commands) {
        _commands = [[NSMutableArray alloc] init];
    }
    return _commands;
}

@end
