//
//  CYDetail1ViewController.h
//  TravelHeNan
//
//  Created by mac on 16/3/7.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZYTwo;
@interface CYDetail1ViewController : UIViewController
{
    ZYTwo *_objc;
    NSArray *_dataArray;
    CGFloat _myHeight;
    UIButton *_myButton;
    UILabel *_showNum;
    UILabel *_price;
    
}
@property (nonatomic, assign) int sort;
@property (nonatomic,assign) int row;
@property (nonatomic,assign) int section;
@end
