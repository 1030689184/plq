//
//  CYOneViewController.m
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "CYOneViewController.h"
#import "CYHttpRequest.h"
#import "CYTVCell.h"
#import "UIImageView+WebCache.h"
#import "CYChildTwo.h"

#import "ZYTravelCV.h"
#import "CYUpdate.h"

@interface CYOneViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) UITableView *bigTableView;

@end

@implementation CYOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"分类";
    self.view.backgroundColor = [UIColor whiteColor];

    
    UIImage *image1 = [[UIImage imageNamed:@"back_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(goToBack)];
    [CYHttpRequest requestToGetOneCompletion:^(NSArray *dataArray) {
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
    CYChildTwo *one = _dataArray[indexPath.row];
    cell.imageLV.image = [UIImage imageNamed:@"arrow"];
    [cell.imageTV sd_setImageWithURL:[NSURL URLWithString:one.img]];
    cell.name.text = one.name;
    cell.imageWidth.constant = 45;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ZYTravelCV *vc = [[ZYTravelCV alloc]init];
    vc.select = (int)indexPath.row;
    CYChildTwo *one = _dataArray[indexPath.row];
    vc.title = one.name;
    [self.navigationController pushViewController:vc animated:YES];
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

-(void)goToBack
{
    [self.navigationController popViewControllerAnimated:YES];
}




@end
