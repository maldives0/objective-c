//
//  ViewController.m
//  VisualAddressBook
//
//  Created by ChoiJinYoung on 2/29/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize returnDateLabel,returnDateButton,selectDatePicker,departureDateButton;
- (void)viewDidLoad {
    [super viewDidLoad];
     buttonTag = 0;
   returnDateLabel.hidden = YES;
    returnDateButton.hidden = YES;
    selectDatePicker.hidden = YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    selectDatePicker.hidden = YES;
}
- (IBAction)showDatePickerAction:(id)sender {
    //NSLog(@"description2 : %@",[sender description]);
    selectDatePicker.hidden = NO;
    buttonTag = [sender tag];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showReturnDateAction:(id)sender {
    //NSLog(@"description1 : %@",[sender description]);
//    if ([sender isOn]) {  // [sender isOn] = returnDateLabel.hidden = YES;
  
//        returnDateLabel.hidden = NO;
//        returnDateButton.hidden = NO;
//    }else{
//        returnDateLabel.hidden = YES;
//        returnDateButton.hidden = YES;
//    }
    
    returnDateLabel.hidden = ![sender isOn];
    returnDateButton.hidden = ![sender isOn];
}

- (IBAction)selectDateAction:(id)sender {
    //NSLog(@"description3 : %@",[sender description]);
    //NSDate *today = [[NSDate alloc]init];
    //NSLog(@"today : %@", today);
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"YY-MM-dd hh:mma";

    //   NSString *dateString = [formatter stringFromDate:[selectDatePicker date]];
    NSString *dateString = [formatter stringFromDate:[sender date]];

    //NSLog(@"%@",dateString);
    if (buttonTag == 1) {
        [departureDateButton setTitle:dateString forState:UIControlStateNormal];
    }else{
        [returnDateButton setTitle:dateString forState:UIControlStateNormal];
    }
   
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
@end
