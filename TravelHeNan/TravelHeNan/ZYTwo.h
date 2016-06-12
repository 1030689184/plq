//
//  ZYTwo.h
//  TravelHeNan
//
//  Created by mac on 16/3/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYTwo : NSObject
@property (nonatomic, copy) NSString *name,*img,*concent,*partner,*partner_tel,*like_num,*post,*price_guige,*price_pifa;
@property (nonatomic, assign) int id ,shiyong,renqi,price_jb,shoucang,partner_id;
@property (nonatomic, assign) float price,price_yj;
@property (nonatomic,retain) NSMutableArray *guige_list,*photo_string;
+(id)ZYTwoWithDictionary:(NSDictionary*)dic;
-(id)initWithZYTwoDictionary:(NSDictionary*)dic;
@end
