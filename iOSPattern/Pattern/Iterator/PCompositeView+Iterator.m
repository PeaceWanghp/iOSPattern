//
//  PCompositeView+Iterator.m
//  iOSPattern
//
//  Created by Peace on 11/8/20.
//

#import "PCompositeView+Iterator.h"

@implementation PCompositeView (Iterator)

- (void)iteratorUsingBlock:(void(^)(id item))block {
    block(nil);
}

@end
