//
//  PSSearchFile.h
//  iOSPattern
//
//  Created by Peace on 12/3/20.
//

#import <Foundation/Foundation.h>
#import "PSFile.h"

NS_ASSUME_NONNULL_BEGIN

@interface PSSearchFile : NSObject

- (PSFile *)searchMaxFile;
- (PSFile *)searchLatestFile;
- (PSFile *)searchOldestFile;
- (NSArray <PSFile *>*)searchTopFiveFile;

@end

NS_ASSUME_NONNULL_END
