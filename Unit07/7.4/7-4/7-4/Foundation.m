//
//  Foundation.m
//  7-4
//
//  Created by 李昊鑫 on 16/3/17.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import "Foundation.h"

@implementation Foundation
@synthesize numerator,denominator;
-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}

-(double) convertToNum
{
if (denominator != 0)
    return (double) numerator/denominator;
    

else
return NAN;
}
-(void) setTo:(int)n over:(int)d
{
    numerator =n;
    denominator =d;
}

-(void)add:(Fraction *) f
{
    numerator = numerator * f.denominator +denominator * f.numerator;
    denominator = denominator * f.denominator;
}

    @end
