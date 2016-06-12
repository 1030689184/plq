//
//  CYHttpRequest1.h
//  TravelHeNan
//
//  Created by mac on 16/3/2.
//  Copyright © 2016年 mac. All rights reserved.
//
#import "AFHTTPRequestOperationManager.h"
#import <Foundation/Foundation.h>
#import "ZYTwo.h"

@interface CYHttpRequest1 : NSObject
+(void)requestGetA1Completion:(void(^)(NSArray *dataArray))complete;
+(void)requestGetA2Completion:(void (^)(ZYTwo *two))complete;

+(void)requestGetA3Completion:(void (^)(ZYTwo *two))complete;
+(void)requestGetA4Completion:(void (^)(ZYTwo *two))complete;
+(void)requestGetA5Completion:(void (^)(ZYTwo *two))complete;
+(void)requestGetA6Completion:(void (^)(ZYTwo *two))complete;
+(void)requestGetA7Completion:(void (^)(ZYTwo *two))complete;
+(void)requestGetA8Completion:(void (^)(ZYTwo *two))complete;
+(void)requestGetA9Completion:(void (^)(ZYTwo *two))complete;
+(void)requestGetA10Completion:(void (^)(ZYTwo *two))complete;
+(void)requestGetA11Completion:(void (^)(ZYTwo *two))complete;
+(void)requestGetA12Completion:(void (^)(ZYTwo *two))complete;

+(void)requestSend:(NSInteger)page GetAA1Completion:(void (^)(NSArray *dataArray))complete;
+(void)requestSend:(NSInteger)page GetAA2Completion:(void (^)(NSArray *dataArray))complete;
+(void)requestSend:(NSInteger)page GetAA3Completion:(void (^)(NSArray *dataArray))complete;
+(void)requestSend:(NSInteger)page GetAA4Completion:(void (^)(NSArray *dataArray))complete;

//+(void)requestGetMoreCompletion:(void(^)(id data))complete;
@end
