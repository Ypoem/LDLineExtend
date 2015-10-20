//
//  UIView+LDLineExtend.h
//  LDLineExtend
//
//  Created by lidi on 10/20/15.
//  Copyright © 2015 lidi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LDLineExtend)
- (UIView *)addTopLine;
- (UIView *)addTopLine:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace;

- (UIView *)addLeftLine;
- (UIView *)addLeftLine:(CGFloat)topSpace bottomSpace:(CGFloat)bottomSpace;

- (UIView *)addBottomLine;
- (UIView *)addBottomLine:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace;

- (UIView *)addRightLine;
- (UIView *)addRightLine:(CGFloat)topSpace bottomSpace:(CGFloat)bottomSpace;
@end
