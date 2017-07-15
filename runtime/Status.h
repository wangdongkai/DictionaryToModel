//
//  Model.h
//  runtime
//
//  Created by 王东开 on 2017/7/15.
//  Copyright © 2017年 王东开. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;

@interface Status : NSObject

@property (nonatomic, copy) NSNumber *attitudes_count;
@property (nonatomic, copy) NSNumber *comments_count;
@property (nonatomic, copy) NSString *created_at;
@property (nonatomic, copy) NSString *idstr;
@property (nonatomic, copy) NSArray *pic_urls;
@property (nonatomic, copy) NSNumber *reposts_count;
@property (nonatomic, copy) NSString *source;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong) NSDictionary *user;

@end
