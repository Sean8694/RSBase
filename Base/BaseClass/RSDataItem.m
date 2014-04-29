//
//  RSDataItem.m
//
//  Created by ran.shi on 14-4-28.
//  Copyright (c) 2014年 Sean. All rights reserved.
//

#import "RSDataItem.h"
#import <objc/runtime.h>

@implementation RSDataItem

+ (instancetype)getInstance
{
    return [self getInstanceWithDictionary:@{}];
}

+ (instancetype)getInstanceWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    return [self updateWithDictionary:dict];
}

- (instancetype)updateWithDictionary:(NSDictionary *)dict
{
    unsigned int outCount;
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    for(int i = 0; i < outCount; i++) {
        const char *propertyName = property_getName(properties[i]);
        if (dict[@(propertyName)]) {
            [self setValue:dict[@(propertyName)] forKey:@(propertyName)];
        }
    }
    return self;
}

@end
