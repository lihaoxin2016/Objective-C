
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is string A";

        NSString *res;
        NSRange subRange;
        
    //提取前三个字符
        res = [str1 substringFromIndex:5];
        NSLog(@"frist 3 chars of str1: %@", res);
        
        //提取索引5 到结尾的字符
        
        res = [str1 substringFromIndex:5];
        NSLog(@"Chars from index 5 of str1: %@", res);
        
        //5-13
        
        res = [[str1 substringFromIndex:8]substringFromIndex:6];
               NSLog(@"Chars from index 8 through 13:%@",res);
               
               
               //so easy
        
        res =  [ str1 substringWithRange:NSMakeRange(8, 6)];
        NSLog(@" Chars from index 8 through 13:%@",res);
        
        //从另一个字符串查找
        
        subRange = [str1 rangeOfString:@"string A"];
        NSLog(@"String ia at index %lu, length is %lu",subRange.location,subRange.length);
        
        subRange = [str1 rangeOfString:@"string B"];
        
        if (subRange.location == NSNotFound)
            NSLog(@" String not found");
        else
            NSLog(@"String is at index %lu, length is %lu", subRange.location,subRange.length);
    }
    return 0;
}
