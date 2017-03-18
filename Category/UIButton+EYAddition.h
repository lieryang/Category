//
//  UIButton+EYAddition.h
//  CategoryDemo
//
//  Created by lieryang on 2017/3/18.
//  Copyright © 2017年 lieryang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (EYAddition)

/**
 创建带文本的按钮
 
 @param title            按钮文字
 @param fontSize         字体大小
 @param normalColor      默认颜色
 @param highlightedColor 高亮颜色
 
 @return UIButton
 */
+ (instancetype)ey_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor;

/**
 创建带文本的按钮
 
 @param title               按钮文字
 @param fontSize            字体大小
 @param normalColor         默认颜色
 @param highlightedColor    高亮颜色
 @param backgroundImageName 正常状态背景图片名称
 (高亮状态的背景图片名称 = 正常状态背景图片名称 + _highlighted)
 
 @return UIButton
 */
+ (instancetype)ey_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor backgroundImageName:(NSString *)backgroundImageName;

/**
 创建图片按钮
 
 @param imageName           图像名称
 @param backgroundImageName 背景图片名称
 (高亮状态的图片名称 	 = 正常状态图片名称 + _highlighted)
 (高亮状态的背景图片名称 = 正常状态"背景"图片名称 + _highlighted)
 
 @return UIButton
 */
+ (instancetype)ey_imageButton:(NSString *)imageName backgroundImageName:(NSString *)backgroundImageName;

@end
