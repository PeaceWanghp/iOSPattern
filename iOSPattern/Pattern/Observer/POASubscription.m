//
//  POASubscription.m
//  iOSPattern
//
//  Created by Peace on 12/10/20.
//

#import "POASubscription.h"

@implementation POASubscription

@synthesize tag = _tag;

- (void)valueChanged:(NSString *)valueName newValue:(NSString *)newValue
{
    NSLog(@"A Subscriber输出: 值 %@ 已变为 %@", valueName, newValue);
}

@end
