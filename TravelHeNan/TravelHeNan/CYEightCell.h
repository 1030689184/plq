//
//  CYEightCell.h
//  TravelHeNan
//
//  Created by mac on 16/2/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYEightCell : UICollectionViewCell<UIScrollViewDelegate>
{
    UIScrollView *  _scrollView;
    NSTimer*_timer;
}
-(void)showData:(NSArray *)dataArray;
@property (nonatomic,copy) void(^myBlock)(UIViewController * vc);
@end
