
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:
                                  
                                  @"A class defined so other classes can inherit from it",
                                  @"abstract class"
                                  @"To implement all the methods defined in a protocol",
                                  @"adopt",
                                  @"Stroing an object for later use"
                                  @"archiving",
                                 
                                  nil];
        
        for (NSString *key in glossary)
            NSLog(@"%@:%@",key,[glossary objectForKey:key]);
        
    }
    return 0;
}
