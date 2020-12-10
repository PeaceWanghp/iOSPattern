//
//  PObserver.h
//  iOSPattern
//
//  Created by Peace on 12/10/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PObserver <NSObject>

@property(nonatomic,assign) int tag;

- (void)valueChanged:(NSString *)valueName newValue:(NSString *)newValue;

@end

NS_ASSUME_NONNULL_END
