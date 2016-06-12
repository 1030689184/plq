//
//  CYFourCell.h
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYFourCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIButton *firstBtb;
@property (weak, nonatomic) IBOutlet UIButton *secondBtn;
@property (weak, nonatomic) IBOutlet UIButton *thirdBtn;
@property (weak, nonatomic) IBOutlet UIButton *fourBtn;
-(void)showData:(NSArray *)dataArray;
@end
