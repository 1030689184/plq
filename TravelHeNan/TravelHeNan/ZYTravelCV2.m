//
//  ZYTravelCV2.m
//  TravelHeNan
//
//  Created by mac on 16/3/2.
//  Copyright © 2016年 mac. All rights reserved.
//
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define WIDTH [UIScreen mainScreen].bounds.size.width
#import "ZYOne.h"
#import "UIImageView+WebCache.h"
#import "CYHttpRequest.h"
#import "ZYTableCell.h"
#import "ZYTravelCV2.h"
#import "CYSearchViewController.h"
#import "CYUpdate.h"

@interface ZYTravelCV2 ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) UITableView *bigTableView;

@end

@implementation ZYTravelCV2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataArray = [[NSMutableArray alloc]init];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(search)];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
    
    UIImage *image1 = [[UIImage imageNamed:@"back_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(goToBack)];
    
    [self setRequestHttp];
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
-(void)setRequestHttp
{

    [CYHttpRequest requestGetB1Completion:^(NSArray *dataArray) {
        [_dataArray addObject:dataArray];
        [CYHttpRequest requestGetB2Completion:^(NSArray *dataArray) {
            [_dataArray addObject:dataArray];
            [CYHttpRequest requestGetB3Completion:^(NSArray *dataArray) {
                [_dataArray addObject:dataArray];
                [CYHttpRequest requestGetB4Completion:^(NSArray *dataArray) {
                    [_dataArray addObject:dataArray];
                    [CYHttpRequest requestGetB5Completion:^(NSArray *dataArray) {
                        [_dataArray addObject:dataArray];
                        [CYHttpRequest requestGetB6Completion:^(NSArray *dataArray) {
                            [_dataArray addObject:dataArray];
                            [CYHttpRequest requestGetB7Completion:^(NSArray *dataArray) {
                                [_dataArray addObject:dataArray];
                                [CYHttpRequest requestGetB8Completion:^(NSArray *dataArray) {
                                    [_dataArray addObject:dataArray];
                                    [CYHttpRequest requestGetB9Completion:^(NSArray *dataArray) {
                                        [_dataArray addObject:dataArray];
                                        [CYHttpRequest requestGetB10Completion:^(NSArray *dataArray) {
                                            [_dataArray addObject:dataArray];
                                            [CYHttpRequest requestGetB11Completion:^(NSArray *dataArray) {
                                                [_dataArray addObject:dataArray];
                                                [CYHttpRequest requestGetB12Completion:^(NSArray *dataArray) {
                                                    [_dataArray addObject:dataArray];
                                                    [CYHttpRequest requestGetB13Completion:^(NSArray *dataArray) {
                                                        [_dataArray addObject:dataArray];
                                                        [CYHttpRequest requestGetB14Completion:^(NSArray *dataArray) {
                                                            [_dataArray addObject:dataArray];
                                                            [_bigTableView reloadData];
                                                        } send:_sort];
                                                    } send:_sort];
                                                } send:_sort];
                                            } send:_sort];
                                        } send:_sort];
                                    } send:_sort];
                                } send:_sort];
                            } send:_sort];
                        } send:_sort];
                    } send:_sort];
                } send:_sort];
            } send:_sort];
        } send:_sort];
    } send:_sort];

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (_dataArray.count == 0)
    {
        return 0;
    }
    
    NSArray *array = _dataArray[_select];
    return array.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZYTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    ZYOne *one = _dataArray[_select][indexPath.row];
    [cell showData:one];
    [cell.imageZY sd_setImageWithURL:[NSURL URLWithString:one.img]];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}
-(UITableView *)bigTableView
{
    if (!_bigTableView)
    {
        _bigTableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 118, WIDTH, HEIGHT-118) style:UITableViewStylePlain];
        _bigTableView.delegate = self;
        _bigTableView.dataSource = self;
        [_bigTableView registerNib:[UINib nibWithNibName:@"ZYTableCell" bundle:nil] forCellReuseIdentifier:@"cell"];
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 64, WIDTH, 50)];
        [self.view addSubview:view];
        NSArray *array = [[NSArray alloc]initWithObjects:@"最新",@"销量",@"价格",@"人气", nil];
        for (int i = 0; i < 4; i++)
        {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.tag = 1+i;
            float X = (WIDTH-17)/4;
            button.frame = CGRectMake(X*i+10, 10, X, 30);
            [button setTitle:array[i] forState:UIControlStateNormal];
            [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [button addTarget:self action:@selector(selectClick:) forControlEvents:UIControlEventTouchUpInside];
            [view addSubview:button];
            button.layer.borderWidth = 1;
            button.layer.borderColor = [UIColor greenColor].CGColor;
            
        }
        _button = (UIButton *)[self.view viewWithTag:1];
        [_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_button setBackgroundColor:[UIColor greenColor]];
    }
    return _bigTableView;
}
-(void)selectClick:(UIButton *)btn
{
    [_button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [_button setBackgroundColor:[UIColor whiteColor]];
    _button = (UIButton *)[self.view viewWithTag:btn.tag];
    [_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_button setBackgroundColor:[UIColor greenColor]];
    if (btn.tag == 3)
    {
        _sort = 3;
    }else if (btn.tag == 4)
    {
        _sort = 2;
    }else
    {
        _sort = (int) btn.tag-1;
    }
    [_dataArray removeAllObjects];
    [self setRequestHttp];
    [_bigTableView reloadData];
    
}
-(void)goToBack
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)search
{
    CYSearchViewController *vc = [[CYSearchViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
