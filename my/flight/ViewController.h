//
//  ViewController.h
//  VisualAddressBook
//
//  Created by ChoiJinYoung on 2/29/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    NSIntegar buttonTag;
}
@property(strong, nonatomic) IBOutlet UIButton *departureDateButton;
@property(strong, nonatomic) IBOutlet UILabel *returnDateLabel;
@property(strong, nonatomic) IBOutlet UIButton *returnDateButton;
@property(strong, nonatomic) IBOutlet UIDatePicker *selectDatePicker;

- (IBAction)showReturnDateAction:(id)sender;
- (IBAction)showDatePickerAction:(id)sender;
- (IBAction)selectDateAction:(id)sender;

@end
