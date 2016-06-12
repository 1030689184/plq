//
//  ZYTwoChild1.m
//  TravelHeNan
//
//  Created by mac on 16/3/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ZYTwoChild1.h"

@implementation ZYTwoChild1
+(id)ZYTwoChild1WithDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithZYTwoChild1Dictionary:dic];
}
-(id)initWithZYTwoChild1Dictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _name = dic[@"name"];
        
        _id = [dic[@"id"] intValue];
        
        _price = [dic[@"price"] floatValue];
        _pid = [dic[@"pid"] intValue];
        
    }
    return self ;
}
@end
