//
//  UIView+LDLineExtend.m
//  LDLineExtend
//
//  Created by lidi on 10/20/15.
//  Copyright © 2015 lidi. All rights reserved.
//

#import "UIView+LDLineExtend.h"
#import "Masonry.h"

static const CGFloat kLineDefault = 0.5f;
//hexString @"dddddd"
#define kLineColor [UIColor colorWithRed:221/255.0 green:221/255.0 blue:221/255.0 alpha:1.0]

@implementation UIView (LDLineExtend)

- (UIView *)addTopLine {
    return [self addTopLine:0.0f rightSpace:0.0f];
}
- (UIView *)addTopLine:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace {
    UIView *_topLine = [UIView new];
    _topLine.backgroundColor = kLineColor;
    [self addSubview:_topLine];
    [_topLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.height.equalTo(@(kLineDefault));
        make.left.equalTo(self).offset(leftSpace);
        make.right.equalTo(self).offset(-rightSpace);
    }];
    return _topLine;
}

- (UIView *)addLeftLine {
    return [self addLeftLine:0.0f bottomSpace:0.0f];
}
- (UIView *)addLeftLine:(CGFloat)topSpace bottomSpace:(CGFloat)bottomSpace {
    UIView *_leftLine = [UIView new];
    _leftLine.backgroundColor = kLineColor;
    [self addSubview:_leftLine];
    [_leftLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self);
        make.width.equalTo(@(kLineDefault));
        make.top.equalTo(self).offset(topSpace);
        make.bottom.equalTo(self).offset(-bottomSpace);
    }];
    return _leftLine;
}

- (UIView *)addBottomLine {
    return [self addBottomLine:0.0f rightSpace:0.0f];
}

- (UIView *)addBottomLine:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace {
    UIView *_bottomLine = [UIView new];
    _bottomLine.backgroundColor = kLineColor;
    [self addSubview:_bottomLine];
    [_bottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self);
        make.height.equalTo(@(kLineDefault));
        
        make.left.equalTo(self).offset(leftSpace);
        make.right.equalTo(self).offset(-rightSpace);
    }];
    return _bottomLine;
}

- (UIView *)addRightLine {
    return [self addRightLine:0.0f bottomSpace:0.0f];
}
- (UIView *)addRightLine:(CGFloat)topSpace bottomSpace:(CGFloat)bottomSpace {
    UIView *_rightLine = [UIView new];
    _rightLine.backgroundColor = kLineColor;
    [self addSubview:_rightLine];
    [_rightLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self);
        make.width.equalTo(@(kLineDefault));
        make.top.equalTo(self).offset(topSpace);
        make.bottom.equalTo(self).offset(-bottomSpace);
    }];
    return _rightLine;
}
@end
