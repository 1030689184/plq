//
//  ZYTwoChild1.h
//  TravelHeNan
//
//  Created by mac on 16/3/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYTwoChild1 : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int id ,pid;
@property (nonatomic, assign) float price;
+(id)ZYTwoChild1WithDictionary:(NSDictionary*)dic;
-(id)initWithZYTwoChild1Dictionary:(NSDictionary*)dic;
@end
