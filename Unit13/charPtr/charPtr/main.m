

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
char c = 'Q';
        char *charPtr = &c;
        NSLog(@"%c %c",c, *charPtr);
        
        c = '/';
        NSLog(@"%c %c", c,*charPtr);
        
        *charPtr = '(';
        NSLog(@"%c %c", c, *charPtr);
    }
    return 0;
}
