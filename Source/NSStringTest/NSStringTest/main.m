//
//  main.m
//  NSStringTest
//
//  Created by ChoiJinYoung on 2/28/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"This is NSString";
        NSLog(@"str : %@",str);
        
        //immutable class
        NSString *result;
        result = [str substringFromIndex:6];
        result = [str substringToIndex:3];
        
        result = [[str substringToIndex:11]substringFromIndex:8];
        result = [[str substringFromIndex:8]substringToIndex:3];
        
        result = [str substringWithRange:NSMakeRange(8, 3)];
        NSLog(@"result : %@",result);
        
        NSMutableString *mstr = [NSMutableString stringWithString:str];
        
        [mstr appendString:@" and NSMutableString"];
        [mstr insertString:@"Mutable " atIndex:8];
        NSLog(@"mstr : %@",mstr);
        
    }
    return 0;
}
