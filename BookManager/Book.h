#import <Foundation/Foundation.h>
@interface Book : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *genre;
@property(nonatomic, strong) NSString *author;

- (void)bookPrint;
@end