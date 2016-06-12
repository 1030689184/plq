//
//  ZYOne.h
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYOne : NSObject
@property (nonatomic, copy) NSString *name,*img;
@property (nonatomic, assign) int id ,shiyong,renqi;
@property (nonatomic, assign) float price,price_yj;
+(id)ZYOneWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithZYOneDictionary:(NSDictionary*)dic;
@end
