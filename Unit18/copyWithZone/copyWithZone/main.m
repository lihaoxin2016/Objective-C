#import "Fraction.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        Fraction *f1 = [[Fraction alloc]init];
        Fraction *f2;
        
        
        [f1 setTo:2 over:5];
        f2 = [f1 copy];
        
        [f2 setTo:1 over:3];
        
        [f1 print];
        [f2 pring];
        
    }
    return 0;
}
