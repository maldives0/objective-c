//
//  ViewController.h
//  VisualAddressBook
//
//  Created by ChoiJinYoung on 2/29/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIWebViewDelegate>

@property(strong, nonatomic) IBOutlet UISegmentedControl *bookmarkSegmentedControl;
@property(strong, nonatomic) IBOutlet UITextField *urlTextField;
@property(strong, nonatomic) IBOutlet UIWebView *mainWebView;
@property(strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;

// - (IBAction)backkAction:(id)sender;
// - (IBAction)forwardkAction:(id)sender;
// - (IBAction)stopkAction:(id)sender;
// - (IBAction)refreshkAction:(id)sender;
@end
