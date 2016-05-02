//
//  AddressCard.h
//  AddressCard
//
//  Created by 李昊鑫 on 16/3/20.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
@property (copy, nonatomic) NSString *name, *email;



-(void) print;
-(void) setName:(NSString *) theName andEmail:(NSString *) theEmail;

@end
