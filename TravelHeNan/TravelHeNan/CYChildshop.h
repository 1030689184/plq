//
//  CYChildshop.h
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYChildshop : NSObject
@property (nonatomic, copy) NSString *name,*photo,*digest,*time;
@property (nonatomic, assign) int id;
+(id)CYChildshopWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithCYChildshopDictionary:(NSDictionary*)dic;
@end
