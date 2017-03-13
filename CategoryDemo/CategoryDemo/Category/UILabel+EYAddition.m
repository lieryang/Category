//
//  UILabel+EYAddition.m
//  CategoryDemo
//
//  Created by lieryang on 17/3/6.
//  Copyright © 2017年 lieryang. All rights reserved.
//

#import "UILabel+EYAddition.h"

@implementation UILabel (EYAddition)
+ (instancetype)ey_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color
{
    UILabel *label = [[self alloc] init];
    label.text = text;
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = color;
    label.numberOfLines = 0;
    [label sizeToFit];
    
    return label;
}
@end
