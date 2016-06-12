//
//  CYShopViewController.m
//  TravelHeNan
//
//  Created by mac on 16/2/25.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "CYShopCell.h"
#import "CYShopPart.h"
#import "CYHttpManager.h"
#import "UIImageView+WebCache.h"
#import "CYShopViewController.h"
#import "SVPullToRefresh.h"
#import "CYSearchViewController.h"

#import "CYUpdate.h"
@interface CYShopViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) UITableView *bigTableView;

@end

@implementation CYShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createBarButton];
   [CYHttpManager requestToGetShopWithCurrentPage:_page Completion:^(NSArray *shopArray) {
       _shopArray =(NSMutableArray *) shopArray;
       [_bigTableView reloadData];
   }];
    [self.view addSubview:self.bigTableView];
    __weak CYShopViewController *vc = self;
    [_bigTableView addPullToRefreshWithActionHandler:^{
        [vc addPullNewData];
    }];
    [_bigTableView addInfiniteScrollingWithActionHandler:^{
        [vc addInfiniteNewData];
    }];

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
-(void)addPullNewData
{
    [_bigTableView.pullToRefreshView stopAnimating];
    
}
-(void)addInfiniteNewData
{
    if (_page >= 1)
    {
        [_bigTableView.infiniteScrollingView stopAnimating];
        return;
    }
    _page ++;
    [CYHttpManager requestToGetShopWithCurrentPage:_page Completion:^(NSArray *shopArray) {
        [_shopArray addObjectsFromArray:shopArray];
        [_bigTableView reloadData];
        [_bigTableView.infiniteScrollingView stopAnimating];
    }];
}

-(void)createBarButton
{
    UIImage *image = [[UIImage imageNamed:@"search_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *image1 = [[UIImage imageNamed:@"order_class"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightBar = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(barButtonSearch)];
    UIBarButtonItem *rightBar2 = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(barButtonOrder)];
    self.navigationItem.rightBarButtonItems = @[rightBar,rightBar2];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 40, 30)];
    label.text = @"全部";
    label.textColor = [UIColor whiteColor];
    UIImageView *imageview = [[UIImageView alloc]initWithFrame:CGRectMake(40, 9, 15, 12)];
    imageview.image = [UIImage imageNamed:@"city_choose_button"];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 70, 30);
    [button addSubview:label];
    [button addSubview:imageview];
    [button addTarget:self action:@selector(leftButton) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftBar = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = leftBar;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _shopArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CYShopCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    CYShopPart *partner = _shopArray[indexPath.row];
    cell.imageLV.image = [UIImage imageNamed:@"arrow"];
    [cell.imageTV sd_setImageWithURL:[NSURL URLWithString:partner.logo]];
    cell.name.text = partner.name;
    cell.address.text = partner.address;
    cell.operate.text = partner.operate;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
-(UITableView *)bigTableView
{
    if (!_bigTableView)
    {
        _bigTableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _bigTableView.delegate = self;
        _bigTableView.dataSource = self;
        [_bigTableView registerNib:[UINib nibWithNibName:@"CYShopCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    }
    return _bigTableView;
}
-(void)barButtonSearch
{
    CYSearchViewController *vc = [[CYSearchViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)leftButton
{
    NSLog(@"left");
}
-(void)barButtonOrder
{
    NSLog(@"order");
}
@end
