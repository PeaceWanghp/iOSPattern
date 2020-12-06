//
//  PCCommand.m
//  iOSPattern
//
//  Created by Peace on 12/5/20.
//

#import "PCCommand.h"

@implementation PCCommand

@synthesize receiver;

- (void)execute {
    [receiver doCCommand:_array];
}

@end
