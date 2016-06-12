//
//  CYThirdCell.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//


#define CELL_WIDTH self.frame.size.width
#define CELL_HEIGHT self.frame.size.height
#define ITEM_WIDTH (self.frame.size.width-20)/4




#import "UIImageView+WebCache.h"
#import "CYThirdCell.h"
#import "CYNew.h"


@implementation CYThirdCell

-(void)showData:(NSArray *)dataArray
{
    if (!dataArray)
    {
        return ;
    }
    
    static int methodCount = 0 ;
    if (methodCount > 0)
    {
        return ;
    }
    
    for (int i =0 ; i < dataArray.count; i ++ )
    {
        CYNew *new = dataArray[i];
        UIImageView *imageView = [[UIImageView alloc]init];
        imageView.bounds = CGRectMake(0, 0, 50, 50);
        CGFloat X = CELL_WIDTH/8+CELL_WIDTH*i/4;
        imageView.center = CGPointMake(X, CELL_HEIGHT*3/10+10);
        [imageView sd_setImageWithURL:[NSURL URLWithString:new.icon]];
        [self addSubview:imageView];
        UILabel *label = [[UILabel alloc]init];
        label.bounds = CGRectMake(0, 0, 100, 35);
        label.center = CGPointMake(X, CELL_HEIGHT*4/5+3);
        label.text = new.title ;
        label.textColor = [UIColor whiteColor];
        label.textAlignment = 1;
        [self addSubview:label];
    }
    methodCount ++ ;
}

@end
