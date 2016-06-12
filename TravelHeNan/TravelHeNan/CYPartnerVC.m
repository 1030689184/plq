//
//  CYPartnerVC.m
//  TravelHeNan
//
//  Created by mac on 16/2/29.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYPartnerVC.h"
#import "CYPartnerViewController.h"
@interface CYPartnerVC ()

@end

@implementation CYPartnerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登录";
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    if (_isMe)
    {
        UIImage *image1 = [[UIImage imageNamed:@"back_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(goToBack)];
    }
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"注册" style:UIBarButtonItemStyleDone target:self action:@selector(registButton)];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
    
    
    NSDictionary *normalTitleAttributes = @{
                                            NSForegroundColorAttributeName: [UIColor blackColor]
                                            };
    NSMutableAttributedString *title = [[NSMutableAttributedString alloc] initWithString:NSLocalizedString(@"忘记密码", nil) attributes:normalTitleAttributes];
    NSRange titleRange= {0,[title length]};
    [title addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:titleRange];
    [_forgetButton setAttributedTitle:title forState:UIControlStateNormal];
    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(13, 5, 20, 20)];
    _imageView.image = [UIImage imageNamed:@"remember_password_select"];
    [_memoryButton addSubview:_imageView];
//    [_memoryButton setImage:[UIImage imageNamed:@"btn_check_on_holo_light"] forState:UIControlStateNormal];
    [_memoryButton setTitle:@"    记住密码" forState:UIControlStateNormal];
}
- (IBAction)registButton:(id)sender
{
    NSLog(@"登录");
}
- (IBAction)memoryButton:(id)sender
{
    
    if (_isMemory)
    {
        _imageView.image = [UIImage imageNamed:@"remember_password_select"];
    }else
    {
        _imageView.image = [UIImage imageNamed:@"remember_password_normal"];
    }
    _isMemory = !_isMemory;
}
- (IBAction)forgetButton:(id)sender
{
    NSLog(@"忘记密码");
}

-(void)registButton
{
    CYPartnerViewController *vc = [[CYPartnerViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view  endEditing:YES];
}
-(void)goToBack
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
