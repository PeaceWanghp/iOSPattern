//
//  PFMPerson.h
//  CocoaPods
//
//  Created by Peace on 10/27/20.
//  Copyright © 2020 Peace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PFMAnimal.h"
NS_ASSUME_NONNULL_BEGIN

@interface PFMPerson : NSObject

@property (nonnull,strong) PFMAnimal *animal;

- (void)feed:(NSString *)food;

@end

NS_ASSUME_NONNULL_END
