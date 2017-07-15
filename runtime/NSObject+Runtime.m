//
//  NSObject+Runtime.m
//  runtime
//
//  Created by 王东开 on 2017/7/15.
//  Copyright © 2017年 王东开. All rights reserved.
//

#import "NSObject+Runtime.h"
#import <objc/message.h>

@implementation NSObject (Runtime)

+ (instancetype)initWithDict:(NSDictionary *)dict {
    
    id model = [[self alloc] init];
    
    //1.获取所有属性值
    unsigned int count = 0;
    Ivar *ivarList = class_copyIvarList([self class], &count);
    
    //2.遍历属性
    for (int i = 0; i < count; i ++) {
        
        Ivar ivar = ivarList[i];
        
        NSString *ivarName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        
        // 2.1去掉下划线
        NSString *name = [ivarName substringFromIndex:1];
        
        // 2.2取值
        id obj = dict[name];
        
        // 2.3.1 判断类型
        NSString *type = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
        
        // 2.3.2 裁剪字符串
        type = [type substringFromIndex:2];
        type = [type substringToIndex:type.length - 1];
        
        NSLog(@"type = %@", type);

        // 2.3取出字典模型
        if ([obj isKindOfClass:[NSDictionary class]] && ![type hasPrefix:@"NS"]) {
            
            Class typeClass = NSClassFromString(type);
            
            obj = [typeClass initWithDict:dict[name]];
            
        }
        
        if (obj) {
            [model setValue:obj forKey:name];
        }
    }
    
    return model;
}

@end
