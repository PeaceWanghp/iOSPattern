//
//  PFMProtector.m
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import "PFMProtector.h"

#import "PFMCat.h"

@implementation PFMProtector

- (void)feed:(NSString *)food
{
    if(!self.animal) {
        self.animal = [PFMCat new];
    }
    
    [self.animal eat:food];
}

@end
