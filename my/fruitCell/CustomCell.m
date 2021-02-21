//
//  CustomCell.m
//  CustomCell
//
//  Created by ChoiJinYoung on 3/6/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize imgView,nameLabel,valueLabel,amountLabel;
- (void)awakeFromNib {
    
    imgView.layer.cornerRadius = 50.0;
    imgView.layer.masksToBounds = YES;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
