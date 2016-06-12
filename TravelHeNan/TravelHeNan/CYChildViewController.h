//
//  CYChildViewController.h
//  TravelHeNan
//
//  Created by mac on 16/2/27.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "CYTVCell.h"
#import <UIKit/UIKit.h>

@interface CYChildViewController : UIViewController
{
    NSArray *_dataArray;
}
-(void)requestDataArrayWith:(NSArray *)array;
@end
