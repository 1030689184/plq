//
//  CYPartnerVC.h
//  TravelHeNan
//
//  Created by mac on 16/2/29.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYPartnerVC : UIViewController
{
    UIImageView *_imageView;
    BOOL _isMemory;
}
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passwork;
@property (weak, nonatomic) IBOutlet UIButton *memoryButton;
@property (weak, nonatomic) IBOutlet UIButton *forgetButton;
@property (nonatomic, assign) BOOL isMe;
@end
