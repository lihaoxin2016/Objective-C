

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        
        NSLog(@"TABLE OF TRINGULAR NUMBERS");
        NSLog(@" n sum from 1 to n");
        NSLog(@"--   ---------");
        
        
        
        
        triangularNumber = 0;
        
        for( n = 1; n <= 10; ++n)
            
            triangularNumber += n;
        NSLog(@" %i      %i",n, triangularNumber);
        
    }
    return 0;
}