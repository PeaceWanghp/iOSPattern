//
//  SContext.h
//  iOSPattern
//
//  Created by Peace on 12/6/20.
//

#import <Foundation/Foundation.h>

#import "OperationAdd.h"
#import "OperationSubtract.h"
#import "OperationMultiply.h"

NS_ASSUME_NONNULL_BEGIN

@interface SContext : NSObject

- (instancetype)initWithStrategy:(id<Strategy>)strategy;
- (void)executeOperation:(int)num1 :(int)num2;

@end

NS_ASSUME_NONNULL_END
