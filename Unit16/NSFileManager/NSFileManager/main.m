

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   NSString     *dirName = @"testdir";
        NSString   *path;
        NSFileManager   *fm;
        
        fm = [NSFileManager defaultManager];
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@",path);
        
        if ([fm createDirectoryAtPath:dirName withIntermediateDirectories:YES attributes:nil error:NULL]==NO)
        {
            NSLog(@"Couldn't create directory!");
            return 1;
        }
        
        if([fm moveItemAtPath:dirName toPath:@"newdir" error:NULL]==NO)
        {
            NSLog(@"Directory rename failed!");
            return 2;
        }
        
        
        if ([fm changeCurrentDirectoryPath:@"newdir"]==NO){
            NSLog(@"Change directory failed!");
            return 3;
            
            
        }
        
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);
        
        NSLog(@"All operations were successful!");
    }
    return 0;
}
