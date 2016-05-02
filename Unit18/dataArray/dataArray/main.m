//
//  main.m
//  dataArray
//
//  Created by 李昊鑫 on 16/3/26.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray  *dataArray = [NSMutableArray arrayWithObjects:@"one",@"two",@"three",@"four",nil];
        
        NSMutableArray  *dataArray2;
        
        
        dataArray2 = dataArray;
        [dataArray2 removeObjectAtIndex:0];
        
        NSLog(@"dataArray: ");
        for(NSString *elem in dataArray)
            NSLog(@"  %@",elem);
        
        NSLog(@"dataArray2:  ");
        for(NSString *elem in dataArray2)
            NSLog(@"   %@",elem);
        dataArray2 = [dataArray mutableCopy];
        [dataArray2 removeObjectAtIndex:0];
        
        NSLog(@"dataArray: ");
        for(NSString *elem in dataArray)
            NSLog(@"   %@",elem);
        
        NSLog(@"dataArray2: ");
        for(NSString *elem in dataArray2)
            NSLog(@"   %@", elem);
        
    }
    return 0;
}
