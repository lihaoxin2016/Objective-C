//
//  main.m
//  NSURL
//
//  Created by 李昊鑫 on 16/3/24.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *myURL = [NSURL URLWithString:@"http://classroomM.com"];
        
        NSString *myHomePage = [NSString stringWithContentsOfURL:myURL encoding:NSASCIIStringEncoding error:NULL];
        NSLog(@"%@",myHomePage);
    }
    return 0;
}
