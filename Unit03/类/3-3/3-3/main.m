#import <Foundation/Foundation.h>
//-------interface
@interface Fraction:NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator:(int) d;
@end


//-------@implemention
@implementation Fraction
{
    int numtrator;
    int denominator;
}
-(void) print
{
    NSLog (@"%i/%i",numtrator, denominator);
}
-(void) setNumerator: (int) n
{
    numtrator = n;
    
}
-(void) setDenominator: (int) d
{
    denominator = d;
}
@end



//--------------progam

int main (int argc, char *argv[])
{
    @autoreleasepool {
        Fraction *frac1 = [[Fraction alloc]init];
        Fraction *frac2 = [[Fraction alloc]init];
        
        [frac1 setNumerator: 2];
        [frac1 setDenominator: 3];
        
        [frac2 setNumerator: 3];
        [frac2 setDenominator: 7];
        NSLog (@"Frist fraction is:");
        [frac1 print];
        NSLog(@"Second fraction is:");
        [frac2 print];
        
    }
    return 0;
}