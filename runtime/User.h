//
//  User.h
//  runtime
//
//  Created by 王东开 on 2017/7/15.
//  Copyright © 2017年 王东开. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, copy) NSNumber *mbrank;
@property (nonatomic, copy) NSNumber *mbtype;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *profile_image_url;
@property (nonatomic, assign) BOOL vip;

@end
