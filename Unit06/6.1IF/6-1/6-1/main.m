

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number;
        NSLog(@"Type in you number:");
        scanf ("%i",&number);
        if (number < 0)
            number = -number;
        
        NSLog(@"The absolute value is %i",number);
    }
    return 0;
}
