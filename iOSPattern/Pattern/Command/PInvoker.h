//
//  PInvoker.h
//  iOSPattern
//
//  Created by Peace on 12/6/20.
//

#import <Foundation/Foundation.h>

#import "PCommand.h"

NS_ASSUME_NONNULL_BEGIN

@interface PInvoker : NSObject

- (void)setCommand:(id<PCommand>)command;
- (void)placeCommands;

@end

NS_ASSUME_NONNULL_END
