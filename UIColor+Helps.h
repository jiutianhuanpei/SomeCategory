//
//  UIColor+Helps.h
//  FirstProject
//
//  Created by shenhongbang on 16/3/21.
//  Copyright © 2016年 shenhongbang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Helps)
/**
 *  生成 十六进制 的颜色
 *
 *  @param hexString 十六进制颜色
 *  @param alpha     透明度
 *
 *  @return
 */
+ (UIColor *)shbColorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;
+ (UIColor *)shbColorWithHexString:(NSString *)hexString;

@end
