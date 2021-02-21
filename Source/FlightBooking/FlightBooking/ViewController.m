//
//  ViewController.m
//  FlightBooking
//
//  Created by ChoiJinYoung on 3/5/16.
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    selectDatePicker.hidden = YES;
}


- (IBAction)showReturnDateAction:(id)sender {
    //NSLog(@"description1 : %@",[sender description]);
//    if ([sender isOn]) {
//        returnDateLabel.hidden = NO;
//        returnDateButton.hidden = NO;
//    }else{
//        returnDateLabel.hidden = YES;
//        returnDateButton.hidden = YES;
//    }
    
    returnDateLabel.hidden = ![sender isOn];
    returnDateButton.hidden = ![sender isOn];
}

- (IBAction)showDatePickerAction:(id)sender {
    //NSLog(@"description2 : %@",[sender description]);
    selectDatePicker.hidden = NO;
    buttonTag = [sender tag];
}

- (IBAction)selectDateAction:(id)sender {
    //NSLog(@"description3 : %@",[sender description]);
    //NSDate *today = [[NSDate alloc]init];
    //NSLog(@"today : %@", today);
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"YY-MM-d hh:mma";
    
    NSString *dateString = [formatter stringFromDate:[sender date]];
    //NSLog(@"%@",dateString);
    if (buttonTag == 1) {
        [departureDateButton setTitle:dateString forState:UIControlStateNormal];
    }else{
        [returnDateButton setTitle:dateString forState:UIControlStateNormal];
    }
    
    
}
@end






