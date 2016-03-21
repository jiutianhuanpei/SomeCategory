//
//  UIView+Helps.h
//  FirstProject
//
//  Created by shenhongbang on 16/3/21.
//  Copyright © 2016年 shenhongbang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Helps)

/**
 *  View 的一些属性
 */
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGPoint shbCenter;

/**
 *  把view触发的一些动作传递到其所在的controller ??
 *
 *  @param actionName 要执行的方法的名字
 *  @param sender     从谁发送的方法，UIView class
 *
 *  @return 
 */
- (BOOL)shbSendAction:(NSString *)actionName from:(id)sender;



@end
