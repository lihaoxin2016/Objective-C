//
//  main.m
//  NSPathUtilities.h
//
//  Created by 李昊鑫 on 16/3/24.
//  Copyright © 2016年 lhx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     NSString  *fName = @"path.m";
        NSFileManager  *fm;
        NSString  *path, *tempdir, *extension, *homedir, *fullpath;
        NSArray   *compontes;
        
        fm = [NSFileManager defaultManager];
        
        tempdir = NSTemporaryDirectory();
        NSLog(@"Tempordry Directory is %@",tempdir);
        
        
        path = [fm currentDirectoryPath];
        NSLog(@"Base dir is %@",[path lastPathComponent]);
        
        
        fullpath = [path stringByAppendingPathComponent:fName];
        NSLog(@"fullpath to %@ is %@",fName,fullpath);
        
        extension = [fullpath pathExtension];
        NSLog(@"extension for %@ is %@", fullpath, extension);
        
        homedir = NSHomeDirectory();
        NSLog(@"Your home directory is %@", homedir);
        compontes = [homedir pathComponents];
        
        for (path in compontes)
            NSLog(@"%@",path);
        
        
        
    }
    return 0;
}
