//
//  POSubject.m
//  iOSPattern
//
//  Created by Peace on 12/10/20.
//

#import "POSubject.h"

#import "PObserver.h"

@interface POSubject()
{
    NSString *_valueName;
    NSString *_newValue;
}
@property (nonatomic, strong) NSMutableSet *observerCollection;

- (void)changeValue:(NSString *)valueName andValue:(NSString *)newValue;

@end

@implementation POSubject

@synthesize observerCollection = _observerCollection;

- (NSMutableSet *)observerCollection {
    if (_observerCollection == nil)
        _observerCollection = [[NSMutableSet alloc] init];
   
    return _observerCollection;
}

- (void)addObserver:(id<PObserver>)observer {
    [self.observerCollection addObject:observer];
}

- (void)removeObserver:(id<PObserver>)observer {
    [self.observerCollection removeObject:observer];
}

- (void)notifyObjects {
    for (id<PObserver> observer in self.observerCollection) {
        [observer valueChanged:_valueName newValue:_newValue];
    }
}

- (void)changeValue:(NSString *)valueName andValue:(NSString *)newValue {
    _newValue = newValue;
    _valueName = valueName;

    [self notifyObjects];
}

@end
