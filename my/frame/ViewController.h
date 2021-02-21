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
{
    int i
}

@property(nonatomic, strong) IBOutlet UIImageView *imgView;
@property(nonatomic, strong) IBOutlet UIButton *toggleButton;
@property(nonatomic, strong) IBOutlet UISlider *speedSlider;
@property(nonatomic, strong) IBOutlet UILabel *speedLabel;

- (IBAction)toggleAction:(id)sender;
- (IBAction)changeSpeedAction:(id)sender;
@end
