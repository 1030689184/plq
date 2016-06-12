//
//  CYMainViewController.m
//  TravelHeNan
//
//  Created by mac on 16/2/25.
//  Copyright © 2016年 mac. All rights reserved.
//

#define S_HEIGHT [UIScreen mainScreen].bounds.size.height
#define S_WIDTH  [UIScreen mainScreen].bounds.size.width


#import "CYMainViewController.h"
#import "CYHttpManager.h"

#import "CYSVImage.h"
#import "CYNew.h"
#import "CYOption.h"
#import "CYPartner.h"
#import "CYOPartner.h"
#import "CYProduct.h"

#import "CYMarketViewController.h"
#import "CYBookViewController.h"
#import "CYTravelViewController.h"
#import "CYChildKindViewController.h"

#import "CYOneViewController.h"
#import "CYSecondViewController.h"
#import "CYThirdViewController.h"
#import "CYFourViewController.h"

#import "CYUpdate.h"

@interface CYMainViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (nonatomic, retain) UICollectionView *bigCollectionView;
@end

@implementation CYMainViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"河南旅游网";
    [CYHttpManager requestToGetMainCompletion:^(NSArray *mainArray) {
        _mainArray = mainArray;
        [_bigCollectionView reloadData];
    }];
    
    [self.view addSubview:self.bigCollectionView];
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
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return _mainArray.count;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (section ==0 | section == 1 | section == 2)
    {
        return 1;
    }
    if (section == 3)
    {
        return 1;
    }
    if (section ==4 | section == 5 | section == 6)
    {
        return 1;
    }
    if (section ==7)
    {
        return 1;
    }
    
    return 0;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0)
    {
        CYScrollViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell0" forIndexPath:indexPath];
        [cell showData:_mainArray[0]];
        return cell ;
    }
    if (indexPath.section == 1)
    {
        CYSearchCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell1" forIndexPath:indexPath];
        __weak CYMainViewController *weakSelf = self;
        cell.myBlock = ^(UIViewController *vc){
            [weakSelf.navigationController pushViewController:vc animated:YES];
        };
        return cell ;
    }
    if (indexPath.section == 2 )
    {
        CYThirdCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell2" forIndexPath:indexPath];
        [cell.marketButton addTarget:self action:@selector(marketClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.bookButton addTarget:self action:@selector(bookClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.travelButton addTarget:self action:@selector(travelClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.moreButton addTarget:self action:@selector(moreClick) forControlEvents:UIControlEventTouchUpInside];
        [cell showData:_mainArray[1]];
        return cell;
    }
    if (indexPath.section == 3 )
    {
        CYFourCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell3" forIndexPath:indexPath];
        [cell showData:_mainArray[2]];
        [cell.firstBtb addTarget:self action:@selector(firstClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.secondBtn addTarget:self action:@selector(secondClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.thirdBtn addTarget:self action:@selector(thirdClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.fourBtn addTarget:self action:@selector(fourClick) forControlEvents:UIControlEventTouchUpInside];
        
        return cell;
    }
    if (indexPath.section == 4)
    {
        CYFiveCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell4" forIndexPath:indexPath];
        cell.myBlock = ^(UIViewController *vc){
            vc.title = @"详情";
            vc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:vc animated:YES];
        };
        [cell showData:_mainArray[indexPath.section-1]];
        return cell;
    }
    if (indexPath.section == 5)
    {
        CYSixCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell5" forIndexPath:indexPath];
        cell.myBlock = ^(UIViewController *vc){
            vc.title = @"详情";
            vc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:vc animated:YES];
        };
        [cell showData:_mainArray[indexPath.section-1]];
        return cell;
    }
    if (indexPath.section == 6)
    {
        CYSevenCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell6" forIndexPath:indexPath];
        cell.myBlock = ^(UIViewController *vc){
            vc.title = @"详情";
            vc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:vc animated:YES];
        };
        [cell showData:_mainArray[indexPath.section-1]];
        return cell;
    }
    if (indexPath.section == 7)
    {
        CYEightCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell7" forIndexPath:indexPath];
        cell.myBlock = ^(UIViewController *vc){
            vc.title = @"详情";
            vc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:vc animated:YES];
        };
        [cell showData:_mainArray[indexPath.section-1]];
        return cell;
    }
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0)
    {
        return CGSizeMake(S_WIDTH, 200);
    }
    if (indexPath.section == 1)
    {
        return CGSizeMake(S_WIDTH, 50);
    }
    if (indexPath.section == 2)
    {
        return CGSizeMake(S_WIDTH, 90);
    }
    if (indexPath.section == 3)
    {
        return CGSizeMake(S_WIDTH, 200);
    }
    if (indexPath.section == 4 | indexPath.section == 5 | indexPath.section == 6 | indexPath.section == 7)
    {
        return CGSizeMake(S_WIDTH, 250);
    }
    return CGSizeMake(0, 0);
}
//行间距
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 0;
}
//列间距
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 0;
}
-(UICollectionView *)bigCollectionView
{
    if (!_bigCollectionView)
    {
        UICollectionViewFlowLayout * flowlayout = [[UICollectionViewFlowLayout alloc]init];
        flowlayout.sectionInset = UIEdgeInsetsMake(0, 0, 5, 0);
        
        _bigCollectionView = [[UICollectionView alloc]initWithFrame:[[UIScreen mainScreen]bounds] collectionViewLayout:flowlayout];
        _bigCollectionView.backgroundColor =[UIColor whiteColor];
        
        _bigCollectionView.dataSource = self ;
        _bigCollectionView.delegate = self ;
        
        [_bigCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
        
        [_bigCollectionView registerClass:[CYScrollViewCell class] forCellWithReuseIdentifier:@"cell0"];
        [_bigCollectionView registerNib:[UINib nibWithNibName:@"CYSearchCell" bundle:nil] forCellWithReuseIdentifier:@"cell1"];
        [_bigCollectionView registerNib:[UINib nibWithNibName:@"CYThirdCell" bundle:nil] forCellWithReuseIdentifier:@"cell2"];
        [_bigCollectionView registerNib:[UINib nibWithNibName:@"CYFourCell" bundle:nil] forCellWithReuseIdentifier:@"cell3"];
        [_bigCollectionView registerClass:[CYFiveCell class] forCellWithReuseIdentifier:@"cell4"];
        [_bigCollectionView registerClass:[CYSixCell class] forCellWithReuseIdentifier:@"cell5"];
        [_bigCollectionView registerClass:[CYSevenCell class] forCellWithReuseIdentifier:@"cell6"];
        [_bigCollectionView registerClass:[CYEightCell class] forCellWithReuseIdentifier:@"cell7"];
    }
    return _bigCollectionView;
}
-(void) marketClick
{
    CYMarketViewController *vc = [[CYMarketViewController alloc]init];
    vc.hidesBottomBarWhenPushed= YES;
    [self.navigationController pushViewController:vc animated:YES];
}
-(void) bookClick
{
    CYBookViewController *vc = [[CYBookViewController alloc]init];
    vc.hidesBottomBarWhenPushed= YES;
    [self.navigationController pushViewController:vc animated:YES];
}
-(void) travelClick
{
    CYTravelViewController *vc = [[CYTravelViewController alloc]init];
    vc.hidesBottomBarWhenPushed= YES;
    [self.navigationController pushViewController:vc animated:YES];
}
-(void) moreClick
{
    CYChildKindViewController *vc = [[CYChildKindViewController alloc]init];
    vc.hidesBottomBarWhenPushed= YES;
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)firstClick
{
    CYOneViewController *vc = [[CYOneViewController alloc]init];
    vc.hidesBottomBarWhenPushed= YES;
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)secondClick
{
    CYSecondViewController *vc = [[CYSecondViewController alloc]init];
    vc.hidesBottomBarWhenPushed= YES;
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)thirdClick
{
    CYThirdViewController *vc = [[CYThirdViewController alloc]init];
    vc.hidesBottomBarWhenPushed= YES;
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)fourClick
{
    CYFourViewController *vc = [[CYFourViewController alloc]init];
    vc.hidesBottomBarWhenPushed= YES;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
