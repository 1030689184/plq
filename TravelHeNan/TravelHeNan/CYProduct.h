//
//  CYProduct.h
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYProduct : NSObject
@property (nonatomic, copy) NSString *title,*img,*img_bit,*name;
@property (nonatomic, assign) int id;
+(id)CYProductWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithCYProductDictionary:(NSDictionary*)dic;
@end
