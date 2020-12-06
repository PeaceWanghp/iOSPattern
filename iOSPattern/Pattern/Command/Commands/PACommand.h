//
//  PACommand.h
//  iOSPattern
//
//  Created by Peace on 12/5/20.
//

#import <Foundation/Foundation.h>
#import "PCommand.h"

NS_ASSUME_NONNULL_BEGIN

@interface PACommand : NSObject <PCommand>

@property(nonatomic,assign) int num1;
@property(nonatomic,assign) int num2;

@end

NS_ASSUME_NONNULL_END
