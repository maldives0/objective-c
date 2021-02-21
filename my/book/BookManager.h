#import <Foundation/Foundation.h>

@class Book;
@interface BookManager : NSObject
{
    NSMutableArray *bookList;
}

- (void)addBook:(Book *)bookObject;
- (NSString *)showAllBook;
- (NSUInteger)countBook;
- (NSString *)findBook:(NSString *)name;
- (NSString *)removeBook:(NSString *)name;
@end