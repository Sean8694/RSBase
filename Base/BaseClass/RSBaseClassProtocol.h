//
//  RSBaseClassProtocol.h
//
//  Created by ran.shi on 14-4-28.
//  Copyright (c) 2014年 Sean. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RSSingletonObjectProtocol <NSObject>

+ (instancetype)sharedInstance;

@end

@protocol RSFactoryProtocol <NSObject>

+ (instancetype)getInstance;

@end
