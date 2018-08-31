//
//  NSObject+EYCoding.m
//  CategoryDemo
//
//  Created by 李二洋 on 2018/8/30.
//  Copyright © 2018年 lieryang. All rights reserved.
//

#import "NSObject+EYCoding.h"
#import <objc/runtime.h>

@implementation NSObject (EYCoding)

+ (BOOL)supportsSecureCoding {
    return YES;
}

//如何归档 如何存值
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    unsigned int outCount = 0;
    Ivar * ivars = class_copyIvarList([self class], &outCount);

    for (int i = 0; i < outCount; i++) {
        Ivar ivar = ivars[i];
        const char * name = ivar_getName(ivar);
        NSString * key = [NSString stringWithUTF8String:name];
        [aCoder encodeObject:[self valueForKey:key] forKey:key];
    }
    free(ivars);
}


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
//如何解档 如何取值
- (nullable instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
#pragma clang diagnostic pop
    if (self) {
        unsigned int outCount = 0;
        Ivar * ivars = class_copyIvarList([self class], &outCount);

        for (int i = 0; i < outCount; i++) {
            Ivar ivar = ivars[i];
            const char * name = ivar_getName(ivar);
            NSString * key = [NSString stringWithUTF8String:name];
            [self setValue:[aDecoder decodeObjectForKey:key] forKey:key];
        }
        free(ivars);
    }
    return self;
}

@end
