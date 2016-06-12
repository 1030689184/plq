//
//  ZYTwo.m
//  TravelHeNan
//
//  Created by mac on 16/3/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ZYTwo.h"
#import "ZYTwoChild1.h"

@implementation ZYTwo
+(id)ZYTwoWithDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithZYTwoDictionary:dic];
}
-(id)initWithZYTwoDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _guige_list = [[NSMutableArray alloc]init];
        _photo_string = [[NSMutableArray alloc]init];
        _name = dic[@"name"];
        _img = dic[@"img"];
        _id = [dic[@"id"] intValue];
        _shiyong = [dic[@"shiyong"] intValue];
        _renqi = [dic[@"renqi"] intValue];
        _price = [dic[@"price"] floatValue];
        _price_yj = [dic[@"price_yj"] floatValue];
        _concent =dic[@"concent"];
        _partner = dic[@"partner"];
        _partner_id = [dic[@"partner_id"] intValue];
        _partner_tel =dic[@"partner_tel"];
        _post = dic[@"post"];
        _price_guige =dic[@"price_guige"];
        NSArray *array1 = dic[@"guige_list"];
        for (int i = 0; i< array1.count; i++)
        {
            ZYTwoChild1 *child = [ZYTwoChild1 ZYTwoChild1WithDictionary:array1[i]];
            [_guige_list addObject:child];
        }
        NSArray *array2 = dic[@"photo_string"];
        for (int i = 0; i< array2.count; i++)
        {
            NSDictionary *dic = array2[i];
            [_photo_string addObject:dic[@"img_big"]];
            
        }
        
    }
    return self ;
}
@end
