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
    // Do any additional setup after loading the view, typically from a nib.
    EYHTTPManager * manager1 = [EYHTTPManager sharedsharedHTTPManager];
    EYHTTPManager * manager2 = [[EYHTTPManager alloc] init];
    NSLog(@"manager1---%p",manager1);
    NSLog(@"manager2---%p",manager2);
    NSLog(@"*******************测试单例结束*********************");

    NSLog(@"UUID---%@", [EYDeviceInformation getUUID]);
    NSLog(@"getDeviceIPAdress---%@", [EYDeviceInformation getDeviceIPAdress]);
    NSLog(@"getRouterIpAdress---%@", [EYDeviceInformation getRouterIpAdress]);
    NSLog(@"getTotalMemorySize---%lld", [EYDeviceInformation getTotalMemorySize]);
    NSLog(@"getCurrentBatteryLevel---%f", [EYDeviceInformation getCurrentBatteryLevel]);
    NSLog(@"getCurrentWiFiSSID---%@", [EYDeviceInformation getCurrentWiFiSSID]);

    NSLog(@"******************测试EYDeviceInformation结束**********************");

    //测试普通二维码生成
    self.QRCodeImageView.image = [@"www.baidu.com" ey_createQRCodeImageWithSize:200];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
