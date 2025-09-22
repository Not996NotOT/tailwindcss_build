import 'package:flutter/material.dart';

/// Tailwind CSS Justify Content utilities for Flutter
/// Utilities for controlling how flex and grid items are positioned along a container's main axis.
extension JustifyContentExt on List<Widget> {
  
  // === justify-content utilities ===
  
  /// justify-start -> justify-content: flex-start;
  /// 将flex项目打包到容器主轴的起始位置
  Widget justifyStart({
    Axis direction = Axis.horizontal,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
  
  /// justify-end -> justify-content: flex-end;
  /// 将flex项目打包到容器主轴的末端
  Widget justifyEnd({
    Axis direction = Axis.horizontal,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
  
  /// justify-center -> justify-content: center;
  /// 将flex项目打包到容器主轴的中心
  Widget justifyCenter({
    Axis direction = Axis.horizontal,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
  
  /// justify-between -> justify-content: space-between;
  /// 在flex项目之间分配空间，使项目之间有相等的空间
  Widget justifyBetween({
    Axis direction = Axis.horizontal,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
  
  /// justify-around -> justify-content: space-around;
  /// 在flex项目周围分配空间，使每个项目的每一侧都有相等的空间
  Widget justifyAround({
    Axis direction = Axis.horizontal,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
  
  /// justify-evenly -> justify-content: space-evenly;
  /// 在flex项目周围分配空间，使项目之间和每一侧的空间都相等
  Widget justifyEvenly({
    Axis direction = Axis.horizontal,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
  
  /// justify-stretch -> justify-content: stretch;
  /// 拉伸auto-sized内容项目以填充容器主轴上的可用空间
  Widget justifyStretch({
    Axis direction = Axis.horizontal,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.stretch,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this.map((child) => Expanded(child: child)).toList(),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this.map((child) => Expanded(child: child)).toList(),
      );
    }
  }
  
  /// justify-normal -> justify-content: normal;
  /// 将内容项目打包在其默认位置，就好像没有设置justify-content值一样
  Widget justifyNormal({
    Axis direction = Axis.horizontal,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: this,
      );
    }
  }
}

/// 单个Widget的justify-content扩展
extension SingleWidgetJustifyContentExt on Widget {
  
  /// 将单个widget包装到justify-start容器中
  Widget justifyStart({Axis direction = Axis.horizontal}) {
    return [this].justifyStart(direction: direction);
  }
  
  /// 将单个widget包装到justify-end容器中
  Widget justifyEnd({Axis direction = Axis.horizontal}) {
    return [this].justifyEnd(direction: direction);
  }
  
  /// 将单个widget包装到justify-center容器中
  Widget justifyCenter({Axis direction = Axis.horizontal}) {
    return [this].justifyCenter(direction: direction);
  }
}

/// Justify Content工具类
class JustifyContent {
  /// 创建justify-start容器
  static Widget start(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.justifyStart(direction: direction);
  }
  
  /// 创建justify-end容器
  static Widget end(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.justifyEnd(direction: direction);
  }
  
  /// 创建justify-center容器
  static Widget center(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.justifyCenter(direction: direction);
  }
  
  /// 创建justify-between容器
  static Widget between(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.justifyBetween(direction: direction);
  }
  
  /// 创建justify-around容器
  static Widget around(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.justifyAround(direction: direction);
  }
  
  /// 创建justify-evenly容器
  static Widget evenly(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.justifyEvenly(direction: direction);
  }
}

/// MainAxisAlignment的字符串扩展
extension MainAxisAlignmentExt on String {
  MainAxisAlignment get mainAxisAlignment {
    switch (this.toLowerCase()) {
      case 'start': return MainAxisAlignment.start;
      case 'end': return MainAxisAlignment.end;
      case 'center': return MainAxisAlignment.center;
      case 'between':
      case 'space-between':
      case 'spaceBetween': 
        return MainAxisAlignment.spaceBetween;
      case 'around':
      case 'space-around':
      case 'spaceAround': 
        return MainAxisAlignment.spaceAround;
      case 'evenly':
      case 'space-evenly':
      case 'spaceEvenly': 
        return MainAxisAlignment.spaceEvenly;
      default: return MainAxisAlignment.start;
    }
  }
}
