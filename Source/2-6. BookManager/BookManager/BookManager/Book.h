//
//  Book.h
//  BookManager
//
//  Created by ChoiJinYoung on 2/29/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *genre;
@property (nonatomic,strong) NSString *author;

-(void)bookPrint;
@end
