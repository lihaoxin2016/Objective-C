//
//  main.m
//  mStr
//
//  Created by 李昊鑫 on 16/3/26.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray  *dataArray = [NSMutableArray arrayWithObjects:
                                      [NSMutableString stringWithString:@"one"],
                                      [NSMutableString stringWithString:@"two"],
                                      [NSMutableString stringWithString:@"three"],
                                      nil];
        
        
        
        NSMutableArray  *dataArray2;
        NSMutableString *mStr;
        NSLog(@"dataArray: ");
        for(NSString *elem in dataArray)
            NSLog(@"   %@",elem);
        
        
        dataArray2 = [dataArray mutableCopy];
        mStr = dataArray[0];
        [mStr appendString:@"ONE"];
        NSLog(@"dataArray: ");
        for(NSString *elem in dataArray)
            NSLog(@"   %@",elem);
        
        NSLog(@"dataArray2");
        for(NSString *elem in dataArray2)
            NSLog(@"  %@",elem);
    }
    return 0;
}
