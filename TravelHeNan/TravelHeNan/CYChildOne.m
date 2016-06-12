//
//  CYChildOne.m
//  TravelHeNan
//
//  Created by mac on 16/2/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYChildOne.h"
#import "CYChildSecond.h"
@implementation CYChildOne
+(id)CYChildOneWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYChildOneDictionary:dic];
}
-(id)initWithCYChildOneDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _subclass = [[NSMutableArray alloc]init];
        _id = [dic[@"id"] intValue];
        _num = [dic[@"num"] intValue];
        _img = dic[@"img"];
        _name = dic[@"name"];
        _color = dic[@"color"];
        _logo = dic[@"logo"];
        NSArray *array = dic[@"subclass"];
        for (int i = 0; i < array.count; i++)
        {
            CYChildSecond *child = [CYChildSecond CYChildSecondWithLoveDictionary:array[i]];
            [_subclass addObject:child];
        }
    }
    return self ;
}
@end
