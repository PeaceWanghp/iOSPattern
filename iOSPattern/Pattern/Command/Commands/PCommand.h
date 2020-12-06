//
//  PCommand.h
//  iOSPattern
//
//  Created by Peace on 12/5/20.
//

#import <Foundation/Foundation.h>

#import "PReceiver.h"

@protocol PCommand <NSObject>

@property(nonatomic,strong) PReceiver *receiver;

- (void)execute;

@end
