//
//  main.m
//  dataArray
//
//  Created by 李昊鑫 on 16/3/28.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSData  *data;
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:
                                     [NSMutableString stringWithString:@"one"],
                                     [NSMutableString stringWithString:@"two"],
                                     [NSMutableString stringWithString:@"three"]
                                     
                                     
                                     
                                     , nil];
        
        NSMutableArray *dataArray2;
        NSMutableString *mStr;
        
        data = [NSKeyedArchiver archivedDataWithRootObject:dataArray];
        dataArray2 = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        
        mStr = dataArray2[0];
        [mStr appendString:@"ONE"];
        
        NSLog(@"dataArray ");
        for(NSString *elem in dataArray)
            NSLog(@"%@",elem);
        
        NSLog(@"\ndataArray2 ");
        for(NSString *elem in dataArray2)
            NSLog(@"%@",elem);
    }
    return 0;
}
