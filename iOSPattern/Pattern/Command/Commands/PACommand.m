//
//  PACommand.m
//  iOSPattern
//
//  Created by Peace on 12/5/20.
//

#import "PACommand.h"

@implementation PACommand

@synthesize receiver;

- (void)execute {
    [receiver doACommand:_num1 :_num2];
}

@end
