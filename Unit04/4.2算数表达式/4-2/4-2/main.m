

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 100;
        int b = 2;
        int c = 25;
        int result;
        
        result = a - b;
        NSLog(@"a - b = %i",result);
        
        result = b * c;
        NSLog(@" b * c = %i",result);
        
        
        result = a / c;
        NSLog(@"a / c = %i", result);
        
        
        
        result = a + b * c;
        NSLog(@"a + b * c = %i",result);
    }
    return 0;
}
