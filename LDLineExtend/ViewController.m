//
//  ViewController.m
//  LDLineExtend
//
//  Created by lidi on 10/20/15.
//  Copyright © 2015 lidi. All rights reserved.
//

#import "ViewController.h"
#import "UIView+LDLineExtend.h"

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
static const CGFloat whiteViewWidth = 100.0f;

@interface ViewController ()
@property (nonatomic, strong) UIView *whiteView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _whiteView                 = [[UIView alloc] initWithFrame:CGRectMake(ScreenWidth/2.0 - whiteViewWidth/2.0, ScreenHeight/2.0 - whiteViewWidth/2.0, whiteViewWidth, whiteViewWidth)];
    _whiteView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_whiteView];

    [_whiteView addTopLine];
    [_whiteView addLeftLine:25.0f bottomSpace:25.0f];
    [_whiteView addRightLine:25.0f bottomSpace:25.0f];
    [_whiteView addBottomLine];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [UIView animateWithDuration:0.3f animations:^{
        CGRect frame      = _whiteView.frame;
        frame.size.height += 20.0f;
        _whiteView.frame  = frame;
    } completion:^(BOOL finished) {

    }];
}
@end
