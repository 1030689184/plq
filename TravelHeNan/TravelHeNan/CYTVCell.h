//
//  CYTVCell.h
//  TravelHeNan
//
//  Created by mac on 16/2/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYTVCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageTV;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIImageView *imageLV;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageWidth;

@end
