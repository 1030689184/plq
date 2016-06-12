//
//  ZYTravelCV1.h
//  TravelHeNan
//
//  Created by mac on 16/3/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYTravelCV1 : UIViewController
{
    NSMutableArray *_dataArray;
    NSMutableArray *_titleArray;
    UIButton *_button;
    int _sort;
}
@property (nonatomic, assign) int select;
@end
