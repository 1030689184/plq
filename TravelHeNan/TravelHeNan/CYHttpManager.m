//
//  CYHttpManager.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYHttpManager.h"

#import "CYSVImage.h"
#import "CYNew.h"
#import "CYOption.h"
#import "CYPartner.h"
#import "CYOPartner.h"
#import "CYProduct.h"

#import "CYAllKind.h"

#import "CYShopPart.h"

@implementation CYHttpManager
+(void)requestToGetMainCompletion:(void(^)(NSArray *mainArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/home_update.php";
//    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"time"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * mainArray = [[NSMutableArray alloc]init];
        NSArray *json = responseObject[@"json"];
        for (int i = 0 ; i < json.count; i ++ )
        {
            NSMutableArray *imaArray = [[NSMutableArray alloc]init];
            NSArray *subClass = json[i][@"subClass"];
            if (i == 0)
            {
                for (int j = 0; j<subClass.count; j ++ )
                {
                    CYSVImage *image = [CYSVImage CYSVImageWithLoveDictionary:subClass[j]];
                    [imaArray addObject:image];
                }
                [mainArray addObject:imaArray];
            }
            if (i == 2)
            {
                for (int j = 0; j<subClass.count; j ++ )
                {
                    CYNew *image = [CYNew CYNewWithLoveDictionary:subClass[j]];
                    [imaArray addObject:image];
                }
                [mainArray addObject:imaArray];
            }
            if (i == 3)
            {
                for (int j = 0; j<subClass.count; j ++ )
                {
                    CYOption *image = [CYOption CYOptionWithLoveDictionary:subClass[j]];
                    [imaArray addObject:image];
                }
                [mainArray addObject:imaArray];
            }
            if (i == 4 | i == 5 | i == 6)
            {
                for (int j = 0; j<subClass.count; j ++ )
                {
                    CYProduct *image = [CYProduct CYProductWithLoveDictionary:subClass[j]];
                    [imaArray addObject:image];
                }
                [mainArray addObject:imaArray];
            }
            if (i == 7)
            {
                for (int j = 0; j<subClass.count; j ++ )
                {
                    CYPartner *image = [CYPartner CYPartnerWithLoveDictionary:subClass[j]];
                    [imaArray addObject:image];
                }
                [mainArray addObject:imaArray];
            }
            if (i == 8)
            {
                for (int j = 0; j<subClass.count; j ++ )
                {
                    CYOPartner *image = [CYOPartner CYOPartnerWithLoveDictionary:subClass[j]];
                    [imaArray addObject:image];
                }
                [mainArray addObject:imaArray];
            }
        }
        if (complete)
        {
            complete(mainArray);
        }
   
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
}
+(void)requestToGetKindCompletion:(void(^)(NSArray *kindArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product_fenlei.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * kindArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject;
        for (int i = 0 ; i < array.count; i ++ )
        {
            CYAllKind *kind = [CYAllKind CYAllKindWithLoveDictionary:array[i]];
            [kindArray addObject:kind];
        }
        if (complete)
        {
            complete(kindArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestToGetShopWithCurrentPage:(int) page  Completion:(void(^)(NSArray *shopArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/partner.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:@"" forKey:@"pid"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSMutableArray * shopArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"partner"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            CYShopPart *partner = [CYShopPart CYShopPartWithLoveDictionary:array[i]];
            [shopArray addObject:partner];
        }
        if (complete)
        {
            complete(shopArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
}
+(void)requestToGetParterCompletion:(void(^)(NSArray *partnerArray))complete
{
    
}
+(void)requestToGetFondCompletion:(void(^)(NSArray *fondArray))complete
{
    
}

@end
