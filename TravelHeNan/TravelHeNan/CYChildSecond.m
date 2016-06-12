//
//  CYChildSecond.m
//  TravelHeNan
//
//  Created by mac on 16/2/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYChildSecond.h"

@implementation CYChildSecond
+(id)CYChildSecondWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYChildSecondDictionary:dic];
}
-(id)initWithCYChildSecondDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _id = [dic[@"id"] intValue];
        _num = [dic[@"num"] intValue];
        _img = dic[@"img"];
        _name = dic[@"name"];
        _color = dic[@"color"];
        _logo = dic[@"logo"];
    }
    return self ;
}
@end
