//
//  UIView+Helps.m
//  FirstProject
//
//  Created by shenhongbang on 16/3/21.
//  Copyright © 2016年 shenhongbang. All rights reserved.
//

#import "UIView+Helps.h"

@implementation UIView (Helps)

@dynamic x;
@dynamic y;
@dynamic width;
@dynamic height;
@dynamic shbCenter;

- (BOOL)shbSendAction:(NSString *)actionName from:(id)sender {
    id target = sender;
    SEL action = NSSelectorFromString(actionName);
    while (target && ![target canPerformAction:action withSender:sender]) {
        target = [target nextResponder];
    }
    return target ? [[UIApplication sharedApplication] sendAction:action to:target from:sender forEvent:nil] : false;
}

- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x {
    CGRect rect = self.frame;
    rect.origin.x = x;
    self.frame = rect;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y {
    CGRect rect = self.frame;
    rect.origin.y = y;
    self.frame = rect;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect rect = self.frame;
    rect.size.width = width;
    self.frame = rect;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect rect = self.frame;
    rect.size.height = height;
    self.frame = rect;
}

- (CGPoint)shbCenter {
    return self.center;
}

- (void)setShbCenter:(CGPoint)shbCenter {
    CGPoint center = shbCenter;
    self.center = center;
}

@end
