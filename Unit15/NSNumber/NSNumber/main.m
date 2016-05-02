

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber   *myNumber, *floatNumber, *intNumber;
        NSInteger   myInt;
        //integer
        
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog(@"%li",(long)myInt);
        
        // long
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog(@"%lx",[myNumber longValue]);
        
        //char
        
        myNumber = [NSNumber numberWithChar:'X'];
        NSLog(@"%c",[myNumber longValue]);
        
        
        //float
        
        floatNumber = [NSNumber numberWithFloat:100.00];
        NSLog(@"%g",[floatNumber floatValue]);
        
        //double
        
        myNumber = [NSNumber numberWithDouble:12345e+15];
        NSLog(@"%1g",[myNumber doubleValue]);
        
      
        
        //验证
        
        if ([intNumber isEqualToNumber:floatNumber] == YES)
            NSLog(@"Numbers are equal");
        else
            NSLog(@"Numbers are not equal");
        
    }
    return 0;
}
