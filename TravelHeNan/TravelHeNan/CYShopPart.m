//
//  CYShopPart.m
//  TravelHeNan
//
//  Created by mac on 16/2/28.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYShopPart.h"

@implementation CYShopPart
+(id)CYShopPartWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYShopPartDictionary:dic];
}
-(id)initWithCYShopPartDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _id = [dic[@"id"] intValue];
        _level = [dic[@"level"] intValue];
        _address = dic[@"address"];
        _name = dic[@"name"];
        _operate = dic[@"operate"];
        _logo = dic[@"logo"];
        
    }
    return self ;
}
@end
