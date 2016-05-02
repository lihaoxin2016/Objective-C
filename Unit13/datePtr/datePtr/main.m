

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       struct date
        {
            int month;
            int day;
            int year;
            
        };
        struct date today, *datePtr;
        
        datePtr = &today;
        datePtr ->month = 3;
        datePtr ->day = 19;
        datePtr ->year = 2016;
        
        
        
        NSLog(@"Today's date is %i/%i/%.2i.",datePtr->month,datePtr->day,datePtr->year % 100);
    }
    return 0;
}
