//
//  CYSearchCell.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYSearchCell.h"
#import "CYSearchViewController.h"

@implementation CYSearchCell

- (void)awakeFromNib {
    // Initialization code
}
- (IBAction)scanButton:(id)sender
{
    
}
- (IBAction)searchButton:(id)sender
{
    CYSearchViewController *vc = [[CYSearchViewController alloc]init];
    _myBlock(vc);
}

@end
