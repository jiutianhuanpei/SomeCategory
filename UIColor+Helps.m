//
//  UIColor+Helps.m
//  FirstProject
//
//  Created by shenhongbang on 16/3/21.
//  Copyright © 2016年 shenhongbang. All rights reserved.
//

#import "UIColor+Helps.h"

@implementation UIColor (Helps)

+ (UIColor *)shbColorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    NSString *string = hexString;
    if ([string hasPrefix:@"#"]) {
        string = [string substringFromIndex:1];
    }
    if ([string hasPrefix:@"0x"]) {
        string = [string substringFromIndex:2];
    }
    if (string.length != 6) {
        return [UIColor clearColor];
    }
    
    NSString *rString = [string substringWithRange:NSMakeRange(0, 2)];
    NSString *gString = [string substringWithRange:NSMakeRange(2, 2)];
    NSString *bString = [string substringWithRange:NSMakeRange(4, 2)];
    
    unsigned int red, green, blue;
    
    [[NSScanner scannerWithString:rString] scanHexInt:&red];
    [[NSScanner scannerWithString:gString] scanHexInt:&green];
    [[NSScanner scannerWithString:bString] scanHexInt:&blue];
    
    UIColor *color = [UIColor colorWithRed:(CGFloat)red / 255. green:(CGFloat)green / 255. blue:(CGFloat)blue / 255. alpha:alpha];
    
    
    return color;
}

+ (UIColor *)shbColorWithHexString:(NSString *)hexString {
    return [self shbColorWithHexString:hexString alpha:1];
}

@end
