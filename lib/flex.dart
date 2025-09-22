import 'package:flutter/material.dart';

/// Tailwind CSS Flex utilities for Flutter
/// Utilities for controlling how flex items both grow and shrink.
extension FlexExt on Widget {
  
  // === flex shorthand utilities ===
  
  /// flex-1 -> flex: 1 1 0%;
  /// 允许flex项目根据需要增长和收缩，忽略其初始大小
  Widget flex1() => Expanded(flex: 1, child: this);
  
  /// flex-auto -> flex: 1 1 auto;
  /// 允许flex项目根据需要增长和收缩，考虑其初始大小
  Widget flexAuto() => Flexible(child: this);
  
  /// flex-initial -> flex: 0 1 auto;
  /// 允许flex项目收缩但不增长，考虑其初始大小
  Widget flexInitial() => Flexible(flex: 0, child: this);
  
  /// flex-none -> flex: none;
  /// 防止flex项目增长或收缩
  Widget flexNone() => this;

  // === 自定义flex值 ===
  
  /// 自定义flex值 - flex: <value> 1 0%;
  Widget flexCustom(int flexValue) => Expanded(flex: flexValue, child: this);
  
  /// 完全自定义flex属性 - flex: <grow> <shrink> <basis>;
  Widget flexFull({
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) => Flexible(
    flex: flex,
    fit: fit,
    child: this,
  );
}

/// 用于创建Flex布局容器的扩展
extension FlexLayoutExt on List<Widget> {
  
  /// 创建基础Flex容器
  Widget flex({
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    Clip clipBehavior = Clip.none,
  }) {
    return Flex(
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      clipBehavior: clipBehavior,
      children: this,
    );
  }
  
  /// 创建水平Flex容器的简化版本
  Widget row({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) => Row(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    mainAxisSize: mainAxisSize,
    children: this,
  );
  
  /// 创建垂直Flex容器的简化版本
  Widget column({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) => Column(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    mainAxisSize: mainAxisSize,
    children: this,
  );
}

/// Flex对齐方式的便捷扩展
extension MainAxisAlignmentExt on String {
  MainAxisAlignment get mainAxisAlignment {
    switch (this) {
      case 'start': return MainAxisAlignment.start;
      case 'end': return MainAxisAlignment.end;
      case 'center': return MainAxisAlignment.center;
      case 'spaceBetween': return MainAxisAlignment.spaceBetween;
      case 'spaceAround': return MainAxisAlignment.spaceAround;
      case 'spaceEvenly': return MainAxisAlignment.spaceEvenly;
      default: return MainAxisAlignment.start;
    }
  }
}

extension CrossAxisAlignmentExt on String {
  CrossAxisAlignment get crossAxisAlignment {
    switch (this) {
      case 'start': return CrossAxisAlignment.start;
      case 'end': return CrossAxisAlignment.end;
      case 'center': return CrossAxisAlignment.center;
      case 'stretch': return CrossAxisAlignment.stretch;
      case 'baseline': return CrossAxisAlignment.baseline;
      default: return CrossAxisAlignment.center;
    }
  }
}

/// Flex项目组合工具类
class FlexItem {
  /// 创建flex-1项目
  static Widget flex1(Widget child) => Expanded(flex: 1, child: child);
  
  /// 创建flex-auto项目
  static Widget flexAuto(Widget child) => Flexible(child: child);
  
  /// 创建flex-initial项目
  static Widget flexInitial(Widget child) => Flexible(flex: 0, child: child);
  
  /// 创建flex-none项目
  static Widget flexNone(Widget child) => child;
  
  /// 创建自定义flex项目
  static Widget custom(Widget child, int flex) => Expanded(flex: flex, child: child);
}