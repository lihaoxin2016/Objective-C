//
//  Foo.m
//  encode
//
//  Created by 李昊鑫 on 16/3/28.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import "Foo.h"

@implementation Foo
@synthesize strVal, intVal, floatVal;
-(void) encodeWithCoder:(NSCoder *) encoder
{
    [encoder encodeObject:strVal forKey:@"FoostrVal"];
    [encoder encodeInt: intVal forKey:@"FoointVal"];
    [encoder encodeFloat: floatVal forKey:@"FoofloatVal"];
}

-(id) initWithCoder:(NSCoder *) decoder
{
    strVal = [decoder decodeObjectForKey:@"FoostrVal"];
    intVal = [decoder decodeIntForKey:@"FoointVal"];
    floatVal = [decoder decodeFloatForKey:@"FooflatVal"];
    return self;
}

@end
