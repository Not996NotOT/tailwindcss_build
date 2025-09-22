import 'package:flutter/material.dart';

/// Tailwind CSS Align Items utilities for Flutter
/// Utilities for controlling how flex and grid items are positioned along a container's cross axis.
extension AlignItemsExt on List<Widget> {
  
  // === align-items utilities ===
  
  /// items-start -> align-items: flex-start;
  /// 将flex项目对齐到容器交叉轴的起始位置
  Widget itemsStart({
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
  
  /// items-end -> align-items: flex-end;
  /// 将flex项目对齐到容器交叉轴的末端
  Widget itemsEnd({
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
  
  /// items-center -> align-items: center;
  /// 将flex项目对齐到容器交叉轴的中心
  Widget itemsCenter({
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
  
  /// items-baseline -> align-items: baseline;
  /// 将flex项目对齐到容器的基线
  Widget itemsBaseline({
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
  
  /// items-stretch -> align-items: stretch;
  /// 拉伸flex项目以填充容器的交叉轴
  Widget itemsStretch({
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
}

/// Wrap容器中的align-items行为
extension WrapAlignItemsExt on List<Widget> {
  
  /// 在Wrap中模拟items-start
  Widget wrapItemsStart({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: this,
    );
  }
  
  /// 在Wrap中模拟items-end
  Widget wrapItemsEnd({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      crossAxisAlignment: WrapCrossAlignment.end,
      children: this,
    );
  }
  
  /// 在Wrap中模拟items-center
  Widget wrapItemsCenter({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: this,
    );
  }
}

/// 单个Widget的align-items扩展
extension SingleWidgetAlignItemsExt on Widget {
  
  /// 将单个widget包装到items-start容器中
  Widget itemsStart({Axis direction = Axis.horizontal}) {
    return [this].itemsStart(direction: direction);
  }
  
  /// 将单个widget包装到items-end容器中
  Widget itemsEnd({Axis direction = Axis.horizontal}) {
    return [this].itemsEnd(direction: direction);
  }
  
  /// 将单个widget包装到items-center容器中
  Widget itemsCenter({Axis direction = Axis.horizontal}) {
    return [this].itemsCenter(direction: direction);
  }
  
  /// 将单个widget包装到items-baseline容器中
  Widget itemsBaseline({Axis direction = Axis.horizontal}) {
    return [this].itemsBaseline(direction: direction);
  }
  
  /// 将单个widget包装到items-stretch容器中
  Widget itemsStretch({Axis direction = Axis.horizontal}) {
    return [this].itemsStretch(direction: direction);
  }
}

/// Align Items工具类
class AlignItems {
  /// 创建items-start容器
  static Widget start(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.itemsStart(direction: direction);
  }
  
  /// 创建items-end容器
  static Widget end(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.itemsEnd(direction: direction);
  }
  
  /// 创建items-center容器
  static Widget center(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.itemsCenter(direction: direction);
  }
  
  /// 创建items-baseline容器
  static Widget baseline(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.itemsBaseline(direction: direction);
  }
  
  /// 创建items-stretch容器
  static Widget stretch(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.itemsStretch(direction: direction);
  }
  
  /// 在Wrap中创建align-items行为
  static Widget wrapStart(List<Widget> children, {double spacing = 0.0}) {
    return children.wrapItemsStart(spacing: spacing);
  }
  
  static Widget wrapEnd(List<Widget> children, {double spacing = 0.0}) {
    return children.wrapItemsEnd(spacing: spacing);
  }
  
  static Widget wrapCenter(List<Widget> children, {double spacing = 0.0}) {
    return children.wrapItemsCenter(spacing: spacing);
  }
}

/// CrossAxisAlignment的字符串扩展
extension CrossAxisAlignmentExt on String {
  CrossAxisAlignment get crossAxisAlignment {
    switch (this.toLowerCase()) {
      case 'start': return CrossAxisAlignment.start;
      case 'end': return CrossAxisAlignment.end;
      case 'center': return CrossAxisAlignment.center;
      case 'stretch': return CrossAxisAlignment.stretch;
      case 'baseline': return CrossAxisAlignment.baseline;
      default: return CrossAxisAlignment.center;
    }
  }
}
