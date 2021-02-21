//
//  ViewController.h
//  SignUpScreen
//
//  Created by ChoiJinYoung on 3/3/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *idTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *telTextField;
@property (strong, nonatomic) IBOutlet UITextField *blogTextField;
@property (strong, nonatomic) IBOutlet UITextView *resultTextView;


- (IBAction)signUpAction:(id)sender;

@end

