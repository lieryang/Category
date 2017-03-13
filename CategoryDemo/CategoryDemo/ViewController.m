//
//  ViewController.m
//  CategoryDemo
//
//  Created by lieryang on 17/3/6.
//  Copyright © 2017年 lieryang. All rights reserved.
//

#import "ViewController.h"
#import "EYCategory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString * testString = @"string";
    NSLog(@"%@", [testString ey_sha256String]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
