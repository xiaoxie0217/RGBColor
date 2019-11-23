//
//  UIColor+RGBColor.m
//  iOSComprehensiveDemo
//
//  Created by 谢立新 on 2019/11/23.
//  Copyright © 2019 谢立新. All rights reserved.
//

#import "UIColor+RGBColor.h"

@implementation UIColor (RGBColor)

+(UIColor *)colorWithRGBString:(NSString *)RGBString{
    //判断字符串为nil或者空直接返回
    if (RGBString == nil || [@"" isEqualToString:RGBString]) {
        return [UIColor redColor];
    }
    NSString *colorStr = @"";
    if ([@"#"isEqualToString:[RGBString substringToIndex:1]]) {
        colorStr = [RGBString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    }else{
        colorStr = RGBString;
    }
    if (colorStr.length<6 || colorStr.length>6) {
        return [UIColor redColor];
    }
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString * red = [colorStr substringWithRange:range];
    range.location = 2;
    NSString * green = [colorStr substringWithRange:range];
    range.location = 4;
    NSString * blue = [colorStr substringWithRange:range];
    unsigned int a,b,c;
    [[NSScanner scannerWithString:red] scanHexInt:&a];
    [[NSScanner scannerWithString:green] scanHexInt:&b];
    [[NSScanner scannerWithString:blue] scanHexInt:&c];
    
    return [UIColor colorWithRed:a/255.0f green:b/255.0f blue:c/255.0f alpha:1];
}


@end
