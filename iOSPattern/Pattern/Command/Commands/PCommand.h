//
//  PCommand.h
//  iOSPattern
//
//  Created by Peace on 12/5/20.
//

#import <Foundation/Foundation.h>
#import "PRecive.h"
@protocol PCommand <NSObject>

@property(nonatomic,strong) PRecive *recive;

- (void)execute;

@end
