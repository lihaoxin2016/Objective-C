#import "AddressBook.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        NSProcessInfo *process = [NSProcessInfo processInfo];
        NSArray *args = [process arguments];
        NSArray *result;
        NSString *homeDirectory = NSHomeDirectory();
        AddressBook *myBook = [NSKeyedUnarchiver unarchiveObjectWithFile:[homeDirectory stringByAppendingPathComponent: @"mybook"]];
        
        if ([args count] != 2) {
            NSLog(@"Usage: %@ ContactName", [process processName]);
            return 1;
        }
        
        result = [myBook lookup: args[1]];
        [result makeObjectsPerformSelector:@selector(print)];
        
    }
    return 0;
}