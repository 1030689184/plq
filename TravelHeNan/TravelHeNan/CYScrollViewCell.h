//
//  CYScrollViewCell.h
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CYScrollViewCell : UICollectionViewCell<UIScrollViewDelegate>
{
    UIPageControl * _pageControl ;
    
    UIScrollView *  _scrollView;
    NSTimer *_time;
}
-(void)showData:(NSArray *)dataArray;
@end
