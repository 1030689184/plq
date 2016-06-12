//
//  CYHttpRequest1.m
//  TravelHeNan
//
//  Created by mac on 16/3/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYHttpRequest1.h"
#import "ZYOne.h"

@implementation CYHttpRequest1
+(void)requestGetA1Completion:(void(^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1203" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        
            ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
            [dataArray addObject:two];
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    

}
+(void)requestGetA2Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1203" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];

    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
         NSLog(@"%@",error);
    }];
     
}


+(void)requestGetA3Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1185" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];

}
+(void)requestGetA4Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1177" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];

}
+(void)requestGetA5Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1218" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];

}
+(void)requestGetA6Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1180" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];

}
+(void)requestGetA7Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"410" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];

}
+(void)requestGetA8Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1203" forKey:@"id"];
    [parameterDict setObject:@"1063" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];

}
+(void)requestGetA9Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1250" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];

}
+(void)requestGetA10Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1266" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];

}
+(void)requestGetA11Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1267" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];

}
+(void)requestGetA12Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1268" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
    
}


#pragma mark ------


+(void)requestSend:(NSInteger)page GetAA1Completion:(void (^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"48" forKey:@"pid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:[NSNumber numberWithInteger:page] forKey:@"page"];
    [parameterDict setObject:@"0" forKey:@"sort"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        
        NSMutableArray *dataArray = [[NSMutableArray alloc]init];
        NSArray *product = responseObject[@"product"];
        for (int i=0; product.count; i++)
        {
            NSDictionary *dic = product[i];
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:dic];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
}
+(void)requestSend:(NSInteger)page GetAA2Completion:(void (^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1268" forKey:@"pid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/product.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
}
+(void)requestSend:(NSInteger)page GetAA3Completion:(void (^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1268" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/partner.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
}
+(void)requestSend:(NSInteger)page GetAA4Completion:(void (^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"1268" forKey:@"id"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    
    NSString *url = @"http://lscy4.caeac.com.cn/api/partner.php";
    [manager POST:url parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        ZYTwo *two = [ZYTwo ZYTwoWithDictionary:responseObject];
        if (complete)
        {
            complete(two);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
}
@end
