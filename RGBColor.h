//
//  RGBColor.h
//
//  Created by mac on 2019/6/24.
//  Copyright © 2019 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface RGBColor : NSObject
/**
 RGBString:RGB的颜色 (输入错误的字符串会返回redColor)
 alpha:透明度
 */
+(UIColor *)colorWithConversionString:(NSString *)RGBString Alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
