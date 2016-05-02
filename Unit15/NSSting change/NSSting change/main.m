//
//  main.m
//  NSSting change
//
//  Created by 李昊鑫 on 16/3/20.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    NSString *str1 = @"This is string A";
        NSString *search, *replace;
        NSMutableString *mstr;
        NSRange substr;
        
        
        //不可变砖可变
        mstr = [NSMutableString stringWithString:str1];
        NSLog(@"%@", mstr);
        
        //插入
        
        [mstr insertString: @"mutable"atIndex:7];
        NSLog(@"%@",mstr);
        
        //插入末尾
        [mstr insertString:@"and string B" atIndex:[mstr length]];
        NSLog(@"%@", mstr);
        
        //使用appendstring
        [mstr appendString:@"and string C"];
        NSLog(@"%@", mstr);
        
        //范围删除
        
        [mstr deleteCharactersInRange:NSMakeRange(16, 13)];
        NSLog(@"%@",mstr);
        
        //查找后删除
        substr = [mstr rangeOfString:@"string B and"];
        if (substr.location != NSNotFound){
            [mstr deleteCharactersInRange:substr];
            NSLog(@"%@",mstr);}
            
            //设置为可变
            [mstr setString:@"This is string A"];
            NSLog(@"%@",mstr);
            
            //替换
            [mstr replaceCharactersInRange:NSMakeRange(8, 8) withString:@"a mutable string"];
            
            //查找和替换
            search = @"This is";
            replace = @"An example of";
            
            substr = [mstr rangeOfString:search];
            
            if (substr.location != NSNotFound) {
                [mstr replaceCharactersInRange:substr withString:replace];
                
                NSLog(@"%@", mstr);
            }
            //替换删除所有匹配项
        search = @"a";
        replace = @"X";
        substr = [mstr rangeOfString:search];
        
        while (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr withString:replace];
        }
        
        NSLog(@"%@",mstr);
        
        
    }
    return 0;
}
