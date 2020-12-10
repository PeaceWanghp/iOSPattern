//
//  POSubject.h
//  iOSPattern
//
//  Created by Peace on 12/10/20.
//

#import <Foundation/Foundation.h>

#import "PObserver.h"

NS_ASSUME_NONNULL_BEGIN

@interface POSubject : NSObject

- (void)addObserver:(id<PObserver>)observer;
- (void)removeObserver:(id<PObserver>)observer;

- (void)changeValue:(NSString *)valueName andValue:(NSString *)newValue;

@end

NS_ASSUME_NONNULL_END
