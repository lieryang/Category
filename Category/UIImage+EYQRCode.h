//
//  UIImage+EYQRCode.h
//  CategoryDemo
//
//  Created by gujiabin on 2018/1/5.
//  Copyright © 2018年 lieryang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (EYQRCode)

/**
 读取图片中的二维码

 @return 图片中的二维码信息(该图片中的一个二维码信息,可能为nil)
 */
- (nullable NSString *)readQRCode;

/**
 读取图片中的二维码
 
 @return 图片中的二维码数据集合 CIQRCodeFeature对象(可能为空数组)
 */
- (nullable NSArray *)readQRCodes;

@end
