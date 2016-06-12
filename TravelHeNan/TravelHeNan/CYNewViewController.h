//
//  CYNewViewController.h
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "CYShopCell.h"

#import <UIKit/UIKit.h>

@interface CYNewViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *_dataArray;
    int _page;
}
@property (nonatomic, retain) UITableView *bigTableView;

@end
