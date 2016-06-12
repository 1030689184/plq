//
//  CYHttpManager.h
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPRequestOperationManager.h"
@interface CYHttpManager : NSObject
+(void)requestToGetMainCompletion:(void(^)(NSArray *mainArray))complete;
+(void)requestToGetKindCompletion:(void(^)(NSArray *kindArray))complete;
+(void)requestToGetShopWithCurrentPage:(int) page  Completion:(void(^)(NSArray *shopArray))complete;
+(void)requestToGetParterCompletion:(void(^)(NSArray *partnerArray))complete;


+(void)requestToGetFondCompletion:(void(^)(NSArray *fondArray))complete;

@end
