//
//  CYChildSecond.h
//  TravelHeNan
//
//  Created by mac on 16/2/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYChildSecond : NSObject
@property (nonatomic, copy) NSString *name,*img,*color,*logo;
@property (nonatomic, assign) int id,num;
+(id)CYChildSecondWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithCYChildSecondDictionary:(NSDictionary*)dic;
@end
