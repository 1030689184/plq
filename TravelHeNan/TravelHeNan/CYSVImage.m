//
//  CYSVImage.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYSVImage.h"

@implementation CYSVImage
+(id)CYSVImageWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYSVImageDictionary:dic];
}
-(id)initWithCYSVImageDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _img = dic[@"img"];
        _type = dic[@"type"];
        _id = [dic[@"id"] intValue];
        _title = dic[@"title"];
    }
    return self ;
}
@end
