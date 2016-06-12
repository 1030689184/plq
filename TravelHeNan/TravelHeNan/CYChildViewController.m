//
//  CYChildViewController.m
//  TravelHeNan
//
//  Created by mac on 16/2/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYChildViewController.h"

#import "CYChildOne.h"
#import "UIImageView+WebCache.h"
@interface CYChildViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) UITableView *childTableView;

@end

@implementation CYChildViewController

-(void)requestDataArrayWith:(NSArray *)array
{
    _dataArray = array;
    [_childTableView reloadData];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [[UIImage imageNamed:@"back_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(barButtonLeft)];
    [self.view addSubview:self.childTableView];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%ld",_dataArray.count);
    return _dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CYTVCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    CYChildOne *childOne = _dataArray[indexPath.row];
    cell.imageLV.image = [UIImage imageNamed:@"arrow"];
    [cell.imageTV sd_setImageWithURL:[NSURL URLWithString:childOne.img]];
    cell.imageWidth.constant = 45;
    cell.name.text = childOne.name;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
-(UITableView *)childTableView
{
    if (!_childTableView)
    {
        _childTableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _childTableView.delegate = self;
        _childTableView.dataSource = self;
        [_childTableView registerNib:[UINib nibWithNibName:@"CYTVCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    }
    return _childTableView;
}
-(void)barButtonLeft
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
