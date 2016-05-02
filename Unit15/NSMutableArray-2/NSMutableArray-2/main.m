

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *numbers = [NSMutableArray array];
        int    i;
        for (i = 0; i < 10; ++i)
        {
            numbers[i] = @(i);
        }
        
        for(i = 0; i < 10; ++i){
            NSLog(@"%@",numbers[i]);
        }
        
        NSLog(@"=====Using a single NSLog");
        NSLog(@"%@",numbers);
        
    }
    return 0;
}
