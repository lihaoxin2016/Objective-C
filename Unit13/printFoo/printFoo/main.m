

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int foo = 10;
        void (^printFoo)(void) =
        ^(void) {
            NSLog(@"foo = %i", foo);
        };
        foo = 15;
        printFoo ();
        
    }
    return 0;
}
