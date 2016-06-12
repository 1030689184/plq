//
//  CYHttpRequest2.m
//  TravelHeNan
//
//  Created by mac on 16/3/7.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYHttpRequest2.h"
#import "AFHTTPRequestOperationManager.h"
#import "ZYOne.h"

@implementation CYHttpRequest2
+(void)requestGetA1Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"132" forKey:@"id"];
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
+(void)requestGetA2Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"80" forKey:@"id"];
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
    [parameterDict setObject:@"78" forKey:@"id"];
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
    [parameterDict setObject:@"76" forKey:@"id"];
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
    [parameterDict setObject:@"75" forKey:@"id"];
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
    [parameterDict setObject:@"54" forKey:@"id"];
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
    [parameterDict setObject:@"53" forKey:@"id"];
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
    [parameterDict setObject:@"39" forKey:@"id"];
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
    [parameterDict setObject:@"32" forKey:@"id"];
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
    [parameterDict setObject:@"31" forKey:@"id"];
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
    [parameterDict setObject:@"24" forKey:@"id"];
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



#pragma mark ----
+(void)requestGetA12Completion:(void (^)(ZYTwo *two))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"129" forKey:@"id"];
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
@end
