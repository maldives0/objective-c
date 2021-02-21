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
@synthesize nameTextField,idTextField,passwordTextField,telTextField,blogTextField,resultTextView;
- (void)viewDidLoad {
    [super viewDidLoad];
// nameTextField.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
  [textField resignFirstResponder];
    return YES;
}
- (IBAction)signUpAction:(id)sender{
    resultTextView.text = [NSString stringWithFormat:@"
    %@ 님 환영합니다",nameTextField.text ];
}
@end
