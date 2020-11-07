//
//  PAbstractFactoryController.m
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import "PAbstractFactoryController.h"

#import "PAFComputerEngineer.h"
#import "PAFIntelFactory.h"
#import "PAFAMDFactory.h"
#import "PAFQualcommFactory.h"

@interface PAbstractFactoryController ()
{
    PAFComputerEngineer *_engineer;
}
@end

@implementation PAbstractFactoryController

- (void)viewDidLoad {
    [super viewDidLoad];

    _engineer = [PAFComputerEngineer new];
    
    [self.model appendOpenedHeader:@"Prepare(组装):"];
    [self.model appendDarkItemTitle:@"Intel" target:self selector:@selector(todo1)];
    [self.model appendDarkItemTitle:@"AMD" target:self selector:@selector(todo2)];
    [self.model appendDarkItemTitle:@"Qualcomm" target:self selector:@selector(todo3)];
}

- (void)todo1 {
    [self engineerPrepare:[PAFIntelFactory new]];
}

- (void)todo2 {
    [self engineerPrepare:[PAFAMDFactory new]];
}

- (void)todo3 {
    [self engineerPrepare:[PAFQualcommFactory new]];
}

- (void)engineerPrepare:(PAFFactory *)factory
{
    BOOL value = [_engineer prepare:factory];
    
    if(value)
        value = [_engineer test];
    
    if (value) {
        [_engineer package];
    }
}

@end
