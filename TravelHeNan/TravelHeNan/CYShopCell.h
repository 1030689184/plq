//
//  CYShopCell.h
//  TravelHeNan
//
//  Created by mac on 16/2/28.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYShopCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageTV;
@property (weak, nonatomic) IBOutlet UIImageView *imageLV;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UILabel *operate;
@end
