//
//  AppDelegate.h
//  AutoLayout
//
//  Created by 张博 on 16/6/29.
//  Copyright © 2016年 张博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
/**
 *  定义宽高比例系数属性
 */
@property (nonatomic,assign) float autoSizeScaleX;

@property (nonatomic,assign) float autoSizeScaleY;




@end

