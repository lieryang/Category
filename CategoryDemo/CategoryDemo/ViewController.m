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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    EYHTTPManager * manager1 = [EYHTTPManager sharedsharedHTTPManager];
    EYHTTPManager * manager2 = [[EYHTTPManager alloc] init];
    NSLog(@"%p",manager1);
    NSLog(@"%p",manager2);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
