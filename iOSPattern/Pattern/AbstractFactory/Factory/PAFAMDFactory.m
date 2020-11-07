//
//  PAFAMDFactory.m
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import "PAFAMDFactory.h"

#import "PAFAMDCpu.h"
#import "PAFAMDMainBoard.h"

@implementation PAFAMDFactory

- (PAFCpu *)creatCPU {
    return [PAFAMDCpu new];
}

- (PAFMainBoard *)creatMainBoard {
    return [PAFAMDMainBoard new];
}

@end
