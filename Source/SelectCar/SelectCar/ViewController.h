//
//  ViewController.h
//  SelectCar
//
//  Created by ChoiJinYoung on 3/5/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>{
    NSArray *companyName;
    
    NSArray *carModel;
    NSArray *carModelImage;
    
    NSArray *tesla;
    NSArray *teslaImageNames;
    
    NSArray *lamborghini;
    NSArray *lamborghiniImageNames;
    
    NSArray *porsche;
    NSArray *porscheImageNames;
}

@property (strong, nonatomic) IBOutlet UIImageView *imgView;

@end

