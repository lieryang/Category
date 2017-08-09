//
//  EYDeviceInformation.h
//  CategoryDemo
//
//  Created by gujiabin on 2017/8/9.
//  Copyright © 2017年 lieryang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EYDeviceInformation : NSObject

/// 获取设备版本号
+ (nullable NSString *)getDeviceName;

/// 获取iPhone名称
+ (nonnull NSString *)getiPhoneName;

/// 获取app版本号
+ (nullable NSString *)getAPPVerion;

/// 获取电池电量
+ (CGFloat)getBatteryLevel;

/// 当前系统名称
+ (nonnull NSString *)getSystemName;

/// 当前系统版本号
+ (nonnull NSString *)getSystemVersion;

/// 通用唯一识别码UUID
+ (nonnull NSString *)getUUID;

/// 获取当前设备IP
+ (nonnull NSString *)getDeviceIPAdress;

/// 获取当前wifi的路由器地址
+ (nonnull NSString *)getRouterIpAdress;

/// 获取当前wifi的SSID
+ (nullable NSString *)getCurrentWiFiSSID;

/// 获取总内存大小
+ (long long)getTotalMemorySize;

/// 获取当前可用内存
+ (long long)getAvailableMemorySize;

/// 获取精准电池电量
+ (CGFloat)getCurrentBatteryLevel;

/// 获取电池当前的状态，共有4种状态
+ (nullable NSString *)getBatteryState;

/// 获取当前语言
+ (nullable NSString *)getDeviceLanguage;

@end
