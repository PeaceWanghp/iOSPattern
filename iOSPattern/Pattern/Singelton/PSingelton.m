//
//  PSingelton.m
//  iOSPattern
//
//  Created by Peace on 11/7/20.
//

#import "PSingelton.h"

@implementation PSingelton

+ (instancetype)sharedInstance
{
    static PSingelton *singlton = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singlton = [[PSingelton alloc] init];
    });
    
    return singlton;
}

- (void)test
{
    NSLog(@"xxxx");
}

@end
