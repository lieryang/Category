//
//  NSString+EYQRCode.m
//  CategoryDemo
//
//  Created by gujiabin on 2018/1/5.
//  Copyright © 2018年 lieryang. All rights reserved.
//

#import "NSString+EYQRCode.h"

@implementation NSString (EYQRCode)

#pragma mark - 外界调用接口
/**
 根据字符串创建二维码图片

 @param size 二维码的大小
 @return 生成的二维码图片
 */
- (UIImage *)ey_createQRCodeImageWithSize:(CGFloat)size {
    //生成二维码图片
    CIImage * ciImage = [self creatQRcodeWithUrlString:self];

    //提高清晰度,修改二维码大小
    return [self createNonInterpolatedUIImageFormCIImage:ciImage withSize:size];
}

/**
 根据字符串创建带logo的二维码图片

 @param size 二维码图片总大小
 @param logoImage logo图片
 @param logoSize 二维码中的logo图片大小
 @return 生成的带logo的二维码图片
 */
- (UIImage *)ey_createQRCodeImageWithSize:(CGFloat)size withLogoImage:(UIImage *)logoImage withLogoSize:(CGFloat)logoSize {
    UIImage *superImage = [self ey_createQRCodeImageWithSize:size];
    if (logoSize < 0) {
        return superImage;
    } else {
        return [self mergeImage:superImage withSubImage:logoImage withSubImageSize:logoSize];
    }
}

#pragma mark - 内部使用的方法
/**
 根据字符串生成二维码 CIImage 对象

 @param urlString 需要生成二维码的字符串
 @return 生成的二维码
 */
- (CIImage *)creatQRcodeWithUrlString:(NSString *)urlString {
    // 1.创建过滤器 CIQRCodeGenerator这个字符串是固定的不能修改为其他的字符串
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    // 2.恢复滤镜的默认属性 (因为滤镜有可能保存上一次的属性)
    [filter setDefaults];
    // 3.将字符串转换成NSdata
    NSData *data = [urlString dataUsingEncoding:NSUTF8StringEncoding];
    // 4.获取输出的二维码
    [filter setValue:data forKey:@"inputMessage"];
    // 5.生成二维码
    CIImage *outputImage = [filter outputImage];
    return outputImage;
}

/* 根据CIImage生成指定大小的UIImage 更加清晰
 *
 * @param image CIImage
 * @param size 图片宽度
 */
- (UIImage *)createNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat)size {
    CGRect extent = CGRectIntegral(image.extent);
    CGFloat extentWidth = CGRectGetWidth(extent);
    CGFloat extentHeight = CGRectGetHeight(extent);
    if (size < extentWidth || size < extentHeight) {
       size = MIN(CGRectGetWidth(extent), CGRectGetHeight(extent));
    }

    CGFloat scale = MIN(size/extentWidth, size/extentHeight);

    // 1.创建bitmap;
    size_t width = CGRectGetWidth(extent) * scale;
    size_t height = CGRectGetHeight(extent) * scale;
    CGColorSpaceRef cs = CGColorSpaceCreateDeviceGray();
    CGContextRef bitmapRef = CGBitmapContextCreate(nil, width, height, 8, 0, cs, (CGBitmapInfo)kCGImageAlphaNone);
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef bitmapImage = [context createCGImage:image fromRect:extent];
    CGContextSetInterpolationQuality(bitmapRef, kCGInterpolationNone);
    CGContextScaleCTM(bitmapRef, scale, scale);
    CGContextDrawImage(bitmapRef, extent, bitmapImage);

    // 2.保存bitmap到图片
    CGImageRef scaledImage = CGBitmapContextCreateImage(bitmapRef);
    CGContextRelease(bitmapRef);
    CGImageRelease(bitmapImage);

    return [UIImage imageWithCGImage:scaledImage];
}

/**
 合并两张图片

 @param superImage 底层图片
 @param subImage 上层图片
 @return 合并后的图片
 */
- (UIImage *)mergeImage:(UIImage *)superImage withSubImage:(UIImage *)subImage withSubImageSize:(CGFloat)subSize {
    UIGraphicsBeginImageContext(superImage.size);
    CGFloat superW = superImage.size.width;
    CGFloat superH = superImage.size.height;
    CGFloat subW = subSize;
    CGFloat subH = subSize;

    [superImage drawInRect:CGRectMake(0, 0, superW, superH)];

    [subImage drawInRect:CGRectMake((superW - subW) / 2,(superH - subH) / 2, subW, subH)];

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

    return image;
}

@end
