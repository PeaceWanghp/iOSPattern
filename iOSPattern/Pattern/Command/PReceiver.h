//
//  PReceiver.h
//  iOSPattern
//
//  Created by Peace on 12/6/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PReceiver : NSObject

- (void)doACommand:(int)num1 :(int)num2;
- (void)doBCommand:(NSString *)string;
- (void)doCCommand:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
