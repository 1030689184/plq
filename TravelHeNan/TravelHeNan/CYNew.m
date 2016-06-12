//
//  CYNew.m
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "CYNew.h"

@implementation CYNew
+(id)CYNewWithLoveDictionary:(NSDictionary*)dic
{
    return [[self alloc]initWithCYNewDictionary:dic];
}
-(id)initWithCYNewDictionary:(NSDictionary*)dic
{
    self = [super init];
    if (self)
    {
        _coloe = dic[@"coloe"];
        _icon = dic[@"icon"];
        _id = [dic[@"id"] intValue];
        _title = dic[@"title"];
    }
    return self ;
}
@end
