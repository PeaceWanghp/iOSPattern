//
//  Strategy.h
//  iOSPattern
//
//  Created by Peace on 12/3/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Strategy <NSObject>

- (int)doOperation:(int)num1 :(int)num2;

@end

NS_ASSUME_NONNULL_END
