//
//  PCompositeView+Iterator.h
//  iOSPattern
//
//  Created by Peace on 11/8/20.
//

#import "PCompositeView.h"

NS_ASSUME_NONNULL_BEGIN

@interface PCompositeView (Iterator)

- (void)iteratorUsingBlock:(void(^)(id item))block;

@end

NS_ASSUME_NONNULL_END
