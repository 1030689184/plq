//
//  CYFiveCell.h
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYFiveCell : UICollectionViewCell<UIScrollViewDelegate>
{
    UIScrollView *  _scrollView;
    NSTimer*_timer;
}
@property (nonatomic,copy) void(^myBlock)(UIViewController * vc);
-(void)showData:(NSArray *)dataArray;
@end
