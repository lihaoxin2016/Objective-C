//
//  main.m
//  13-2
//
//  Created by 李昊鑫 on 16/3/19.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char word[] = { 'H', 'e', 'l', 'l', 'o', '!'};
        int i;
        for (i = 0; i < 6; ++i)
            NSLog(@"%c",word[i]);
    }
    return 0;
}
