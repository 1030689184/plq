//
//  CYHttpRequest.m
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "AFHTTPRequestOperationManager.h"
#import "CYHttpRequest.h"
#import "CYChildshop.h"
#import "CYChildOne.h"
#import "CYChildTwo.h"
#import "ZYOne.h"

@implementation CYHttpRequest



+(void)requestGetA9Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"62" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    NSString *sortStr = [[NSString alloc]initWithFormat:@"%d",sort] ;
    [parameterDict setObject:sortStr forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestGetA10Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"94" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}

+(void)requestGetB1Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
   

    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"545" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
             NSLog(@"%s－此处需要改变Key值－%d",__FUNCTION__,__LINE__);
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB2Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"545" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB3Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"547" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB4Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"549" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB5Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"550" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB6Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"551" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB7Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"552" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB8Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"553" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB9Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"554" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB10Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"566" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB11Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"567" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB12Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"568" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB13Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"569" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}

+(void)requestGetB14Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"370" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
    
}



+(void)requestGetA1Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"103" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestGetA2Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"125" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            NSLog(@"%s－此处需要改变Key值－%d",__FUNCTION__,__LINE__);
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestGetA3Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"544" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestGetA4Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"543" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestGetA5Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"535" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestGetA6Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"48" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",operation.responseString);
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestGetA7Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"102" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestGetA8Completion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"100" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}



+(void)requestToGetShopWithCurrentPage:(int) page  Completion:(void(^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/news.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"27" forKey:@"pid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    NSString *str = [[NSString alloc]initWithFormat:@"%d",page];
    [parameterDict setObject:str forKey:@"page"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
                NSMutableArray * dataArray = [[NSMutableArray alloc]init];
                NSArray *array = responseObject[@"array"];
                for (int i = 0 ; i < array.count; i ++ )
                {
                    CYChildshop *shop = [CYChildshop CYChildshopWithLoveDictionary:array[i]];
                    [dataArray addObject:shop];
                }
                if (complete)
                {
                    complete(dataArray);
                }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}

+(void)requestToGetTravelBookWithCurrentPage:(int) page  Completion:(void(^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/news.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"25" forKey:@"pid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:[NSNumber numberWithInt:page] forKey:@"page"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"array"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            CYChildshop *shop = [CYChildshop CYChildshopWithLoveDictionary:array[i]];
            [dataArray addObject:shop];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestToGetTravelCompletion:(void(^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/news.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"104" forKey:@"pid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:[NSNumber numberWithInt:0] forKey:@"page"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"array"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            CYChildshop *shop = [CYChildshop CYChildshopWithLoveDictionary:array[i]];
            [dataArray addObject:shop];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestToGetKindCompletion:(void(^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product_fenlei.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"news" forKey:@"type"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject;
        for (int i = 0 ; i < array.count; i ++ )
        {
            CYChildshop *shop = [CYChildOne CYChildOneWithLoveDictionary:array[i]];
            [dataArray addObject:shop];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestToGetNewsWithCurrentPage:(int) page  Completion:(void(^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/news.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"41" forKey:@"pid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:[NSNumber numberWithInt:page] forKey:@"page"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"array"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            CYChildshop *shop = [CYChildshop CYChildshopWithLoveDictionary:array[i]];
            [dataArray addObject:shop];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}


+(void)requestToGetOneCompletion:(void(^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"43" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"category"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            CYChildTwo *one = [CYChildTwo CYChildTwoWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestToGetTwoCompletion:(void(^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"44" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"category"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            CYChildTwo *one = [CYChildTwo CYChildTwoWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
}
+(void)requestToGetThirdCompletion:(void(^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"46" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"category"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            CYChildTwo *one = [CYChildTwo CYChildTwoWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
}
+(void)requestToGetFourletion:(void(^)(NSArray *dataArray))complete
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"109" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"category"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            CYChildTwo *one = [CYChildTwo CYChildTwoWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
}
+(void)requestGetOneCompletion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"58" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];
}
+(void)requestGetTwoCompletion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"63" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}
+(void)requestGetThirdCompletion:(void(^)(NSArray *dataArray))complete send:(int) sort
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *urlStr = @"http://lscy4.caeac.com.cn/api/product.php";
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    NSMutableDictionary *parameterDict = [NSMutableDictionary dictionary];
    [parameterDict setObject:@"125" forKey:@"tid"];
    [parameterDict setObject:@"1740" forKey:@"appkey"];
    [parameterDict setObject:@"0" forKey:@"page"];
    [parameterDict setObject:[NSNumber numberWithInt:sort] forKey:@"sort"];
    [manager POST:urlStr parameters:parameterDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray * dataArray = [[NSMutableArray alloc]init];
        NSArray *array = responseObject[@"product"];
        for (int i = 0 ; i < array.count; i ++ )
        {
            ZYOne *one = [ZYOne ZYOneWithLoveDictionary:array[i]];
            [dataArray addObject:one];
        }
        if (complete)
        {
            complete(dataArray);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error:%@",error);
    }];

}

@end
