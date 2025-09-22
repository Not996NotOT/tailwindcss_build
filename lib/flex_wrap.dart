import 'package:flutter/material.dart';

/// Tailwind CSS Flex Wrap utilities for Flutter
/// Utilities for controlling how flex items wrap.
extension FlexWrapExt on Widget {
  
  // === flex-wrap utilities ===
  
  /// flex-nowrap -> flex-wrap: nowrap;
  /// 防止flex项目换行，如果需要会导致溢出
  Widget flexNoWrap() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(child: this),
    );
  }
  
  /// flex-wrap -> flex-wrap: wrap;
  /// 允许flex项目换行
  Widget flexWrap() {
    return Wrap(
      children: [this],
    );
  }
  
  /// flex-wrap-reverse -> flex-wrap: wrap-reverse;
  /// 允许flex项目以相反方向换行
  Widget flexWrapReverse() {
    return Wrap(
      verticalDirection: VerticalDirection.up,
      children: [this],
    );
  }
}

/// 用于创建Wrap容器的扩展（接受多个子组件）
extension WrapContainerExt on List<Widget> {
  
  /// 创建不换行的容器 (flex-nowrap)
  /// 在Flutter中使用SingleChildScrollView来模拟nowrap行为
  Widget flexNoWrap({
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    if (direction == Axis.horizontal) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: this,
        ),
      );
    } else {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: this,
        ),
      );
    }
  }
  
  /// 创建可换行的容器 (flex-wrap)
  Widget flexWrap({
    Axis direction = Axis.horizontal,
    WrapAlignment alignment = WrapAlignment.start,
    double spacing = 0.0,
    WrapAlignment runAlignment = WrapAlignment.start,
    double runSpacing = 0.0,
    WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    Clip clipBehavior = Clip.none,
  }) {
    return Wrap(
      direction: direction,
      alignment: alignment,
      spacing: spacing,
      runAlignment: runAlignment,
      runSpacing: runSpacing,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      clipBehavior: clipBehavior,
      children: this,
    );
  }
  
  /// 创建反向换行的容器 (flex-wrap-reverse)
  Widget flexWrapReverse({
    Axis direction = Axis.horizontal,
    WrapAlignment alignment = WrapAlignment.start,
    double spacing = 0.0,
    WrapAlignment runAlignment = WrapAlignment.start,
    double runSpacing = 0.0,
    WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
    TextDirection? textDirection,
    Clip clipBehavior = Clip.none,
  }) {
    return Wrap(
      direction: direction,
      alignment: alignment,
      spacing: spacing,
      runAlignment: runAlignment,
      runSpacing: runSpacing,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: VerticalDirection.up,
      clipBehavior: clipBehavior,
      children: this,
    );
  }
}

/// Wrap 对齐方式的便捷枚举转换
extension WrapAlignmentExt on String {
  WrapAlignment get wrapAlignment {
    switch (this) {
      case 'start': return WrapAlignment.start;
      case 'end': return WrapAlignment.end;
      case 'center': return WrapAlignment.center;
      case 'spaceBetween': return WrapAlignment.spaceBetween;
      case 'spaceAround': return WrapAlignment.spaceAround;
      case 'spaceEvenly': return WrapAlignment.spaceEvenly;
      default: return WrapAlignment.start;
    }
  }
}

extension WrapCrossAlignmentExt on String {
  WrapCrossAlignment get wrapCrossAlignment {
    switch (this) {
      case 'start': return WrapCrossAlignment.start;
      case 'end': return WrapCrossAlignment.end;
      case 'center': return WrapCrossAlignment.center;
      default: return WrapCrossAlignment.start;
    }
  }
}