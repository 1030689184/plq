//
//  ZYOne.m
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ZYOne.h"

@implementation ZYOne
+(id)ZYOneWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithZYOneDictionary:dic];
}
-(id)initWithZYOneDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _name = dic[@"name"];
        _img = dic[@"img"];
        _id = [dic[@"id"] intValue];
        _shiyong = [dic[@"shiyong"] intValue];
        _renqi = [dic[@"renqi"] intValue];
        _price = [dic[@"price"] floatValue];
        _price_yj = [dic[@"price_yj"] floatValue];
        
    }
    return self ;
}
@end
