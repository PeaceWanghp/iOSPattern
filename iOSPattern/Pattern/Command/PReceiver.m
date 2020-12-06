//
//  PReceiver.m
//  iOSPattern
//
//  Created by Peace on 12/6/20.
//

#import "PReceiver.h"

@implementation PReceiver

- (void)doACommand:(int)num1 :(int)num2 {
    NSLog(@"%s: num1 + numb2 =  %d",__func__,num1+num2);
}

- (void)doBCommand:(NSString *)string {
    NSLog(@"%s: %@",__func__,string);
}

- (void)doCCommand:(NSArray *)array {
    NSLog(@"%s: ",__func__);
    for (NSNumber *number in array) {
        printf("%d ",number.intValue);
    }
}

@end
