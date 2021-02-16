//
//  Book.m
//  BookManager
//
//  Created by ChoiJinYoung on 2/29/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize name,genre,author;

-(void)bookPrint{
    NSLog(@"Name : %@",name);
    NSLog(@"Genre : %@",genre);
    NSLog(@"Author : %@",author);
}

@end
