//
//  CYShopPart.h
//  TravelHeNan
//
//  Created by mac on 16/2/28.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYShopPart : NSObject
@property (nonatomic, copy) NSString *name,*address,*operate,*logo;
@property (nonatomic, assign) int id,level;
+(id)CYShopPartWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithCYShopPartDictionary:(NSDictionary*)dic;
@end
