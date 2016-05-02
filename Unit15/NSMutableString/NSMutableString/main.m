//
//  main.m
//  NSMutableString
//
//  Created by 李昊鑫 on 16/3/20.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        
        NSComparisonResult compareResult;
        
        //计算字符串中字符
        NSLog(@"Length of str: %lu", [str1 length]);
        
        //复制到另一个字符
        res = [NSString stringWithString:str1];
        NSLog(@"copy: %@", res);
        
        //复制到另一个字符串末尾
        
        str2 = [str1 stringByAppendingString:str2];
        NSLog(@"Concatentation: %@", str2);
        
        
        //验证两个字符串是否相等
        
        if ([str1 isEqualToString:res] == YES)
            NSLog(@"str1 != res");
        
        //验证一个字符串大小，等于或大于另一个字符串
        
        compareResult = [str1 compare:str2];
        if (compareResult == NSOrderedAscending)
            NSLog(@"str1 < str2");
        
        else if (compareResult == NSOrderedSame)
            NSLog(@"str1 == str2");
        else
            NSLog(@"str1 > str2");
        //将字符串转换成大写
        res = [str1 uppercaseString];
        NSLog(@"Uppercase comversion: %s",[res UTF8String]);
        
        //将字符串转换为小写
        
        res = [str1 lowercaseString];
        NSLog(@"Lowercase conversion: %@",str1);
        
    }
    return 0;
}
