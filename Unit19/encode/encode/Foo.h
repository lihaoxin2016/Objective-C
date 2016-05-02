//
//  Foo.h
//  encode
//
//  Created by 李昊鑫 on 16/3/28.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject <NSCoding>

@property (copy, nonatomic ) NSString *strVal;
@property int intVal;
@property float floatVal;


@end
