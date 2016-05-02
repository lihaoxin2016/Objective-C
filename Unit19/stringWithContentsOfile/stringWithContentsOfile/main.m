//
//  main.m
//  stringWithContentsOfile
//
//  Created by 李昊鑫 on 16/3/27.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *glossary;
        glossary = [NSDictionary dictionaryWithContentsOfFile:@"glossary"];
        
        for(NSString *key in glossary)
            NSLog(@"%@: %@",key,glossary[key]);
        
    }
    return 0;
}
