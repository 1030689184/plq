//
//  CYSearchCell.h
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYSearchCell : UICollectionViewCell
@property (nonatomic,copy) void(^myBlock)(UIViewController * vc);
@end
