//
//  NSString+EYQRCode.h
//  CategoryDemo
//
//  Created by gujiabin on 2018/1/5.
//  Copyright © 2018年 lieryang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (EYQRCode)

/**
 根据字符串创建二维码图片

 @param size 二维码的大小
 @return 生成的二维码图片
 */
- (UIImage *)ey_createQRCodeImageWithSize:(CGFloat)size;

/**
 根据字符串创建带logo的二维码图片

 @param size 二维码图片总大小
 @param logoImage logo图片
 @param logoSize 二维码中的logo图片大小
 @return 生成的带logo的二维码图片
 */
- (UIImage *)ey_createQRCodeImageWithSize:(CGFloat)size withLogoImage:(UIImage *)logoImage withLogoSize:(CGFloat)logoSize;

@end
