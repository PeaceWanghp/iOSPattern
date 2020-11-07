//
//  PAFFactory.h
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PAFCpu;
@class PAFMainBoard;

NS_ASSUME_NONNULL_BEGIN

@interface PAFFactory : NSObject

- (PAFCpu *)creatCPU;
- (PAFMainBoard *)creatMainBoard;

@end

NS_ASSUME_NONNULL_END
