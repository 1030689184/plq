//
//  CYChildTwo.h
//  TravelHeNan
//
//  Created by mac on 16/3/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYChildTwo : NSObject
@property (nonatomic, copy) NSString *name,*img,*subclass;
@property (nonatomic, assign) int id ,num;
+(id)CYChildTwoWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithCYChildTwoDictionary:(NSDictionary*)dic;
@end
