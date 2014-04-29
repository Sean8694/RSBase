//
//  RSDataItem.h
//
//  Created by ran.shi on 14-4-28.
//  Copyright (c) 2014年 Sean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RSBaseClassProtocol.h"

@interface RSDataItem : NSObject <RSFactoryProtocol>

+ (instancetype)getInstanceWithDictionary:(NSDictionary *)dict;

@end
