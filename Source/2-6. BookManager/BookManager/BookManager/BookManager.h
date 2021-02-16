//
//  BookManager.h
//  BookManager
//
//  Created by ChoiJinYoung on 2/29/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;
@interface BookManager : NSObject{
    NSMutableArray *bookList;
}

-(void)addBook:(Book *)bookObject;
-(NSString *)showAllBook;
-(NSUInteger)countBook;
-(NSString *)findBook:(NSString *)name;
-(NSString *)removeBook:(NSString *)name;
@end
