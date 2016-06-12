//
//  CYChildOne.h
//  TravelHeNan
//
//  Created by mac on 16/2/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYChildOne : NSObject
@property (nonatomic, copy) NSString *name,*img,*color,*logo;
@property (nonatomic, assign) int id,num;
@property (nonatomic,retain) NSMutableArray *subclass;
+(id)CYChildOneWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithCYChildOneDictionary:(NSDictionary*)dic;
@end



