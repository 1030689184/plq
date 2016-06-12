//
//  CYShowViewController.h
//  TravelHeNan
//
//  Created by mac on 16/3/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZYTwo;
@interface CYShowViewController : UIViewController
{
    ZYTwo *_objc;
    NSArray *_dataArray;
    CGFloat _myHeight;
    UIButton *_myButton;
    UILabel *_showNum;
    UILabel *_price;
    
}
@property (nonatomic, assign) NSInteger section;
@property (nonatomic, assign) NSInteger tag;
@end
