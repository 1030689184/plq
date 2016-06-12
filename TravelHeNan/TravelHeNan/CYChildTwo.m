//
//  CYChildTwo.m
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYChildTwo.h"

@implementation CYChildTwo
+(id)CYChildTwoWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYChildTwoDictionary:dic];
}
-(id)initWithCYChildTwoDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _name = dic[@"name"];
        _img = dic[@"img"];
        _id = [dic[@"id"] intValue];
        _num = [dic[@"num"] intValue];
        _subclass = dic[@"subclass"];
        
    }
    return self ;
}
@end
