//
//  CYFiveCell.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#define CELL_WIDTH self.frame.size.width
#define CELL_HEIGHT self.frame.size.height-3

#define ITEM_WIDTH (self.frame.size.width-15)/4


#import "CYProduct.h"
#import "CYFiveCell.h"
#import "UIButton+WebCache.h"
#import "UIImageView+WebCache.h"
#import "CYShowViewController.h"
@implementation CYFiveCell

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(3, 0, CELL_WIDTH-6,CELL_HEIGHT-80)];
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.pagingEnabled = YES ;
        _scrollView.delegate = self ;
        _scrollView.bounces=NO;
        [self addSubview:_scrollView];
        _timer=[NSTimer scheduledTimerWithTimeInterval:4 target:self selector:@selector(changeScrollView) userInfo:nil repeats:YES];
    }
    return self ;
}
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
    
    NSInteger age = dataArray.count;
    _scrollView.contentSize = CGSizeMake(CELL_WIDTH * age , CELL_HEIGHT-80);
        for (int i =0 ; i < dataArray.count; i ++ )
        {
            CYProduct *option = dataArray[i];
            
            UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
            button.frame = CGRectMake((CELL_WIDTH-6)*i, 0, CELL_WIDTH, CELL_HEIGHT-80);
            button.tag = 1001+i;
            [button sd_setBackgroundImageWithURL:[NSURL URLWithString:option.img_bit] forState:UIControlStateNormal];
            [button addTarget:self action:@selector(menuButton:) forControlEvents:UIControlEventTouchUpInside];
            [_scrollView addSubview:button];
            
            UIImageView *imageView =[[UIImageView alloc]initWithFrame:CGRectMake(0, CELL_HEIGHT-140, CELL_WIDTH-6, 60)];
            imageView.alpha = 0.4;
            imageView.backgroundColor = [UIColor blackColor];
            [button addSubview:imageView];
            UIImageView *imageView1 =[[UIImageView alloc]initWithFrame:CGRectMake(50, CELL_HEIGHT-135, 3, 50)];
            imageView1.image = [UIImage imageNamed:@"searchBar_bg"];
            [button addSubview:imageView1];
            UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(10, CELL_HEIGHT-140, 50,60)];
            label1.numberOfLines = 2;
            label1.text = option.title;
            label1.textColor = [UIColor whiteColor];
            label1.font = [UIFont systemFontOfSize:17];
            [button addSubview:label1];
            UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(60, CELL_HEIGHT-140, CELL_WIDTH-66,60)];
            label2.text = option.name;
            label2.numberOfLines = 0;
            label2.textColor = [UIColor whiteColor];
            label2.font = [UIFont systemFontOfSize:16];
            [button addSubview:label2];
        }
    for (int i=0; i<4; i++)
    {
        CYProduct *option = nil;
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
        button1.frame = CGRectMake((ITEM_WIDTH+3)*i+3, CELL_HEIGHT-77, ITEM_WIDTH, 80);
        if (dataArray.count>i)
        {
            option = dataArray[i];
        }else
        {
            button1.enabled = NO;
        }
        [button1 sd_setBackgroundImageWithURL:[NSURL URLWithString:option.img] forState:UIControlStateNormal];
        button1.tag = 1101+i;
        [button1 addTarget:self action:@selector(pageButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button1];
        
        
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake((ITEM_WIDTH+3)*i+3, CELL_HEIGHT-77, ITEM_WIDTH, 80)];
        imageView.tag = button1.tag+10;
        imageView.image = [UIImage imageNamed:@"黑色透明底"];
        [self showBG:1101];
        [self addSubview:imageView];
        
        
        
    }

    methodCount ++ ;
}

-(void)menuButton:(UIButton*)btn
{
    CYShowViewController *vc = [[CYShowViewController alloc]init];
    vc.tag = btn.tag-1001;
    vc.section = 1;
    _myBlock(vc);
}
-(void)pageButton:(UIButton *)btn
{
    [self showBG:btn.tag];
    NSInteger page = btn.tag-1101;
    [_scrollView setContentOffset:CGPointMake(page*(CELL_WIDTH-6), 0) animated:YES ];
}
-(void)showBG:(NSInteger)page
{
    for (int i = 0; i < 4; i ++)
    {
        UIImageView *imageView = (UIImageView *)[self viewWithTag:1111+i];
        imageView.alpha = 0.5;
    }
    UIImageView *imageView = (UIImageView *)[self viewWithTag:page+10];
    imageView.alpha = 0;
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if (_timer==nil) {
        _timer=[NSTimer scheduledTimerWithTimeInterval:4 target:self selector:@selector(changeScrollView) userInfo:nil repeats:YES];
    }
    if (_scrollView.contentOffset.x==(CELL_WIDTH-6)*4) {
        _scrollView.contentOffset=CGPointMake((CELL_WIDTH-6), 0);
    }
    int page = scrollView.contentOffset.x/(CELL_WIDTH-6) ;
    
    [self showBG:page+1101];
}

-(void)changeScrollView
{
    float nowx = _scrollView.contentOffset.x+(CELL_WIDTH-6);
    [_scrollView setContentOffset:CGPointMake(nowx, 0) animated:YES ];
    
    int page = nowx/(CELL_WIDTH-6) ;
    
    
    
    if (page == 4)
    {
        page = 0;
       [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES ];
    }
    for (int i = 0; i < 4; i++)
    {
        UIButton *button = [_scrollView viewWithTag:1101+i];
        button.enabled = NO;
    }
    
    [self showBG:page+1101];
    for (int i = 0; i < 4; i++)
    {
        UIButton *button = [_scrollView viewWithTag:1101+i];
        button.enabled = YES;
    }
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    if (_timer!=nil) {
        [_timer invalidate];
        _timer=nil;
    }
}


@end
