//
//  PInvokerManager.h
//  iOSPattern
//
//  Created by Peace on 12/5/20.
//

#import <Foundation/Foundation.h>
#import "PACommand.h"
#import "PBCommand.h"
#import "PCCommand.h"
NS_ASSUME_NONNULL_BEGIN

@interface PInvokerManager : NSObject

- (void)setCommand:(id<PCommand>)command;
- (void)placeCommands;

@end

NS_ASSUME_NONNULL_END
