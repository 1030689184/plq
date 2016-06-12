//
//  CYMarketViewController.m
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYMarketViewController.h"
#import "CYHttpRequest.h"
#import "UIImageView+WebCache.h"
#import "CYChildshop.h"
#import "SVPullToRefresh.h"
#import "CYSearchViewController.h"
#import "CYUpdate.h"

@interface CYMarketViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) UITableView *bigTableView;

@end

@implementation CYMarketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"商场";
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage *image = [[UIImage imageNamed:@"search_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightBar = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(barButtonSearch)];
    self.navigationItem.rightBarButtonItem =rightBar;
    
    UIImage *image1 = [[UIImage imageNamed:@"back_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(goToBack)];
    [CYHttpRequest requestToGetShopWithCurrentPage:_page Completion:^(NSArray *dataArray) {
        _dataArray =(NSMutableArray *) dataArray;
        
        [_bigTableView reloadData];
    }];
    [self.view addSubview:self.bigTableView];
    __weak CYMarketViewController *vc = self;
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
    [CYHttpRequest requestToGetShopWithCurrentPage:_page Completion:^(NSArray *dataArray) {
        [_dataArray addObjectsFromArray:dataArray];
        [_bigTableView reloadData];
        [_bigTableView.infiniteScrollingView stopAnimating];
    }];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CYShopCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    CYChildshop *kind = _dataArray[indexPath.row];
    cell.imageLV.image = [UIImage imageNamed:@"arrow"];
    [cell.imageTV sd_setImageWithURL:[NSURL URLWithString:kind.photo]];
    cell.name.text = kind.name;
    cell.operate.text = kind.time ;
    cell.address.text = kind.digest;
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
-(void)goToBack
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
