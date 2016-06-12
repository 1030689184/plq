//
//  CYNew.h
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYNew : NSObject
@property (nonatomic, copy) NSString *title,*icon,*coloe;
@property (nonatomic, assign) int id;
+(id)CYNewWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithCYNewDictionary:(NSDictionary*)dic;
@end
