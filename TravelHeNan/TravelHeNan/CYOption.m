//
//  CYOption.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYOption.h"

@implementation CYOption
+(id)CYOptionWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYOptionDictionary:dic];
}
-(id)initWithCYOptionDictionary:(NSDictionary*)dic
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
