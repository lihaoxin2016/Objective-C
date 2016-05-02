//
//  Fraction.h
//  7-3
//
//  Created by 李昊鑫 on 16/3/17.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;
-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;

@end
