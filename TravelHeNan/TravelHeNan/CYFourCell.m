//
//  CYFourCell.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//
#define CELL_WIDTH self.frame.size.width
#define CELL_HEIGHT self.frame.size.height
#define ITEM_WIDTH (self.frame.size.width-9)/2
#define ITEM_HEIGHT (self.frame.size.height-9)/2
#import "CYFourCell.h"
#import "UIImageView+WebCache.h"
#import "CYOption.h"
@implementation CYFourCell


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
    for (int j = 0; j < dataArray.count/2; j++)
    {
        for (int i =0 ; i < dataArray.count/2; i ++ )
        {
            CYOption *option = dataArray[i+j*2];
            UIImageView *imageView = [[UIImageView alloc]init];
            imageView.bounds = CGRectMake(0, 0, ITEM_WIDTH, ITEM_HEIGHT);
            CGFloat X = CELL_WIDTH/4+CELL_WIDTH*i/2;
            CGFloat Y = CELL_HEIGHT/4+CELL_HEIGHT*j/2;
            imageView.center = CGPointMake(X, Y);
            [imageView sd_setImageWithURL:[NSURL URLWithString:option.img]];
            [self addSubview:imageView];
        }
    }
    methodCount ++ ;
}

@end
