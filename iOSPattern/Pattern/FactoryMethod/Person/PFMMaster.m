//
//  PFMMaster.m
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import "PFMMaster.h"
#import "PFMDog.h"

@implementation PFMMaster

- (void)feed:(NSString *)food
{
    if(!self.animal) {
        self.animal = [PFMDog new];
    }
    
    [self.animal eat:food];
}

@end
