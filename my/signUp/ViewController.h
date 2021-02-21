//
//  ViewController.h
//  VisualAddressBook
//
//  Created by ChoiJinYoung on 2/29/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BookManager;
@interface ViewController : UIViewController
@property(strong, nonatomic) IBOutlet UITextField *nameTextField;
@property(strong, nonatomic) IBOutlet UITextField *idTextField;
@property(strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property(strong, nonatomic) IBOutlet UITextField *telTextField;
@property(strong, nonatomic) IBOutlet UITextField *blogTextField;
@property(strong, nonatomic) IBOutlet UITextView *resultTextView;

- (IBAction)signUpAction:(id)sender;
@end
