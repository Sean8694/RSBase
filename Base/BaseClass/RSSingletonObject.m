//
//  RSSingletonObject.m
//
//  Created by ran.shi on 14-4-28.
//  Copyright (c) 2014年 Sean. All rights reserved.
//

#import "RSSingletonObject.h"

static NSMutableDictionary *sharedInstances = nil;

@implementation RSSingletonObject

+ (instancetype)sharedInstance
{
    @synchronized(self) {
        if (!sharedInstances) {
            sharedInstances = [NSMutableDictionary dictionary];
        }
        id sharedInstance = [sharedInstances objectForKey:NSStringFromClass(self)];
        if (!sharedInstance) {
            sharedInstance = [[self alloc] init];
            [sharedInstances setValue:sharedInstance forKey:NSStringFromClass(self)];
        }
    }
    return [sharedInstances objectForKey:NSStringFromClass(self)];
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    @synchronized(self) {
        if (!sharedInstances) {
            sharedInstances = [NSMutableDictionary dictionary];
        }
        id sharedInstance = [sharedInstances objectForKey:NSStringFromClass(self)];
        if (!sharedInstance) {
            sharedInstance = [super allocWithZone:zone];
            return sharedInstance;
        }
    }
    return nil;
}

@end
