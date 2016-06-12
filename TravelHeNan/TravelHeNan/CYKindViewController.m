//
//  CYKindViewController.m
//  TravelHeNan
//
//  Created by mac on 16/2/25.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYKindViewController.h"
#import "CYChildViewController.h"

#import "CYHttpManager.h"
#import "UIImageView+WebCache.h"
#import "CYAllKind.h"


#import "CYOneViewController.h"
#import "CYSecondViewController.h"
#import "CYThirdViewController.h"
#import "CYFourViewController.h"
#import "CYFiveViewController.h"
#import "CYSixViewController.h"

#import "CYSearchViewController.h"

#import "CYUpdate.h"

@interface CYKindViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) UITableView *bigTableView;
@end

@implementation CYKindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [[UIImage imageNamed:@"search_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightBar = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(barButtonSearch)];
    self.navigationItem.rightBarButtonItem =rightBar;
    [CYHttpManager requestToGetKindCompletion:^(NSArray *kindArray) {
        _kindArray = kindArray;
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
    return _kindArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CYTVCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    CYAllKind *kind = _kindArray[indexPath.row];
    cell.imageLV.image = [UIImage imageNamed:@"arrow"];
    [cell.imageTV sd_setImageWithURL:[NSURL URLWithString:kind.img]];
    cell.name.text = kind.name;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CYAllKind *kind = _kindArray[indexPath.row];
    if (indexPath.row == 0)
    {
        CYOneViewController *vc = [[CYOneViewController alloc]init];
        vc.title = kind.name;
        [self.navigationController pushViewController:vc animated:YES];
    }else
    if (indexPath.row == 1)
    {
        CYSecondViewController *vc = [[CYSecondViewController alloc]init];
        vc.title = kind.name;
        [self.navigationController pushViewController:vc animated:YES];
    }else
    if (indexPath.row == 2)
    {
        CYThirdViewController *vc = [[CYThirdViewController alloc]init];
        vc.title = kind.name;
        [self.navigationController pushViewController:vc animated:YES];
    }else
    if (indexPath.row == 5)
    {
        CYFourViewController *vc = [[CYFourViewController alloc]init];
        vc.title = kind.name;
        [self.navigationController pushViewController:vc animated:YES];
    }else
    if (indexPath.row == 3)
    {
        CYFiveViewController *vc = [[CYFiveViewController alloc]init];
        vc.title = kind.name;
        [self.navigationController pushViewController:vc animated:YES];
    }else
    if (indexPath.row == 4)
    {
        CYSixViewController *vc = [[CYSixViewController alloc]init];
        vc.title = kind.name;
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
@end
