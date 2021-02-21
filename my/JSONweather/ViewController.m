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

- (void)viewDidLoad {
    [super viewDidLoad];
    NSError *err;
   datalist = [NSJSONSerialization JSONObjectWithData:[NSDate dataWithContentOfURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.json"]] opstions:NSJSONReadingAllowFragments error:$err]

   local = [[datalist objectForKey:@"weatherinfo"]objectForKey:@"local"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return local.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WeatherCell *cell = [tableView dequeueReusableCellWithIdentifier:@"weather" forIndexPath:indexPath];
    NSDictionary *dicTemp = [local objectAtIndex:indexPath.row];
    
    cell.countryLabel.text = [dicTemp objectForKey:@"country"];
    NSString *weatherStr = [dicTemp objectForKey:@"weather"];
    cell.weatherLabel.text = weatherStr;
    cell.temperatureLabel.text = [dicTemp objectForKey:@"temperature"];
    
    if ([weatherStr isEqualToString:@"맑음"]) {
        cell.imgView.image = [UIImage imageNamed:@"sunny.png"];
    }else if ([weatherStr isEqualToString:@"비"]) {
        cell.imgView.image = [UIImage imageNamed:@"rainy.png"];
    }else if ([weatherStr isEqualToString:@"흐림"]) {
        cell.imgView.image = [UIImage imageNamed:@"cloudy.png"];
    }else if ([weatherStr isEqualToString:@"눈"]) {
        cell.imgView.image = [UIImage imageNamed:@"snow.png"];
    }else{
        cell.imgView.image = [UIImage imageNamed:@"blizzard.png"];
    }
    
    
    return cell;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
