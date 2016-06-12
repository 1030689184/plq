//
//  CYOPartner.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYOPartner.h"

@implementation CYOPartner
+(id)CYOPartnerWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYOPartnerDictionary:dic];
}
-(id)initWithCYOPartnerDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _img = dic[@"img"];
        _digest = dic[@"digest"];
        _id = [dic[@"id"] intValue];
        _title = dic[@"title"];
    }
    return self ;
}
@end
