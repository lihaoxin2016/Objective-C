

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n,number, triangularNumber,counter;
        for (counter = 1; counter <= 5; ++counter){
            NSLog(@"What tringular number do you want?");
            scanf("%i", &number);
            
            triangularNumber = 0;
            
            for (n = 1; n <= number; ++n)
                triangularNumber += n;
            NSLog(@"Trianular number %i is %i", number, triangularNumber);
        
        
        }
        
        
        
    }
    return 0;
}