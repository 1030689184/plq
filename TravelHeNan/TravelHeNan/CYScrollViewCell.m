//
//  CYScrollViewCell.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//
#define CELL_WIDTH self.frame.size.width
#define CELL_HEIGHT self.frame.size.height


#import "CYSVImage.h"
#import "UIImageView+WebCache.h"


#import "CYScrollViewCell.h"

@implementation CYScrollViewCell
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width,CELL_HEIGHT)];
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.pagingEnabled = YES ;
        _scrollView.delegate = self ;
        [self addSubview:_scrollView];
        _time = [NSTimer scheduledTimerWithTimeInterval:6 target:self selector:@selector(OnTime) userInfo:nil repeats:YES];
    }
    return self ;
}

#pragma mark ---配置数据
-(void)showData:(NSArray *)dataArray
{
    //无数据时，不配置 scrollView
    if (!dataArray)
    {
        return ;
    }
    
    static int methodCount = 0 ;
    
    //有数据的时候，因为数据是死数据，所以只配置一次就可以了；
    
    if (methodCount > 0)
    {
        return ;
    }
    //scrollView的填充
    
    NSInteger age = dataArray.count;
    _scrollView.contentSize = CGSizeMake(CELL_WIDTH * age , CELL_HEIGHT);
    _pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(CELL_WIDTH-120, CELL_HEIGHT-10, 120, 10)];
    _pageControl.numberOfPages = age ;
    _pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:1/255.0 green:201/255.0 blue:177/255.0 alpha:1];
    
    _pageControl.pageIndicatorTintColor = [UIColor colorWithRed:231/255.0 green:231/255.0 blue:231/255.0 alpha:0.7];
    
    [self addSubview:_pageControl];
    
    
        for (int i = 0 ; i < dataArray.count; i++)
        {
            CYSVImage * image = dataArray[i];
            UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(i*CELL_WIDTH, 0, CELL_WIDTH, CELL_HEIGHT)];
            [imageView sd_setImageWithURL:[NSURL URLWithString:image.img]];
            [_scrollView addSubview:imageView];
        }
    
    methodCount ++ ;
}
-(void)OnTime
{
    float nowx = _scrollView.contentOffset.x+CELL_WIDTH;
    [_scrollView setContentOffset:CGPointMake(nowx, 0) animated:YES ];
    
    int page = nowx/CELL_WIDTH ;
    if (page == 6)
    {
        page = 0;
        [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES ];
    }

}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    if (_time!=nil) {
        [_time invalidate];
        _time=nil;
    }
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (_time==nil) {
        _time=[NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(OnTime) userInfo:nil repeats:YES];
    }
    if (_scrollView.contentOffset.x==CELL_WIDTH*6) {
        _scrollView.contentOffset=CGPointMake(CELL_WIDTH, 0);
    }
    int page = scrollView.contentOffset.x/CELL_WIDTH ;
    _pageControl.currentPage = page ;
}
@end
