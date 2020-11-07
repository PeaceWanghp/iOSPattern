//
//  PFMTrainer.m
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import "PFMTrainer.h"
#import "PFMLion.h"

@implementation PFMTrainer

- (void)feed:(NSString *)food
{
    if(!self.animal) {
        self.animal = [PFMLion new];
    }
    
    [self.animal eat:food];
}

@end
