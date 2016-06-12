//
//  CYChildKindViewController.m
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "CYHttpRequest.h"
#import "UIImageView+WebCache.h"
#import "CYChildOne.h"
#import "CYChildKindViewController.h"

#import "CYMarketViewController.h"
#import "CYBookViewController.h"
#import "CYTravelViewController.h"
#import "CYNewViewController.h"
#import "CYSearchViewController.h"

#import "CYUpdate.h"

@interface CYChildKindViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) UITableView *bigTableView;

@end

@implementation CYChildKindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"分类";
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage *image = [[UIImage imageNamed:@"search_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightBar = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(barButtonSearch)];
    self.navigationItem.rightBarButtonItem =rightBar;
    
    UIImage *image1 = [[UIImage imageNamed:@"back_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(goToBack)];
    [CYHttpRequest requestToGetKindCompletion:^(NSArray *dataArray) {
        _dataArray = dataArray;
        [_bigTableView reloadData];
        
    }];
    [self.view addSubview:self.bigTableView];
}
-(void)viewDidAppear:(BOOL)animated
{
    static int num = 0;
    if (num > 0)
    {
        return;
    }
    num ++;
    CYUpdate *update = [[CYUpdate alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:update];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CYTVCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    CYChildOne *kind = _dataArray[indexPath.row];
    cell.imageLV.image = [UIImage imageNamed:@"arrow"];
    cell.imageWidth.constant = 0;
    cell.name.text = kind.name;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        CYTravelViewController *vc = [[CYTravelViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 1)
    {
        CYBookViewController *vc = [[CYBookViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 2)
    {
        CYMarketViewController *vc = [[CYMarketViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 3)
    {
        CYNewViewController *vc = [[CYNewViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}
-(UITableView *)bigTableView
{
    if (!_bigTableView)
    {
        _bigTableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _bigTableView.delegate = self;
        _bigTableView.dataSource = self;
        [_bigTableView registerNib:[UINib nibWithNibName:@"CYTVCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    }
    return _bigTableView;
}
-(void)barButtonSearch
{
    CYSearchViewController *vc = [[CYSearchViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)goToBack
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
