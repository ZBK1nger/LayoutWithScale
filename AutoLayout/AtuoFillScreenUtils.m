//
//  AtuoFillScreenUtils.m
//  AutoLayout
//
//  Created by 张博 on 16/6/29.
//  Copyright © 2016年 张博. All rights reserved.
//

#import "AtuoFillScreenUtils.h"
#import "AppDelegate.h"
@implementation AtuoFillScreenUtils
/**
 * 将需要按比例适配的View作为参数传递
 *
 *  @param view <#view description#>
 */
+ (void)autoLayoutFillScreen:(UIView *)view {
    for(UIView *firstLevelView in view.subviews) {
        firstLevelView.frame = [AtuoFillScreenUtils updateViewsFrame:firstLevelView.frame.origin.x withY:firstLevelView.frame.origin.y AndWidth:firstLevelView.frame.size.width AndHeight:firstLevelView.frame.size.height];
        for (UIView *secondLevelView in firstLevelView.subviews) {
            secondLevelView.frame = [AtuoFillScreenUtils updateViewsFrame:secondLevelView.frame.origin.x withY:firstLevelView.frame.origin.y AndWidth:firstLevelView.frame.size.width AndHeight:secondLevelView.frame.size.height];
        }
    }
}
/**
 *  按比例系数更新frame
 *
 *  @param x      x description
 *  @param y      y description
 *  @param width  width description
 *  @param height height description
 *
 *  @return return value description
 */

+ (CGRect)updateViewsFrame:(CGFloat) x withY:(CGFloat) y AndWidth:(CGFloat) width AndHeight:(CGFloat) height {
    AppDelegate *appdelegate = [UIApplication sharedApplication].delegate;
    CGRect rect;
    rect.origin.x = x * appdelegate.autoSizeScaleX;
    rect.origin.y = y *appdelegate.autoSizeScaleX;
    rect.size.width = width * appdelegate.autoSizeScaleX;
    rect.size.height = height *appdelegate.autoSizeScaleY;
    return rect;
    
}
@end
