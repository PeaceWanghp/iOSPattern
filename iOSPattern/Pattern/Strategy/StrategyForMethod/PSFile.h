//
//  PSFile.h
//  iOSPattern
//
//  Created by Peace on 12/3/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PSFile : NSObject

@property(nonatomic,copy) NSString *name;
@property(nonatomic,assign) int size;
@property(nonatomic,assign) int date;
@property(nonatomic,copy) NSString *path;
@property(nonatomic,assign) BOOL isDirectory;

@end

NS_ASSUME_NONNULL_END
