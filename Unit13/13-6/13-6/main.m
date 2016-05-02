//
//  main.m
//  13-6
//
//  Created by 李昊鑫 on 16/3/19.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char * argv[]) {
    @autoreleasepool {
        //block
        void (^print_Message)(void)=
        ^(void) {
            NSLog(@"Programming is fun!");
            
            NSLog(@"oooooo");
        };
        print_Message();
    }
    return 0;
}
