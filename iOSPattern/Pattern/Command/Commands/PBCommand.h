//
//  PBCommand.h
//  iOSPattern
//
//  Created by Peace on 12/5/20.
//

#import <Foundation/Foundation.h>
#import "PCommand.h"

NS_ASSUME_NONNULL_BEGIN

@interface PBCommand : NSObject <PCommand>

@property (nonatomic,copy) NSString *string;

@end

NS_ASSUME_NONNULL_END
