//
//  main.m
//  enumeratorAtPath
//
//  Created by 李昊鑫 on 16/3/23.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString    *path;
        NSFileManager    *fm;
        NSDirectoryEnumerator *dirEnum;
        NSArray     *dirArray;
        
        fm = [NSFileManager defaultManager];
        path = [fm currentDirectoryPath];
        
        dirEnum = [fm enumeratorAtPath:path];
        NSLog(@"Countes of %@", path);
        
        while ((path = [dirEnum nextObject])!= nil)
            NSLog(@"%@", path);
        
        dirArray = [fm contentsOfDirectoryAtPath:[fm currentDirectoryPath] error:NULL];
        NSLog(@"Contents using contentsOfDirectoryAtPath :error");
        
        for (path in dirArray)
            NSLog(@"%@", path);
    }
    return 0;
}
