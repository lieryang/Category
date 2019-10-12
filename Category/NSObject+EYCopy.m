//
//  NSObject+EYCopy.m
//  CategoryDemo
//
//  Created by 李二洋 on 2018/8/31.
//  Copyright © 2018年 lieryang. All rights reserved.
//

#import "NSObject+EYCopy.h"
#import <objc/runtime.h>

@implementation NSObject (EYCopy)

- (id)copyWithZone:(NSZone *)zone {
    id mode = [[[self class] allocWithZone:zone] init];

    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self class], &count);
    //ivars[100]不会崩溃但是数据不对,类似数组的东西
    for (int i = 0; i<count; i++) {
        // 取出i位置对应的成员变量
        Ivar ivar = ivars[i];

        // 查看成员变量
        const char *name = ivar_getName(ivar);
        // 设置到成员变量身上
        NSString *key = [NSString stringWithUTF8String:name];

        id value = [self valueForKey:key];
        [mode setValue:value forKey:key];
    }

    free(ivars);

    return mode;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return [self copyWithZone:zone];
}

@end
