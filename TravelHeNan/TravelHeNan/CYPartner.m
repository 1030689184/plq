//
//  CYPartner.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYPartner.h"

@implementation CYPartner
+(id)CYPartnerWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYPartnerDictionary:dic];
}
-(id)initWithCYPartnerDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _img = dic[@"img"];
        _img_bit = dic[@"img_bit"];
        _img_bit = dic[@"img_bit"];
        _id = [dic[@"id"] intValue];
    }
    return self ;
}
@end
