//
//  PSingelton.m
//  iOSPattern
//
//  Created by Peace on 11/7/20.
//

#import "PSingelton.h"

static PSingelton *singlton = nil;
static dispatch_semaphore_t semaphore;

@implementation PSingelton

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        semaphore = dispatch_semaphore_create(1);
        singlton = [[PSingelton alloc] init];
    });
    
    return singlton;
}

+ (void)destroyInstance
{
    singlton = nil;
}

- (void)test
{
    NSLog(@"xxxx");
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}

@end
