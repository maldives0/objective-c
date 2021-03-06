//
//  DetailViewController.m
//  CustomCell
//
//  Created by ChoiJinYoung on 3/6/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize nameLabel,amountLabel,valueLabel,imgView,detailData;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    imgView.layer.cornerRadius = 50.0;
    imgView.layer.masksToBounds = YES;
    
    nameLabel.text = [detailData objectForKey:@"name"];
    amountLabel.text = [detailData objectForKey:@"amount"];
    valueLabel.text = [detailData objectForKey:@"value"];
    
    imgView.image = [UIImage imageNamed:[detailData objectForKey:@"image"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
