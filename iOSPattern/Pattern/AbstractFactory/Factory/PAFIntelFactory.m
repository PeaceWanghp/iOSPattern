//
//  PAFIntelFactory.m
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import "PAFIntelFactory.h"

#import "PAFIntelCpu.h"
#import "PAFIntelMainBoard.h"

@implementation PAFIntelFactory

- (PAFCpu *)creatCPU {
    return [PAFIntelCpu new];
}

- (PAFMainBoard *)creatMainBoard {
    return [PAFIntelMainBoard new];
}

@end
