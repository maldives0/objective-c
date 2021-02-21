//
//  ViewController.m
//  VisualAddressBook
//
//  Created by ChoiJinYoung on 2/29/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import "ViewController.h"
#import "BookManager.h"
#import "Book.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView, toggleButton,speedSlider, speedLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
NSArray *cuteImages = [[NSArray alloc]initWithObjects:
   [UIImage imageNamed:@"1.jpg"],
                           [UIImage imageNamed:@"2.jpg"],
                           [UIImage imageNamed:@"3.jpg"],
                           [UIImage imageNamed:@"4.jpg"],
                           [UIImage imageNamed:@"5.jpg"],
                           [UIImage imageNamed:@"6.jpg"],
                           [UIImage imageNamed:@"7.jpg"],
                           [UIImage imageNamed:@"8.jpg"],
                           [UIImage imageNamed:@"9.jpg"],
                           [UIImage imageNamed:@"10.jpg"],
                           [UIImage imageNamed:@"11.jpg"],
                           [UIImage imageNamed:@"12.jpg"],
                           [UIImage imageNamed:@"13.jpg"],
                           [UIImage imageNamed:@"14.jpg"],
                           [UIImage imageNamed:@"15.jpg"],
nil];
imgView.animationImages = cuteImages;
imgView.animationDuration = 15.0;
}

-(IBAction)toggleAction:(id)sender{
    if([imgView isAnimating]){
        [imgView stopAnimating];
        [toggleButton setTitle:@"start" forState:UIControlStateNormal];
    }else{
         [imgView startAnimating];
        [toggleButton setTitle:@"stop" forState:UIControlStateNormal];
    }
}
-(IBAction)changeSpeedAction:(id)sender{
    NSLog(@"%i",i++);
    imgView.animationDuration = 15-speedSlider.value;
    [imgView startAnimating];
     [toggleButton setTitle:@"stop" forState:UIControlStateNormal];

     NSString *str = [[NSString alloc]initWithFormat:@"%.2f",
     speedSlide.value];
     speedLabel.text = str;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
