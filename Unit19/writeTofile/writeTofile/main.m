//
//  main.m
//  writeTofile
//
//  Created by 李昊鑫 on 16/3/27.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *glossary = @{
                @"abstract class":@"A class defined so other classes can inherit from it.",
                @"adopt": @" To implement all the methods defined en a protocol",
                @"archiving": @"Storing an object for later use."
                
                };
        if ([glossary writeToFile:@"glossary" atomically:YES]==NO)
            NSLog(@"Save to file falied!");
        
    }
    return 0;
}
