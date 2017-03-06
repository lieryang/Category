//
//  UILabel+EYAddition.h
//  CategoryDemo
//
//  Created by lieryang on 17/3/6.
//  Copyright © 2017年 lieryang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (EYAddition)
/**
 创建文本标签

 @param text 文本
 @param fontSize 文本字体大小
 @param color 颜色
 @return UILabel
 */
+ (instancetype)ey_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color;
@end
