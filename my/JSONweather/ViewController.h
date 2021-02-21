//
//  ViewController.h
//  VisualAddressBook
//
//  Created by ChoiJinYoung on 2/29/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource>
{
    NSArray *datalist;
    NSDictionary *local;
}

@end
