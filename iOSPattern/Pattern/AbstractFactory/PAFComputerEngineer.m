//
//  PAFComputerEngineer.m
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import "PAFComputerEngineer.h"

#import "PAFFactory.h"
#import "PAFCpu.h"
#import "PAFMainBoard.h"

@implementation PAFComputerEngineer

- (BOOL)prepare:(PAFFactory *)factory {
    NSLog(@"Preparing... %@",[factory creatCPU].name);
    NSLog(@"Preparing... %@",[factory creatMainBoard].name);
    NSLog(@"Preparing...Done!");
    
    return YES;
}

- (BOOL)test {
    NSLog(@"Testing...");
    return YES;
}

- (void)package {
    NSLog(@"Package Done!");
}

@end
