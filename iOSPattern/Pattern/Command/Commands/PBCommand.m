//
//  PBCommand.m
//  iOSPattern
//
//  Created by Peace on 12/5/20.
//

#import "PBCommand.h"

@implementation PBCommand

@synthesize receiver;

- (void)execute {
    [receiver doBCommand:_string];
}

@end
