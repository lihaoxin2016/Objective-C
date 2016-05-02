//
//  main.m
//  NSProcessInfo
//
//  Created by 李昊鑫 on 16/3/24.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager   *fm;
        NSString       *source, *dest;
        BOOL     *isDir;
        NSProcessInfo  *proc = [NSProcessInfo processInfo];
        NSArray  *args = [proc arguments];
        
        
        fm = [NSFileManager defaultManager];
        
        if([args count] != 3){
            NSLog(@"USage: %@ src dest",[proc processName]);
            return 1;
        }
        
        source = args[1];
        dest = args[2];
        
        if ([fm isReadableFileAtPath:source] == NO){
            NSLog(@"Can't read %@",source);
            return 2;
        }
        
        [fm fileExistsAtPath:dest isDirectory:&isDir];
        
        if (isDir == YES)
            dest = [dest stringByAppendingPathComponent:[source lastPathComponent]];
        [fm removeItemAtPath:dest error:NULL];
        
        if ([fm copyItemAtPath: source toPath:dest error:NULL]==NO){
            NSLog(@"Copy failed!");
            return 3;
        }
        
            
            NSLog(@"Copy of %@ to %@ succeeded!",source,dest );
        
    }
    return 0;
}
