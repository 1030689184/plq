//
//  CYUpdate.m
//  TravelHeNan
//
//  Created by mac on 16/3/4.
//  Copyright © 2016年 mac. All rights reserved.
//
#define S_HEIGHT [UIScreen mainScreen].bounds.size.height
#define S_WIDTH  [UIScreen mainScreen].bounds.size.width
#import "CYUpdate.h"
#import "MBProgressHUD.h"
#import "Masonry.h"
@implementation CYUpdate
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"透明"]];
        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, S_HEIGHT/3, S_WIDTH-30, S_HEIGHT/3)];
        view1.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"黑色透明底"]];
        [self addSubview:view1];
        
        UIImageView *imageView = [[UIImageView alloc]init];
        imageView.backgroundColor = [UIColor colorWithRed:0 green:191 blue:255 alpha:1];
        imageView.bounds = CGRectMake(0, 0, S_WIDTH-30, 2);
        imageView.center = CGPointMake(view1.frame.size.width/2, view1.frame.size.height*2/5);
        [view1 addSubview:imageView];
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 60, view1.frame.size.height*2/5-3)];
        label.text = @"提示";
        label.textColor = [UIColor colorWithRed:0 green:191 blue:255 alpha:1];
        label.font = [UIFont systemFontOfSize:23];
        [view1 addSubview:label];
        
        
        
        UILabel *label1 = [[UILabel alloc]init];
        label1.bounds =CGRectMake(0, 0, 100, view1.frame.size.height*2/5-3);
        label1.center = CGPointMake(view1.frame.size.width*2/5, view1.frame.size.height*7/10);
        label1.text = @"  数据加载中...";
        label1.textColor = [UIColor whiteColor];
        label1.font = [UIFont systemFontOfSize:14];
        [view1 addSubview:label1];
        
        
        
        
        UIView *view =[[UIView alloc]init];
        view.bounds = CGRectMake(0, 0, 150, 150);
        view.center = CGPointMake(view1.frame.size.width/5-20, view1.frame.size.height*7/10);
        [view1 addSubview:view];
        [MBProgressHUD showHUDAddedTo:view animated:YES];
        
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(onTime) userInfo:nil repeats:YES];
        [timer fire];
    }
    return self;
}
-(void)onTime
{
    [self removeFromSuperview];
}
@end
