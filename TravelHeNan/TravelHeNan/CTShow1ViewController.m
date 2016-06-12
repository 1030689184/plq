//
//  CTShow1ViewController.m
//  TravelHeNan
//
//  Created by mac on 16/3/7.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CTShow1ViewController.h"
#import "CYHttpRequest1.h"


@interface CTShow1ViewController ()

@end

@implementation CTShow1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"收藏" style:UIBarButtonItemStyleDone target:self action:@selector(collectButton)];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
    [CYHttpRequest1 requestSend:_page GetAA1Completion:^(NSArray *dataArray) {
        _dataArray = dataArray;
    }];
}

-(void)collectButton
{
    NSLog(@"收藏");
}

@end
