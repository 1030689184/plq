//
//  CYPartner.h
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYPartner : NSObject
@property (nonatomic, copy) NSString *img,*img_bit,*name;
@property (nonatomic, assign) int id;
+(id)CYPartnerWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithCYPartnerDictionary:(NSDictionary*)dic;
@end
