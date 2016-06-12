//
//  CustomTabbar.m
//  XYQSinaTabbar
//
//  Created by mac on 16/1/30.
//  Copyright © 2016年 mac. All rights reserved.
//
#define WIDTH  [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height


#import "CustomTabbar.h"
#import "CustomButton.h"
#import "AppDelegate.h"
#import "Masonry.h"
#import "CYUpdate.h"

static NSInteger startTag = 0; //初始按钮的tag值

@interface CustomTabbar()
@property (strong,nonatomic)UIButton *pluButton;
@property (strong,nonatomic)UIButton *selectedBtn;
@end

@implementation CustomTabbar

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        //设置tabbar背景颜色
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"背景_gray"]];
        
        //添加一个加号按钮
        UIButton *pluButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [pluButton setImage:[UIImage imageNamed:@"center"] forState:UIControlStateNormal];
        [pluButton setImage:[UIImage imageNamed:@"center点击"] forState:UIControlStateSelected];
        [pluButton addTarget:self action:@selector(pluButtonClicked:) forControlEvents:UIControlEventTouchDown];
        self.pluButton = pluButton;
    }
    return self;
}

//重写item的setter方法，接受新的item
-(void)setItem:(UITabBarItem *)item{
    
    _item = item;
    //添加按钮,设置tag标记
    CustomButton *button = [[CustomButton alloc]init];
    button.tag = startTag++;
    
    //设置按钮属性和事件
    [button setTitle:item.title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateSelected];
    [button setImage:item.image forState:UIControlStateNormal];
    [button setImage:item.selectedImage forState:UIControlStateSelected];
    [button addTarget:self action:@selector(clickBtnItem:) forControlEvents:UIControlEventTouchDown];
    //添加到自定义的tabbar上
    [self addSubview:button];
    
    //将加号按钮插入到第二个位置上
    if (self.subviews.count == 2 ) {
        
        [self insertSubview:self.pluButton atIndex:2];
//        [self clickBtnItem:self.pluButton];
    }
    
    //默认第一个按钮是选中的
    if (button.tag == 0) {
        
        [self clickBtnItem:button];
    }
}

/**
 *  自定义TabBar的按钮点击事件
 */
- (void)clickBtnItem:(UIButton *) button {
    
    //1.通过代理传递按钮tag
    if ([self.delegate respondsToSelector:@selector(tabBar:selectedFrom:to:)]) {
        
        [self.delegate tabBar:self selectedFrom:self.selectedBtn.tag to:button.tag];
    }
    
    //2.先将之前选中的按钮设置为未选中
    self.selectedBtn.selected = NO;
    _label.textColor = [UIColor grayColor];
    //3.再将当前按钮设置为选中
    button.selected = YES;
    
    //4.最后把当前按钮赋值为之前选中的按钮
    self.selectedBtn = button;
}

/**
 *  自定义的加号按钮事件,此事件用来实现发布控制器模态的开启和关闭
 */
-(void)setUpdate:(UIView *)view
{
    static int num = 0;
    if (num > 0)
    {
        return;
    }
    num ++;
    CYUpdate *update = [[CYUpdate alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [view addSubview:update];
}
-(void)pluButtonClicked:(UIButton *)pluButton{
    self.selectedBtn.selected = NO;
    pluButton.selected = YES;
    self.selectedBtn = pluButton;
    _label.textColor = [UIColor greenColor];
    
    
    UIView * view = [[UIView alloc]initWithFrame:self.superview.superview.frame];
    view.tag = 901;
    
    view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"透明"]];
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 150, WIDTH, 400)];
    webView.scrollView.scrollEnabled = NO;
    [webView setBackgroundColor:[UIColor redColor]];
    webView.scalesPageToFit = YES;
    NSString * urlAddress = @"http://115.28.153.171/newmallapp/bighouse/index.php?appkey=1740&s=221";
    NSURL * url = [NSURL URLWithString:urlAddress];
    NSURLRequest * requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    [view addSubview:webView];
    [self.superview.superview addSubview:view];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(15, 180, WIDTH/6, 90);
    [button addTarget:self action:@selector(moreButton) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:button];
    
    view.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(event:)];
    [view addGestureRecognizer:tapGesture];
    [tapGesture setNumberOfTapsRequired:1];
    [self setUpdate:view];
    
}
-(void)moreButton
{
    
    UIView *view1 = [self.superview.superview viewWithTag:901];
    [view1 removeFromSuperview];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT-113)];
    view.backgroundColor = [UIColor whiteColor];
    view.tag = 902;
    [self.superview.superview addSubview:view];
    NSArray *array1 = [[NSArray alloc]initWithObjects:@"新闻中心",@"关于我们",@"联系我们",@"客服中心",@"在线反馈",@"二维码扫描",@"检查升级",@"法律声明", nil];
    NSArray *array2 = [[NSArray alloc]initWithObjects:@"more_news_icon",@"more_about_icon",@"more_contact_icon",@"more_service_icon",@"more_feedback_icon",@"more_code_icon",@"more_update_icon",@"logicalImg", nil];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 64)];
    label.textAlignment = 1;
    label.textColor = [UIColor whiteColor];
    label.text = @"更多";
    label.backgroundColor = [UIColor greenColor];
    [view addSubview:label];
    for (int i = 0 ; i < 8;  i ++)
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(WIDTH/3*(i%3), WIDTH/3*(i/3)+64, WIDTH/3, WIDTH/3);
        button.tag = 111+i;
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.borderWidth = 1;
        button.layer.borderColor = [UIColor grayColor].CGColor;
        [view addSubview:button];
        
        UIImageView *imageview = [[UIImageView alloc]init];
        imageview.bounds = CGRectMake(0, 0, WIDTH*2/9, WIDTH*2/9);
        imageview.image = [UIImage imageNamed:array2[i]];
        [button addSubview:imageview];
        imageview.center = CGPointMake(button.frame.size.width/2, WIDTH/9+10);
        UILabel *label = [[UILabel alloc]init];
        label.bounds = CGRectMake(0, 0, WIDTH/3, 30);
        label.text = array1[i];
        [button addSubview:label];
        label.textAlignment = 1;
        label.center = CGPointMake(button.frame.size.width/2, button.frame.size.height-20);
    }
}
-(void)buttonClick:(UIButton *)btn
{
    NSLog(@"heheh");
}
- (void)event:(UITapGestureRecognizer *)gesture
{
    UIView *view = [self.superview.superview viewWithTag:901];
    [view removeFromSuperview];

}
//布局子视图
-(void)layoutSubviews{
    [super layoutSubviews];
    
    //设置frame属性
    CGFloat buttonY = 0;
    CGFloat buttonW = self.frame.size.width / self.subviews.count;
    CGFloat buttonH = self.frame.size.height;
    
    //获取到视图中的所有子视图
    for (int index = 0; index < self.subviews.count; index++) {
        CGFloat buttonX = buttonW * index;
        CustomButton *btn = self.subviews[index];
        btn.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
    }
    

    _label = [[UILabel alloc]init];
    _label.bounds = CGRectMake(0, 0,40,20);
    _label.center = CGPointMake(_pluButton.frame.size.width/2, _pluButton.frame.size.height-10);
    _label.text = @"发现";
    _label.textAlignment = 1;
    _label.font = [UIFont systemFontOfSize:12];
    _label.textColor = [UIColor grayColor];
    [_pluButton addSubview:_label];
}
@end
