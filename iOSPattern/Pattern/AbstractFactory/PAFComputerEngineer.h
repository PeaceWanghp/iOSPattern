//
//  PAFComputerEngineer.h
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PAFFactory;

NS_ASSUME_NONNULL_BEGIN

@interface PAFComputerEngineer : NSObject

- (BOOL)prepare:(PAFFactory *)factory;
- (BOOL)test;
- (void)package;

@end

NS_ASSUME_NONNULL_END
