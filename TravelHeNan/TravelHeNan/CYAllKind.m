//
//  CYAllKind.m
//  TravelHeNan
//
//  Created by mac on 16/2/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYAllKind.h"


@implementation CYAllKind
+(id)CYAllKindWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYAllKindDictionary:dic];
}
-(id)initWithCYAllKindDictionary:(NSDictionary*)dic
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
            CYChildOne *child = [CYChildOne CYChildOneWithLoveDictionary:array[i]];
            [_subclass addObject:child];
        }
    }
    return self ;
}
@end
