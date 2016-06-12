//
//  CYSearchViewController.m
//  TravelHeNan
//
//  Created by mac on 16/3/3.
//  Copyright © 2016年 mac. All rights reserved.
//
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define WIDTH [UIScreen mainScreen].bounds.size.width
#import "CYSearchViewController.h"

@interface CYSearchViewController ()

@end

@implementation CYSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"分类搜索";
    UIImage *image1 = [[UIImage imageNamed:@"back_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(goToBack)];
    [self setSearchBar];
    
    
}

-(void)setSearchBar
{
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 64, WIDTH, 44)];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"灰"]];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 7, WIDTH-100, 30)];
    imageView.image = [UIImage imageNamed:@"searchstyle"];
    [view addSubview:imageView];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(WIDTH-130, 7, 33, 30)];
    label.backgroundColor = [UIColor whiteColor];
    [view addSubview:label];
    UIImageView *imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(13, 10, 25, 25)];
    imageView1.image = [UIImage imageNamed:@"search_button"];
    [view addSubview:imageView1];
    _field = [[UITextField alloc]initWithFrame:CGRectMake(50, 7, WIDTH-140, 30)];
    [view addSubview:_field];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(WIDTH-80, 7, 70, 30);
    [button setTitle:@"搜索" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor greenColor];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [view addSubview:button];
}
-(void)goToBack
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
@end
