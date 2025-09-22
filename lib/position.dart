import 'package:flutter/material.dart';

/// Tailwind CSS Position utilities for Flutter
/// Utilities for controlling how an element is positioned in the DOM.
extension PositionExt on Widget {
  
  // === Position utilities ===
  
  /// static -> position: static;
  /// 默认定位（Flutter中的普通布局）
  Widget positionStatic() => this;
  
  /// fixed -> position: fixed;
  /// 相对于视口固定定位
  Widget positionFixed({
    double? top,
    double? right,
    double? bottom,
    double? left,
    double? width,
    double? height,
  }) => Positioned(
    top: top,
    right: right,
    bottom: bottom,
    left: left,
    width: width,
    height: height,
    child: this,
  );
  
  /// absolute -> position: absolute;
  /// 绝对定位
  Widget positionAbsolute({
    double? top,
    double? right,
    double? bottom,
    double? left,
    double? width,
    double? height,
  }) => Positioned(
    top: top,
    right: right,
    bottom: bottom,
    left: left,
    width: width,
    height: height,
    child: this,
  );
  
  /// relative -> position: relative;
  /// 相对定位
  Widget positionRelative() => this;
  
  /// sticky -> position: sticky;
  /// 粘性定位（在Flutter中使用SliverAppBar等实现）
  Widget positionSticky() => this;
}

/// Top/Right/Bottom/Left utilities
extension PositionValuesExt on Widget {
  
  // === Inset utilities (top/right/bottom/left) ===
  
  /// inset-0 -> top: 0; right: 0; bottom: 0; left: 0;
  Widget inset0() => Positioned.fill(child: this);
  
  /// inset-x-0 -> left: 0; right: 0;
  Widget insetX0() => Positioned(
    left: 0,
    right: 0,
    child: this,
  );
  
  /// inset-y-0 -> top: 0; bottom: 0;
  Widget insetY0() => Positioned(
    top: 0,
    bottom: 0,
    child: this,
  );
  
  // === Top utilities ===
  
  /// top-0 -> top: 0;
  Widget top0() => Positioned(top: 0, child: this);
  
  /// top-px -> top: 1px;
  Widget topPx() => Positioned(top: 1, child: this);
  
  /// top-0.5 -> top: 2px;
  Widget top0_5() => Positioned(top: 2, child: this);
  
  /// top-1 -> top: 4px;
  Widget top1() => Positioned(top: 4, child: this);
  
  /// top-1.5 -> top: 6px;
  Widget top1_5() => Positioned(top: 6, child: this);
  
  /// top-2 -> top: 8px;
  Widget top2() => Positioned(top: 8, child: this);
  
  /// top-2.5 -> top: 10px;
  Widget top2_5() => Positioned(top: 10, child: this);
  
  /// top-3 -> top: 12px;
  Widget top3() => Positioned(top: 12, child: this);
  
  /// top-4 -> top: 16px;
  Widget top4() => Positioned(top: 16, child: this);
  
  /// top-5 -> top: 20px;
  Widget top5() => Positioned(top: 20, child: this);
  
  /// top-6 -> top: 24px;
  Widget top6() => Positioned(top: 24, child: this);
  
  /// top-8 -> top: 32px;
  Widget top8() => Positioned(top: 32, child: this);
  
  /// top-10 -> top: 40px;
  Widget top10() => Positioned(top: 40, child: this);
  
  /// top-12 -> top: 48px;
  Widget top12() => Positioned(top: 48, child: this);
  
  /// top-16 -> top: 64px;
  Widget top16() => Positioned(top: 64, child: this);
  
  /// top-20 -> top: 80px;
  Widget top20() => Positioned(top: 80, child: this);
  
  /// top-24 -> top: 96px;
  Widget top24() => Positioned(top: 96, child: this);
  
  /// top-32 -> top: 128px;
  Widget top32() => Positioned(top: 128, child: this);
  
  /// top-40 -> top: 160px;
  Widget top40() => Positioned(top: 160, child: this);
  
  /// top-48 -> top: 192px;
  Widget top48() => Positioned(top: 192, child: this);
  
  /// top-56 -> top: 224px;
  Widget top56() => Positioned(top: 224, child: this);
  
  /// top-64 -> top: 256px;
  Widget top64() => Positioned(top: 256, child: this);
  
  /// top-auto -> top: auto;
  Widget topAuto() => this;
  
  /// top-1/2 -> top: 50%;
  Widget topHalf() => Positioned(top: 0.5, child: this); // 需要用LayoutBuilder计算实际值
  
  /// top-1/3 -> top: 33.333333%;
  Widget top1Of3() => LayoutBuilder(
    builder: (context, constraints) {
      final parentHeight = MediaQuery.of(context).size.height;
      return Positioned(top: parentHeight / 3, child: this);
    },
  );
  
  /// top-full -> top: 100%;
  Widget topFull() => LayoutBuilder(
    builder: (context, constraints) {
      final parentHeight = MediaQuery.of(context).size.height;
      return Positioned(top: parentHeight, child: this);
    },
  );
  
  // === Right utilities ===
  
  /// right-0 -> right: 0;
  Widget right0() => Positioned(right: 0, child: this);
  
  /// right-px -> right: 1px;
  Widget rightPx() => Positioned(right: 1, child: this);
  
  /// right-1 -> right: 4px;
  Widget right1() => Positioned(right: 4, child: this);
  
  /// right-2 -> right: 8px;
  Widget right2() => Positioned(right: 8, child: this);
  
  /// right-3 -> right: 12px;
  Widget right3() => Positioned(right: 12, child: this);
  
  /// right-4 -> right: 16px;
  Widget right4() => Positioned(right: 16, child: this);
  
  /// right-5 -> right: 20px;
  Widget right5() => Positioned(right: 20, child: this);
  
  /// right-6 -> right: 24px;
  Widget right6() => Positioned(right: 24, child: this);
  
  /// right-8 -> right: 32px;
  Widget right8() => Positioned(right: 32, child: this);
  
  /// right-10 -> right: 40px;
  Widget right10() => Positioned(right: 40, child: this);
  
  /// right-12 -> right: 48px;
  Widget right12() => Positioned(right: 48, child: this);
  
  /// right-16 -> right: 64px;
  Widget right16() => Positioned(right: 64, child: this);
  
  /// right-20 -> right: 80px;
  Widget right20() => Positioned(right: 80, child: this);
  
  /// right-24 -> right: 96px;
  Widget right24() => Positioned(right: 96, child: this);
  
  /// right-auto -> right: auto;
  Widget rightAuto() => this;
  
  /// right-1/2 -> right: 50%;
  Widget rightHalf() => LayoutBuilder(
    builder: (context, constraints) {
      final parentWidth = MediaQuery.of(context).size.width;
      return Positioned(right: parentWidth * 0.5, child: this);
    },
  );
  
  /// right-full -> right: 100%;
  Widget rightFull() => LayoutBuilder(
    builder: (context, constraints) {
      final parentWidth = MediaQuery.of(context).size.width;
      return Positioned(right: parentWidth, child: this);
    },
  );
  
  // === Bottom utilities ===
  
  /// bottom-0 -> bottom: 0;
  Widget bottom0() => Positioned(bottom: 0, child: this);
  
  /// bottom-px -> bottom: 1px;
  Widget bottomPx() => Positioned(bottom: 1, child: this);
  
  /// bottom-1 -> bottom: 4px;
  Widget bottom1() => Positioned(bottom: 4, child: this);
  
  /// bottom-2 -> bottom: 8px;
  Widget bottom2() => Positioned(bottom: 8, child: this);
  
  /// bottom-3 -> bottom: 12px;
  Widget bottom3() => Positioned(bottom: 12, child: this);
  
  /// bottom-4 -> bottom: 16px;
  Widget bottom4() => Positioned(bottom: 16, child: this);
  
  /// bottom-5 -> bottom: 20px;
  Widget bottom5() => Positioned(bottom: 20, child: this);
  
  /// bottom-6 -> bottom: 24px;
  Widget bottom6() => Positioned(bottom: 24, child: this);
  
  /// bottom-8 -> bottom: 32px;
  Widget bottom8() => Positioned(bottom: 32, child: this);
  
  /// bottom-10 -> bottom: 40px;
  Widget bottom10() => Positioned(bottom: 40, child: this);
  
  /// bottom-12 -> bottom: 48px;
  Widget bottom12() => Positioned(bottom: 48, child: this);
  
  /// bottom-16 -> bottom: 64px;
  Widget bottom16() => Positioned(bottom: 64, child: this);
  
  /// bottom-20 -> bottom: 80px;
  Widget bottom20() => Positioned(bottom: 80, child: this);
  
  /// bottom-24 -> bottom: 96px;
  Widget bottom24() => Positioned(bottom: 96, child: this);
  
  /// bottom-auto -> bottom: auto;
  Widget bottomAuto() => this;
  
  /// bottom-1/2 -> bottom: 50%;
  Widget bottomHalf() => LayoutBuilder(
    builder: (context, constraints) {
      final parentHeight = MediaQuery.of(context).size.height;
      return Positioned(bottom: parentHeight * 0.5, child: this);
    },
  );
  
  /// bottom-full -> bottom: 100%;
  Widget bottomFull() => LayoutBuilder(
    builder: (context, constraints) {
      final parentHeight = MediaQuery.of(context).size.height;
      return Positioned(bottom: parentHeight, child: this);
    },
  );
  
  // === Left utilities ===
  
  /// left-0 -> left: 0;
  Widget left0() => Positioned(left: 0, child: this);
  
  /// left-px -> left: 1px;
  Widget leftPx() => Positioned(left: 1, child: this);
  
  /// left-1 -> left: 4px;
  Widget left1() => Positioned(left: 4, child: this);
  
  /// left-2 -> left: 8px;
  Widget left2() => Positioned(left: 8, child: this);
  
  /// left-3 -> left: 12px;
  Widget left3() => Positioned(left: 12, child: this);
  
  /// left-4 -> left: 16px;
  Widget left4() => Positioned(left: 16, child: this);
  
  /// left-5 -> left: 20px;
  Widget left5() => Positioned(left: 20, child: this);
  
  /// left-6 -> left: 24px;
  Widget left6() => Positioned(left: 24, child: this);
  
  /// left-8 -> left: 32px;
  Widget left8() => Positioned(left: 32, child: this);
  
  /// left-10 -> left: 40px;
  Widget left10() => Positioned(left: 40, child: this);
  
  /// left-12 -> left: 48px;
  Widget left12() => Positioned(left: 48, child: this);
  
  /// left-16 -> left: 64px;
  Widget left16() => Positioned(left: 64, child: this);
  
  /// left-20 -> left: 80px;
  Widget left20() => Positioned(left: 80, child: this);
  
  /// left-24 -> left: 96px;
  Widget left24() => Positioned(left: 96, child: this);
  
  /// left-auto -> left: auto;
  Widget leftAuto() => this;
  
  /// left-1/2 -> left: 50%;
  Widget leftHalf() => LayoutBuilder(
    builder: (context, constraints) {
      final parentWidth = MediaQuery.of(context).size.width;
      return Positioned(left: parentWidth * 0.5, child: this);
    },
  );
  
  /// left-full -> left: 100%;
  Widget leftFull() => LayoutBuilder(
    builder: (context, constraints) {
      final parentWidth = MediaQuery.of(context).size.width;
      return Positioned(left: parentWidth, child: this);
    },
  );
  
  // === 自定义位置方法 ===
  
  /// 自定义top值
  Widget top(double value) => Positioned(top: value, child: this);
  
  /// 自定义right值
  Widget right(double value) => Positioned(right: value, child: this);
  
  /// 自定义bottom值
  Widget bottom(double value) => Positioned(bottom: value, child: this);
  
  /// 自定义left值
  Widget left(double value) => Positioned(left: value, child: this);
  
  /// 完全自定义定位
  Widget positioned({
    double? top,
    double? right,
    double? bottom,
    double? left,
    double? width,
    double? height,
  }) => Positioned(
    top: top,
    right: right,
    bottom: bottom,
    left: left,
    width: width,
    height: height,
    child: this,
  );
}

/// Position工具类
class Position {
  /// 静态定位
  static Widget static(Widget child) => child.positionStatic();
  
  /// 相对定位
  static Widget relative(Widget child) => child.positionRelative();
  
  /// 绝对定位
  static Widget absolute(
    Widget child, {
    double? top,
    double? right,
    double? bottom,
    double? left,
  }) => child.positionAbsolute(
    top: top,
    right: right,
    bottom: bottom,
    left: left,
  );
  
  /// 固定定位
  static Widget fixed(
    Widget child, {
    double? top,
    double? right,
    double? bottom,
    double? left,
  }) => child.positionFixed(
    top: top,
    right: right,
    bottom: bottom,
    left: left,
  );
  
  /// 粘性定位
  static Widget sticky(Widget child) => child.positionSticky();
  
  /// 居中定位
  static Widget center(Widget child) => Positioned.fill(
    child: Center(child: child),
  );
  
  /// 顶部居中
  static Widget topCenter(Widget child) => Positioned(
    top: 0,
    left: 0,
    right: 0,
    child: Center(child: child),
  );
  
  /// 底部居中
  static Widget bottomCenter(Widget child) => Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: Center(child: child),
  );
  
  /// 左侧居中
  static Widget leftCenter(Widget child) => Positioned(
    left: 0,
    top: 0,
    bottom: 0,
    child: Center(child: child),
  );
  
  /// 右侧居中
  static Widget rightCenter(Widget child) => Positioned(
    right: 0,
    top: 0,
    bottom: 0,
    child: Center(child: child),
  );
}
