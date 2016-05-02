//
//  AddressCard.m
//  AddressCard
//
//  Created by 李昊鑫 on 16/3/20.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize name,email;
-(void) print
{
    NSLog(@"=========================");
    NSLog(@"|                   |");
    NSLog(@"|  %-31s  |",[name UTF8String]);
    NSLog(@"|  %-31s  |",[email UTF8String]);
    NSLog(@"|                   |");
    NSLog(@"|                   |");
    NSLog(@"|                   |");
    NSLog(@"|     o        o    |");
    
}
-(void) setName:(NSString *) theName andEmail:(NSString *) theEmail
{
    self.name = theName;
    self.email = theEmail;
}


@end
