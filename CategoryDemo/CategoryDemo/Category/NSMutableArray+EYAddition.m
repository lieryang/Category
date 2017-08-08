//
//  NSMutableArray+EYAddition.m
//  CategoryDemo
//
//  Created by gujiabin on 2017/8/8.
//  Copyright © 2017年 lieryang. All rights reserved.
//

#import "NSMutableArray+EYAddition.h"

@implementation NSMutableArray (EYAddition)

- (id)safeObjectAtIndex:(NSUInteger)index
{
    if (index < self.count){
        return [self objectAtIndex:index];
    }else{
        NSLog(@"警告:数组越界!!!");
        return nil;
    }
}

@end
