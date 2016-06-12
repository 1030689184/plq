//
//  CYBookViewController.m
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "CYHttpRequest.h"
#import "UIImageView+WebCache.h"
#import "CYChildshop.h"
#import "CYBookViewController.h"
#import "SVPullToRefresh.h"
#import "CYSearchViewController.h"
#import "CYUpdate.h"
@interface CYBookViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) UITableView *bigTableView;

@end

@implementation CYBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"旅游秘籍";
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage *image = [[UIImage imageNamed:@"search_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightBar = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(barButtonSearch)];
    self.navigationItem.rightBarButtonItem =rightBar;
    
    UIImage *image1 = [[UIImage imageNamed:@"back_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(goToBack)];
    
    [CYHttpRequest requestToGetTravelBookWithCurrentPage:_page Completion:^(NSArray *dataArray) {
        _dataArray =(NSMutableArray *) dataArray;
        [_bigTableView reloadData];
    }];
    [self.view addSubview:self.bigTableView];
    __weak CYBookViewController *vc = self;
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
    if (_page >= 2)
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

-(void)viewWillAppear:(BOOL)animated
{
    
    
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
    //    CYAllKind *kind = _dataArray[indexPath.row];
    //    //#error mark  字数组传不到字视图控制器
    //    NSLog(@"%lu",(unsigned long)kind.subclass.count);
    //    CYChildViewController *vc = [[CYChildViewController alloc]init];
    //    vc.title = kind.name;
    //    [vc requestDataArrayWith:kind.subclass];
    //    [self.navigationController pushViewController:vc animated:YES];
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
