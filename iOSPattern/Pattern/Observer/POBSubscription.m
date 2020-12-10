//
//  POBSubscription.m
//  iOSPattern
//
//  Created by Peace on 12/10/20.
//

#import "POBSubscription.h"

@implementation POBSubscription

@synthesize tag = _tag;

- (void)valueChanged:(NSString *)valueName newValue:(NSString *)newValue
{
    NSLog(@"B Subscriber输出: 值 %@ 已变为 %@", valueName, newValue);
}

@end
