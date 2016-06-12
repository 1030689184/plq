//
//  CYProduct.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYProduct.h"

@implementation CYProduct
+(id)CYProductWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYProductDictionary:dic];
}
-(id)initWithCYProductDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _img = dic[@"img"];
        _name = dic[@"name"];
        _img_bit = dic[@"img_bit"];
        _id = [dic[@"id"] intValue];
        _title = dic[@"title"];
    }
    return self ;
}
@end
