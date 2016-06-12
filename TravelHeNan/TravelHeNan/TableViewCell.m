//
//  TableViewCell.m
//  TravelHeNan
//
//  Created by mac on 16/3/4.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    self.layer.borderWidth = 1;
    self.layer.borderColor = [UIColor grayColor].CGColor;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
