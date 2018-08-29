//
//  UIButton+EYAddition.m
//  CategoryDemo
//
//  Created by lieryang on 2017/3/18.
//  Copyright © 2017年 lieryang. All rights reserved.
//

#import "UIButton+EYAddition.h"

@implementation UIButton (EYAddition)

+ (instancetype)ey_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor {
    return [self ey_textButton:title fontSize:fontSize normalColor:normalColor highlightedColor:highlightedColor backgroundImageName:nil];
}

+ (instancetype)ey_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor backgroundImageName:(NSString *)backgroundImageName {
    UIButton *button = [[self alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:normalColor forState:UIControlStateNormal];
    [button setTitleColor:highlightedColor forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    if (backgroundImageName.length) {
        [button setBackgroundImage:[UIImage imageNamed:backgroundImageName] forState:UIControlStateNormal];
        
        NSString *backgroundImageNameHL = [backgroundImageName stringByAppendingString:@"_highlighted"];
        [button setBackgroundImage:[UIImage imageNamed:backgroundImageNameHL] forState:UIControlStateHighlighted];
    }
    [button sizeToFit];
    return button;
}

+ (instancetype)ey_imageButton:(NSString *)imageName backgroundImageName:(NSString *)backgroundImageName {
    UIButton *button = [[self alloc] init];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    NSString *imageNameHL = [imageName stringByAppendingString:@"_highlighted"];
    [button setImage:[UIImage imageNamed:imageNameHL] forState:UIControlStateHighlighted];
    
    [button setBackgroundImage:[UIImage imageNamed:backgroundImageName] forState:UIControlStateNormal];
    NSString *backgroundImageNameHL = [backgroundImageName stringByAppendingString:@"_highlighted"];
    [button setBackgroundImage:[UIImage imageNamed:backgroundImageNameHL] forState:UIControlStateHighlighted];
    
    [button sizeToFit];
    return button;
}
@end
