//
//  CYShowViewController.m
//  TravelHeNan
//
//  Created by mac on 16/3/2.
//  Copyright © 2016年 mac. All rights reserved.
//
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define WIDTH [UIScreen mainScreen].bounds.size.width
#import "CYShowViewController.h"
#import "CYHttpRequest1.h"
#import "UIImageView+WebCache.h"
#import "ZYTwo.h"
#import "ZYTwoChild1.h"
#import "CYUpdate.h"
#import "CYPartnerVC.h"

@interface CYShowViewController ()<UIScrollViewDelegate,UIWebViewDelegate>
{
    UIWebView *webview;
}
@property (nonatomic, retain) UIScrollView *myScrollView;

@end

@implementation CYShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage *image1 = [[UIImage imageNamed:@"back_button"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image1 style:UIBarButtonItemStylePlain target:self action:@selector(goToBack)];
   
    
    [self getRequestHttp];
    
    [self.view addSubview:self.myScrollView];
}
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    CYUpdate *update = [[CYUpdate alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:update];
    return YES;
}
-(void)getRequestHttp
{
    __weak CYShowViewController *weakSelf = self;
    if (_section==1)
    {
        if (_tag==0)
        {
            [CYHttpRequest1 requestGetA2Completion:^(ZYTwo *two) {
                _objc = two;
                [weakSelf setScrollViewContent];
            }];
        }else if (_tag==1)
        {
            [CYHttpRequest1 requestGetA3Completion:^(ZYTwo *two) {
                _objc = two;
                [weakSelf setScrollViewContent];
            }];
        }else if (_tag==2)
        {
            [CYHttpRequest1 requestGetA4Completion:^(ZYTwo *two) {
                _objc = two;
                [weakSelf setScrollViewContent];
            }];
        }else if (_tag==3)
        {
            [CYHttpRequest1 requestGetA5Completion:^(ZYTwo *two) {
                _objc = two;
                [weakSelf setScrollViewContent];
            }];
        }
        
    }else if (_section ==2)
    {
        if (_tag==0)
        {
            [CYHttpRequest1 requestGetA6Completion:^(ZYTwo *two) {
                _objc = two;
                [weakSelf setScrollViewContent];
            }];
        }else if (_tag==1)
        {
            [CYHttpRequest1 requestGetA7Completion:^(ZYTwo *two) {
                _objc = two;
                [weakSelf setScrollViewContent];
            }];
        }else if (_tag==2)
        {
            [CYHttpRequest1 requestGetA8Completion:^(ZYTwo *two) {
                _objc = two;
                [weakSelf setScrollViewContent];
            }];
        }else if (_tag==3)
        {
            [CYHttpRequest1 requestGetA9Completion:^(ZYTwo *two) {
                _objc = two;
                [weakSelf setScrollViewContent];
            }];
        }
    }else if (_section==3)
    {
        if (_tag==0)
        {
            [CYHttpRequest1 requestGetA10Completion:^(ZYTwo *two) {
                _objc = two;
                [weakSelf setScrollViewContent];
            }];
        }else if (_tag==1)
        {
            [CYHttpRequest1 requestGetA11Completion:^(ZYTwo *two) {
                _objc = two;
                [weakSelf setScrollViewContent];
            }];
        }else if (_tag==2)
        {
            [CYHttpRequest1 requestGetA12Completion:^(ZYTwo *two) {
                _objc = two;
                [weakSelf setScrollViewContent];
            }];
        }
    }
    
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{

    CGFloat a= _myScrollView.contentOffset.y;
    NSLog(@"%f",a);
    if (a>=190) {
        webview.scrollView.scrollEnabled=YES;
    }
    if (a<190)
    {
        webview.scrollView.scrollEnabled = NO;
    }
}


-(void)setScrollViewContent
{
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 190)];
    [imageView sd_setImageWithURL:[NSURL URLWithString:_objc.photo_string[0]]];
    [_myScrollView addSubview:imageView];
    _myHeight += 200;
    
    for (int i = 0; i < 2; i++)
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(10+(WIDTH-20)/2*i, _myHeight, (WIDTH-20)/2, 30);
        
        
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
        [button addTarget:self action:@selector(changeClick:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = i;
        if (i==0)
        {
            [button setTitle:@"分享" forState:UIControlStateNormal];
            _myButton = button;
            _myButton.backgroundColor = [UIColor greenColor];
            [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        }else
        {
            [button setTitle:@"收藏" forState:UIControlStateNormal];
            [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        }
        button.layer.borderWidth = 1;
        button.layer.borderColor = [UIColor greenColor].CGColor;
        [_myScrollView addSubview:button];
        
    }
    _myHeight += 40;
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, _myHeight, WIDTH, 30)];
    label.text = _objc.name;
    label.textColor = [UIColor blackColor];
    [_myScrollView addSubview:label];
    _myHeight += 40;
    
    NSInteger a = _objc.guige_list.count;
    for (int i = 0 ; i < a; i++)
    {
        ZYTwoChild1 *objc = _objc.guige_list[i];
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, _myHeight, WIDTH, 40)];
        view.tag = 777+i;
        [_myScrollView addSubview:view];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.tag = i;
        button.frame = CGRectMake(10, 5, 30, 30);
        [button setImage:[UIImage imageNamed:@"remember_password_normal"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"remember_password_select"] forState:UIControlStateSelected];
        [button addTarget:self action:@selector(ordeButton:) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:button];
        
        
        UILabel *name = [[UILabel alloc]initWithFrame:CGRectMake(40, 5, 100, 30)];
        name.text = objc.name;
        [view addSubview:name];
        
        UILabel *price = [[UILabel alloc]initWithFrame:CGRectMake(165, 5, 80, 30)];
        price.tag = 302;
        price.text = [[NSString alloc]initWithFormat:@"%.2f",objc.price ];
        price.textColor = [UIColor redColor];
        [view addSubview:price];
        
        UILabel *num = [[UILabel alloc]initWithFrame:CGRectMake(250, 5, 40, 30)];
        num.text = @"数量:";
        num.textAlignment = 1;
        num.font = [UIFont systemFontOfSize:14];
        [view addSubview:num];
        
        UIButton *reduceButton = [UIButton buttonWithType:UIButtonTypeCustom];
        reduceButton.tag = i;
        reduceButton.frame = CGRectMake(295, 5, 30, 30);
        [reduceButton setImage:[UIImage imageNamed:@"car_lose"] forState:UIControlStateNormal];
        [reduceButton addTarget:self action:@selector(reduceClick:) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:reduceButton];
        
        
        UILabel *showNum = [[UILabel alloc]initWithFrame:CGRectMake(325, 5, 30, 30)];
        showNum.tag = 303;
        showNum.text = [[NSString alloc]initWithFormat:@"1"];
        showNum.textAlignment = 1;
        [view addSubview:showNum];
        
        
        UIButton *addButton = [UIButton buttonWithType:UIButtonTypeCustom];
        addButton.tag = i;
        addButton.frame = CGRectMake(355, 5, 30, 30);
        [addButton setImage:[UIImage imageNamed:@"car_add"] forState:UIControlStateNormal];
        [addButton addTarget:self action:@selector(addClick:) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:addButton];
        
        _myHeight += 40;
        
    }
    _myHeight += 10;
    
    UILabel *generalPrice = [[UILabel alloc]initWithFrame:CGRectMake(10, _myHeight, WIDTH-10, 30)];
    generalPrice.text = [[NSString alloc]initWithFormat:@"¥%@",_objc.price_guige];
    generalPrice.textColor = [UIColor redColor];
    [_myScrollView addSubview:generalPrice];
    _myHeight += 40;
    
    
    for (int i = 0; i < 2; i++)
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(10+((WIDTH-30)/2+10)*i, _myHeight, (WIDTH-30)/2, 30);
        
        
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(shopClick:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = i;
        button.backgroundColor = [UIColor greenColor];
        if (i==0)
        {
            [button setTitle:@"加入购物车" forState:UIControlStateNormal];
        }else
        {
            [button setTitle:@"立即购买" forState:UIControlStateNormal];
        }
        
        [_myScrollView addSubview:button];
        
    }
    _myHeight += 40;
    
    UILabel *tail = [[UILabel alloc]initWithFrame:CGRectMake(10, _myHeight, WIDTH, 30)];
    tail.text = _objc.name;
    tail.textColor = [UIColor blackColor];
    [_myScrollView addSubview:tail];
    _myHeight += 40;
    
    webview = [[UIWebView alloc]initWithFrame:CGRectMake(0, _myHeight, WIDTH, HEIGHT-113)];
    webview.scrollView.scrollEnabled=NO;
    webview.delegate = self;
    [webview loadHTMLString:_objc.concent baseURL:[NSURL URLWithString:_objc.photo_string[0]]];
    [_myScrollView addSubview:webview];
    _myScrollView.contentSize = CGSizeMake(WIDTH, HEIGHT+77);
    webview.mediaPlaybackRequiresUserAction = YES;
    _myScrollView.delegate=self;
    
    _myHeight += webview.frame.size.height;
   _myScrollView.contentSize = CGSizeMake(WIDTH, _myHeight);
}
-(void)ordeButton:(UIButton *)btn
{
    btn.selected = !btn.selected;
}
-(void)reduceClick:(UIButton *)btn
{
    ZYTwoChild1 *objc = _objc.guige_list[btn.tag];
    UIView *view = [_myScrollView viewWithTag:777+btn.tag];
    _price = [view viewWithTag:302];
    _showNum = [view viewWithTag:303];
    int num = [_showNum.text intValue];
    if (num == 1)
    {
        return;
    }
    num --;
    CGFloat total = num*objc.price;
    _showNum.text = [[NSString alloc]initWithFormat:@"%d",num];
    _price.text = [[NSString alloc]initWithFormat:@"%.2f",total];
}
-(void)addClick:(UIButton *)btn
{
    ZYTwoChild1 *objc = _objc.guige_list[btn.tag];
    
    UIView *view = [_myScrollView viewWithTag:777+btn.tag];
    _price = [view viewWithTag:302];
    _showNum = [view viewWithTag:303];
    int num = [_showNum.text intValue];
    num++;
    CGFloat total = num*objc.price;
    _showNum.text = [[NSString alloc]initWithFormat:@"%d",num];
    _price.text = [[NSString alloc]initWithFormat:@"%.2f",total];
}
-(void)changeClick:(UIButton *)btn
{
    _myButton.backgroundColor = [UIColor whiteColor];
    [_myButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    _myButton = btn;
    _myButton.backgroundColor = [UIColor greenColor];
    [_myButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    if(btn.tag == 0)
    {
        
    }else if(btn.tag == 1)
    {
        CYPartnerVC *vc = [[CYPartnerVC alloc]init];
        
        vc.isMe = YES;
        [self.navigationController pushViewController:vc animated:YES];
    }
}
-(void)shopClick:(UIButton *)btn
{
    NSLog(@"%s－购买－%d",__FUNCTION__,__LINE__);
}


-(UIScrollView *)myScrollView
{
    if (!_myScrollView)
    {
        _myScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, WIDTH, HEIGHT-113)];
        
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, HEIGHT-49, WIDTH, 49)];
        [self.view addSubview:view];
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
        button1.frame = CGRectMake(0, 0, WIDTH/2, 49);
        [button1 addTarget:self action:@selector(shopClick) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:button1];
        
        UIImageView *imageView = [[UIImageView alloc]init];
        imageView.bounds = CGRectMake(0, 0, 30, 30);
        imageView.center = CGPointMake(WIDTH/4-18, 25);
        imageView.image =[UIImage imageNamed:@"bottom_shop_icon"];
        [button1 addSubview:imageView];
        UILabel *label = [[UILabel alloc]init];
        label.bounds = CGRectMake(0, 0, 50, 30);
        label.center = CGPointMake(WIDTH/4+30, 25);
        label.text = @"店铺";
        label.textColor = [UIColor whiteColor];
        [button1 addSubview:label];
        button1.backgroundColor = [UIColor greenColor];
        UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
         button2.frame = CGRectMake(WIDTH/2, 0, WIDTH/2, 49);
        [button2 addTarget:self action:@selector(phoneClick) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:button2];
        UIImageView *imageView1 = [[UIImageView alloc]init];
        imageView1.bounds = CGRectMake(0, 0, 30, 30);
        imageView1.center = CGPointMake(WIDTH/4-18, 25);
        imageView1.image =[UIImage imageNamed:@"bottom_call_icon"];
        [button2 addSubview:imageView1];
        UILabel *label1 = [[UILabel alloc]init];
        label1.bounds = CGRectMake(0, 0, 50, 30);
        label1.center = CGPointMake(WIDTH/4+30, 25);
        label1.textColor = [UIColor whiteColor];
        label1.text = @"电话";
        [button2 addSubview:label1];
        button2.backgroundColor = [UIColor greenColor];
        
    }
    return _myScrollView;
}
-(void)shopClick
{
    NSLog(@"商铺");
}
-(void)phoneClick
{
    NSLog(@"电话");
}
-(void)goToBack
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
