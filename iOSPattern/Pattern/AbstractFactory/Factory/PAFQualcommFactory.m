//
//  PAFQualcommFactory.m
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import "PAFQualcommFactory.h"

#import "PAFQualcommCpu.h"
#import "PAFQualcommMainBoard.h"

@implementation PAFQualcommFactory

- (PAFCpu *)creatCPU {
    return [PAFQualcommCpu new];
}

- (PAFMainBoard *)creatMainBoard {
    return [PAFQualcommMainBoard new];
}

@end
