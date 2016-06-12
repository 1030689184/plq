//
//  CYOption.h
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYOption : NSObject
@property (nonatomic, copy) NSString *title,*img,*digest;
@property (nonatomic, assign) int id;
+(id)CYOptionWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithCYOptionDictionary:(NSDictionary*)dic;
@end
