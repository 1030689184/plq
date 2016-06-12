//
//  ZYTableCell.m
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ZYTableCell.h"

@implementation ZYTableCell

- (void)awakeFromNib {
    
    
    
    
}

-(void)showData:(ZYOne *)one
{
    _name.text = one.name;
    _price.text = [[NSString alloc]initWithFormat:@"¥ %.2f",one.price];
    _price_yj.text = [[NSString alloc]initWithFormat:@"¥ %.2f",one.price_yj];
    _renqi.text = [[NSString alloc]initWithFormat:@"人气:%d",one.renqi];
    _shiyong.text = [[NSString alloc]initWithFormat:@"最近出售:%d",one.shiyong];

    NSDictionary *attribtDic = @{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle]};
    NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:_price_yj.text attributes:attribtDic];
    _price_yj.attributedText = attribtStr;
}


@end
