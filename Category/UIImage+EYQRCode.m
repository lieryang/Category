//
//  UIImage+EYQRCode.m
//  CategoryDemo
//
//  Created by gujiabin on 2018/1/5.
//  Copyright © 2018年 lieryang. All rights reserved.
//

#import "UIImage+EYQRCode.h"

@implementation UIImage (EYQRCode)

/**
 读取图片中的二维码

 @return 图片中的二维码信息(该图片中的一个二维码信息)
 */
- (nullable NSString *)readQRCode
{
    return [[self readQRCodes].firstObject messageString];
}

/**
 读取图片中的二维码

 @return 图片中的二维码数据集合 CIQRCodeFeature对象
 */
- (nullable NSArray *)readQRCodes
{
    // 创建一个CIImage对象
    CIImage *ciImage = [[CIImage alloc] initWithCGImage:self.CGImage options:nil];
    CIContext *context = [CIContext contextWithOptions:@{kCIContextUseSoftwareRenderer : @(YES)}]; // 软件渲染
    CIDetector *detector = [CIDetector detectorOfType:CIDetectorTypeQRCode context:context options:@{CIDetectorAccuracy : CIDetectorAccuracyHigh}];// 二维码识别
    // 注意这里的CIDetectorTypeQRCode
    NSArray *features = [detector featuresInImage:ciImage];
//    NSLog(@"features = %@",features); // 识别后的结果集
//    for (CIQRCodeFeature *feature in features) {
//        NSLog(@"msg = %@",feature.messageString); // 打印二维码中的信息
//    }
    return features;
}

@end
