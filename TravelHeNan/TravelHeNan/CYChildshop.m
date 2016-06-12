//
//  CYChildshop.m
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYChildshop.h"

@implementation CYChildshop
+(id)CYChildshopWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYChildshopDictionary:dic];
}
-(id)initWithCYChildshopDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _name = dic[@"name"];
        _photo = dic[@"photo"];
        _id = [dic[@"id"] intValue];
        _time = dic[@"time"];
        _digest = dic[@"digest"];
    }
    return self ;
}
@end
