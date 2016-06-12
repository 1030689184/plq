//
//  ZYTableCell.h
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "ZYOne.h"
#import <UIKit/UIKit.h>

@interface ZYTableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageZY;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *price_yj;
@property (weak, nonatomic) IBOutlet UILabel *shiyong;
@property (weak, nonatomic) IBOutlet UILabel *renqi;
-(void)showData:(ZYOne *)one;
@end
