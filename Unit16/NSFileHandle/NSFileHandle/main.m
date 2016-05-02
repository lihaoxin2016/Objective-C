//
//  main.m
//  NSFileHandle
//
//  Created by 李昊鑫 on 16/3/24.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileHandle  *inFile, *outFile;
        NSData  *buffer;
        
        
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile"];
        
        if (inFile == nil){
            NSLog(@"Open of testfile for reading failed");
            return 1;
        }
        
        [[NSFileManager defaultManager]createFileAtPath:@"testout" contents:nil  attributes:nil];
        
        outFile = [NSFileHandle fileHandleForWritingAtPath:@"testout"];
        
        if(outFile == nil){
            NSLog(@"Open of testout for writing failed");
            return 2;
        }
        
        [outFile truncateFileAtOffset:0];
        buffer = [inFile readDataToEndOfFile];
        [outFile writeData:buffer];
        
        [inFile closeFile];
        [outFile closeFile];
        
        
        NSLog(@"%@",[NSString stringWithContentsOfFile:@"testout" encoding:NSUTF8StringEncoding error:NULL]);
        
    }
    return 0;
}
