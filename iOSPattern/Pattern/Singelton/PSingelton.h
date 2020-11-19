//
//  PSingelton.h
//  iOSPattern
//
//  Created by Peace on 11/7/20.
//

#import <Foundation/Foundation.h>

#define UNAVAILABLE __attribute__((unavailable("Use sharedInstance method")))

NS_ASSUME_NONNULL_BEGIN

@interface PSingelton : NSObject

+ (instancetype)sharedInstance;
+ (void)destroyInstance;

- (void)test;

+ (instancetype)new                                     UNAVAILABLE;
+ (instancetype)allocWithZone:(struct _NSZone *)zone    UNAVAILABLE;
+ (instancetype)alloc                                   UNAVAILABLE;
- (instancetype)copy                                    UNAVAILABLE;
- (instancetype)mutableCopy                             UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
