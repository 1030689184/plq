//
//  CYAllKind.h
//  TravelHeNan
//
//  Created by mac on 16/2/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CYChildOne.h"
@interface CYAllKind : NSObject
@property (nonatomic, copy) NSString *name,*img,*color,*logo;
@property (nonatomic, assign) int id,num;
@property (nonatomic, retain) CYChildOne *child;
@property (nonatomic,retain) NSMutableArray *subclass;
+(id)CYAllKindWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithCYAllKindDictionary:(NSDictionary*)dic;
@end



