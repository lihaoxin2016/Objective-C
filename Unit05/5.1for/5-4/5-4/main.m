

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number,triangularNumber;
       
        NSLog(@"What tringular number do you want?");
        scanf ("%i", &number);
        
        
        
        
        
        
        
        triangularNumber = 0;
        
        for( n = 1; n <= number; ++n)
        
            triangularNumber += n;
        NSLog(@" Tringular number %i is %i \n",number, triangularNumber);
        
    }
    return 0;
}
