//
//  ViewController.m
//  CategoryDemo
//
//  Created by lieryang on 17/3/6.
//  Copyright © 2017年 lieryang. All rights reserved.
//

#import "ViewController.h"
#import "EYCategory.h"
#import "EYHTTPManager.h"
#import "EYDeviceInformation.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *QRCodeImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    EYHTTPManager * manager1 = [EYHTTPManager sharedsharedHTTPManager];
    EYHTTPManager * manager2 = [[EYHTTPManager alloc] init];
    EYLog(@"manager1---%p",manager1);
    EYLog(@"manager2---%p",manager2);
    EYLog(@"*******************测试单例结束*********************");

    EYLog(@"UUID---%@", [EYDeviceInformation getUUID]);
    EYLog(@"getDeviceIPAdress---%@", [EYDeviceInformation getDeviceIPAdress]);
    EYLog(@"getRouterIpAdress---%@", [EYDeviceInformation getRouterIpAdress]);
    EYLog(@"getTotalMemorySize---%lld", [EYDeviceInformation getTotalMemorySize]);
    EYLog(@"getCurrentBatteryLevel---%f", [EYDeviceInformation getCurrentBatteryLevel]);
    EYLog(@"getCurrentWiFiSSID---%@", [EYDeviceInformation getCurrentWiFiSSID]);

    EYLog(@"******************测试EYDeviceInformation结束**********************");

    //测试普通二维码生成
    self.QRCodeImageView.image = [@"www.baidu.com" ey_createQRCodeImageWithSize:200];

    //测试logo二维码生成
    self.QRCodeImageView.image = [@"www.baidu.com" ey_createQRCodeImageWithSize:375 withLogoImage:[UIImage imageNamed:@"logo"] withLogoSize:50];
    EYLog(@"******************测试二维码结束**********************");
}

@end
