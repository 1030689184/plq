//
//  CYPartnerViewController.m
//  TravelHeNan
//
//  Created by mac on 16/2/25.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYPartnerViewController.h"
#import "CYHttpRequest1.h"
#import "TableViewCell.h"
#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

@interface CYPartnerViewController ()<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
@property (nonatomic, retain) UITableView *bigTableView;

@end

@implementation CYPartnerViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.title = @"快速注册";
    UIImage *image1 = [[UIImage imageNamed:@"back_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(goToBack)];
    _array0 = [[NSArray alloc]initWithObjects:@"账号:",@"密码:",@"手机:",@"所在地区",@"详细地址",@"公司/个人:",@"类型:", nil];
    _array1 = [[NSArray alloc]initWithObjects:@"6-12位,限字母和数字",@"6-8位,限字母和数字",@"11位,手机号",@"点击选择所在地",@"请输入详细地址",@"公司或个人名称",@"普通会员", nil];
    [self.view addSubview:self.bigTableView];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 8;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellAccessoryNone;
    if (indexPath.row == 7)
    {
        cell.labeL.text = @"";
        cell.textTF.text = @"";
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.bounds = CGRectMake(0, 0, cell.frame.size.width/3, cell.frame.size.height*2/3);
        button.center = CGPointMake(WIDTH/2, cell.frame.size.height/2);
        button.backgroundColor = [UIColor greenColor];
        [button setTintColor:[UIColor whiteColor]];
        [button setTitle:@"确认注册" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(confirmClick) forControlEvents:UIControlEventTouchUpInside];
        [cell addSubview:button];
        return cell;
    }
    
    cell.labeL.text = _array0[indexPath.row];
    cell.textTF.placeholder = _array1[indexPath.row];
    cell.textTF.tag =110;
    cell.textTF.delegate = self;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 80;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView viewWithTag:indexPath.row];
    if (indexPath.row == 0)
    {
        _userName = [cell viewWithTag:110];
    }
    if (indexPath.row == 1)
    {
        _password = [cell viewWithTag:110];
    }
    if (indexPath.row == 2)
    {
        _phone = [cell viewWithTag:110];
    }
    if (indexPath.row == 3)
    {
        _uname = [cell viewWithTag:110];
    }
    if (indexPath.row == 4)
    {
        _address = [cell viewWithTag:110];
    }
    if (indexPath.row == 5)
    {
        _type = [cell viewWithTag:110];
    }
    
    
    
    
}
-(UITableView *)bigTableView
{
    if (!_bigTableView)
    {
        _bigTableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT) style:UITableViewStylePlain];
        _bigTableView.delegate = self;
        _bigTableView.dataSource = self;
        [_bigTableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
        _bigTableView.scrollEnabled = YES;
        _bigTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _bigTableView.showsVerticalScrollIndicator = NO;
    }
    return _bigTableView;
}
-(void)confirmClick
{
    NSLog(@"%s－确认－%d",__FUNCTION__,__LINE__);
}
-(void)goToBack
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.view endEditing:YES];
    return YES;
}
@end
