//
//  CYThirdCell.h
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYThirdCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIButton *marketButton;
@property (weak, nonatomic) IBOutlet UIButton *bookButton;
@property (weak, nonatomic) IBOutlet UIButton *travelButton;
-(void)showData:(NSArray *)dataArray;
@property (weak, nonatomic) IBOutlet UIButton *moreButton;
@end
