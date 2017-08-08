//
//  NSMutableArray+EYAddition.h
//  CategoryDemo
//
//  Created by gujiabin on 2017/8/8.
//  Copyright © 2017年 lieryang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (EYAddition)

/**
 从数组中取值检测是否越界

 @param index 数组下标
 @return 元素
 */
- (id)safeObjectAtIndex:(NSUInteger)index;

@end
