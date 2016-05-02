

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager    *fm;
        NSData     *fileData;
        
        fm= [NSFileManager defaultManager];
        fileData = [fm contentsAtPath:@"newfile2"];
        if (fileData ==nil){
            NSLog(@"File read failed!");
            return 1;
        }
        if([fm createFileAtPath:@"newfile3" contents:fileData attributes:nil]==NO){
            NSLog(@"Couldn't create the copy!");
            return 2;
            
        }
        NSLog(@"File copy was successful!");
    }
    return 0;
}
