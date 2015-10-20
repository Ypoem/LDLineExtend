项目中经常需要给View, Cell加线，所以给View封了个扩展

1.支持添加上下左右四个边的线,  功能简单, 请勿见笑！

2.因为View的Frame经常会变动，所以基于Masonry写了Line的布局，可以根据Frame的改变自动调整！

### 效果演示

![](https://github.com/sntd/LDLineExtend/raw/master/Picture/LDLineExtend.gif)



![](https://github.com/sntd/LDLineExtend/raw/master/Picture/demo1.png)



![](https://github.com/sntd/LDLineExtend/raw/master/Picture/demo2.png)

### Demo说明

每次白色View高度+20，线的位置都会自动变化！

两张项目中使用LDLineExtend的截图！

### 功能说明:

``` objective-c
- (UIView *)addTopLine;
- (UIView *)addTopLine:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace;

- (UIView *)addLeftLine;
- (UIView *)addLeftLine:(CGFloat)topSpace bottomSpace:(CGFloat)bottomSpace;

- (UIView *)addBottomLine;
- (UIView *)addBottomLine:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace;

- (UIView *)addRightLine;
- (UIView *)addRightLine:(CGFloat)topSpace bottomSpace:(CGFloat)bottomSpace;
```