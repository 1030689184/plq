//
//  CYSVImage.h
//  TravelHeNan
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CYSVImage : NSObject
@property (nonatomic, copy) NSString *title,*img,*type;
@property (nonatomic, assign) int id;
+(id)CYSVImageWithLoveDictionary:(NSDictionary*)dic;
-(id)initWithCYSVImageDictionary:(NSDictionary*)dic;
@end
