//
//  PSSearchFile.m
//  iOSPattern
//
//  Created by Peace on 12/3/20.
//

#import "PSSearchFile.h"

@implementation PSSearchFile

- (PSFile *)searchMaxFile {
    __block PSFile *tempFile = nil;
    [self searchFileWithPath:@"root/ttt" apllyBlock:^void(PSFile *file) {
        if(!tempFile || tempFile.size < file.size) {
            tempFile = file;
        }
    }];
    
    return tempFile;
}

- (PSFile *)searchLatestFile {
    __block PSFile *tempFile = nil;
    [self searchFileWithPath:@"root/ttt" apllyBlock:^void(PSFile *file) {
        if(!tempFile || tempFile.date < file.date) {
            tempFile = file;
        }
    }];
    
    return tempFile;
}

- (PSFile *)searchOldestFile {
    __block PSFile *tempFile = nil;
    [self searchFileWithPath:@"root/ttt" apllyBlock:^void(PSFile *file) {
        if(!tempFile || tempFile.date > file.date) {
            tempFile = file;
        }
    }];
    
    return tempFile;
}

- (NSArray <PSFile *>*)searchTopFiveFile {
    NSMutableArray *files = [NSMutableArray arrayWithCapacity:5];
    
    [self searchFileWithPath:@"root/ttt" apllyBlock:^void(PSFile *file) {
        if (!file) {
            return;
        }
        
        if (files.count < 5) {
            [files addObject:file];
        }
    }];
    
    return files;
}

#pragma mark -
#pragma mark -- Utils
- (void)searchFileWithPath:(NSString *)path apllyBlock:(void(^)(PSFile *file))block {
    NSMutableArray *resources;
    /*
     coding
     */
    
    for (PSFile *file in resources) {
        block(file);
    }
}

@end
