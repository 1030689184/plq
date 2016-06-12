//
//  CYHttpRequest.h
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYHttpRequest : NSObject
@property (nonatomic,assign) int sort;
+(void)requestToGetTravelCompletion:(void(^)(NSArray *dataArray))complete;
+(void)requestToGetShopWithCurrentPage:(int) page  Completion:(void(^)(NSArray *dataArray))complete;
+(void)requestToGetTravelBookWithCurrentPage:(int) page  Completion:(void(^)(NSArray *dataArray))complete;
+(void)requestToGetKindCompletion:(void(^)(NSArray *dataArray))complete;
+(void)requestToGetNewsWithCurrentPage:(int) page  Completion:(void(^)(NSArray *dataArray))complete;

+(void)requestToGetOneCompletion:(void(^)(NSArray *dataArray))complete ;
+(void)requestToGetTwoCompletion:(void(^)(NSArray *dataArray))complete;
+(void)requestToGetThirdCompletion:(void(^)(NSArray *dataArray))complete;
+(void)requestToGetFourletion:(void(^)(NSArray *dataArray))complete;


+(void)requestGetOneCompletion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetTwoCompletion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetThirdCompletion:(void(^)(NSArray *dataArray))complete send:(int) sort;

+(void)requestGetA1Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetA2Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetA3Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetA4Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetA5Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetA6Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetA7Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetA8Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;


+(void)requestGetA9Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetA10Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;



+(void)requestGetB1Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB2Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB3Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB4Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB5Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB6Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB7Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB8Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB9Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB10Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB11Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB12Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB13Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;
+(void)requestGetB14Completion:(void(^)(NSArray *dataArray))complete send:(int) sort;

@end
