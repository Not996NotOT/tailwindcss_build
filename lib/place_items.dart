import 'package:flutter/material.dart';

/// Tailwind CSS Place Items utilities for Flutter
/// Utilities for controlling how items are justified and aligned at the same time.
/// place-items is a shorthand for align-items and justify-items.
extension PlaceItemsExt on List<Widget> {
  
  // === place-items utilities ===
  
  /// place-items-start -> place-items: start;
  /// 将项目打包到其区域的起始位置（同时控制主轴和交叉轴）
  Widget placeItemsStart({
    Axis direction = Axis.horizontal,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: map((child) => Align(
          alignment: Alignment.topLeft,
          child: child,
        )).toList(),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: map((child) => Align(
          alignment: Alignment.topLeft,
          child: child,
        )).toList(),
      );
    }
  }
  
  /// place-items-end -> place-items: end;
  /// 将项目打包到其区域的末端（同时控制主轴和交叉轴）
  Widget placeItemsEnd({
    Axis direction = Axis.horizontal,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: map((child) => Align(
          alignment: Alignment.bottomRight,
          child: child,
        )).toList(),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: map((child) => Align(
          alignment: Alignment.bottomRight,
          child: child,
        )).toList(),
      );
    }
  }
  
  /// place-items-center -> place-items: center;
  /// 将项目打包到其区域的中心（同时控制主轴和交叉轴）
  Widget placeItemsCenter({
    Axis direction = Axis.horizontal,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: map((child) => Align(
          alignment: Alignment.center,
          child: child,
        )).toList(),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: map((child) => Align(
          alignment: Alignment.center,
          child: child,
        )).toList(),
      );
    }
  }
  
  /// place-items-stretch -> place-items: stretch;
  /// 拉伸项目以填充其区域
  Widget placeItemsStretch({
    Axis direction = Axis.horizontal,
  }) {
    if (direction == Axis.horizontal) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: map((child) => Expanded(child: child)).toList(),
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: map((child) => SizedBox(
          width: double.infinity,
          child: child,
        )).toList(),
      );
    }
  }
}

/// 在Grid布局中的place-items行为
extension GridPlaceItemsExt on List<Widget> {
  
  /// 在GridView中模拟place-items-start
  Widget gridPlaceItemsStart({
    int crossAxisCount = 2,
    double spacing = 0.0,
  }) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: map((child) => Align(
        alignment: Alignment.topLeft,
        child: child,
      )).toList(),
    );
  }
  
  /// 在GridView中模拟place-items-end
  Widget gridPlaceItemsEnd({
    int crossAxisCount = 2,
    double spacing = 0.0,
  }) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: map((child) => Align(
        alignment: Alignment.bottomRight,
        child: child,
      )).toList(),
    );
  }
  
  /// 在GridView中模拟place-items-center
  Widget gridPlaceItemsCenter({
    int crossAxisCount = 2,
    double spacing = 0.0,
  }) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: map((child) => Align(
        alignment: Alignment.center,
        child: child,
      )).toList(),
    );
  }
  
  /// 在GridView中模拟place-items-stretch
  Widget gridPlaceItemsStretch({
    int crossAxisCount = 2,
    double spacing = 0.0,
  }) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: map((child) => SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: child,
      )).toList(),
    );
  }
}

/// 在Wrap容器中的place-items行为
extension WrapPlaceItemsExt on List<Widget> {
  
  /// 在Wrap中模拟place-items-start
  Widget wrapPlaceItemsStart({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// 在Wrap中模拟place-items-end
  Widget wrapPlaceItemsEnd({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      alignment: WrapAlignment.end,
      runAlignment: WrapAlignment.end,
      crossAxisAlignment: WrapCrossAlignment.end,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// 在Wrap中模拟place-items-center
  Widget wrapPlaceItemsCenter({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
}

/// 单个Widget的place-items扩展
extension SingleWidgetPlaceItemsExt on Widget {
  
  /// 将单个widget包装到place-items-start容器中
  Widget placeItemStart() {
    return Align(
      alignment: Alignment.topLeft,
      child: this,
    );
  }
  
  /// 将单个widget包装到place-items-end容器中
  Widget placeItemEnd() {
    return Align(
      alignment: Alignment.bottomRight,
      child: this,
    );
  }
  
  /// 将单个widget包装到place-items-center容器中
  Widget placeItemCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// 将单个widget包装到place-items-stretch容器中
  Widget placeItemStretch() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: this,
    );
  }
}

/// Place Items工具类
class PlaceItems {
  /// 创建place-items-start容器
  static Widget start(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.placeItemsStart(direction: direction);
  }
  
  /// 创建place-items-end容器
  static Widget end(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.placeItemsEnd(direction: direction);
  }
  
  /// 创建place-items-center容器
  static Widget center(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.placeItemsCenter(direction: direction);
  }
  
  /// 创建place-items-stretch容器
  static Widget stretch(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return children.placeItemsStretch(direction: direction);
  }
  
  /// 在Grid中创建place-items行为
  static Widget gridStart(List<Widget> children, {int crossAxisCount = 2, double spacing = 0.0}) {
    return children.gridPlaceItemsStart(crossAxisCount: crossAxisCount, spacing: spacing);
  }
  
  static Widget gridEnd(List<Widget> children, {int crossAxisCount = 2, double spacing = 0.0}) {
    return children.gridPlaceItemsEnd(crossAxisCount: crossAxisCount, spacing: spacing);
  }
  
  static Widget gridCenter(List<Widget> children, {int crossAxisCount = 2, double spacing = 0.0}) {
    return children.gridPlaceItemsCenter(crossAxisCount: crossAxisCount, spacing: spacing);
  }
  
  static Widget gridStretch(List<Widget> children, {int crossAxisCount = 2, double spacing = 0.0}) {
    return children.gridPlaceItemsStretch(crossAxisCount: crossAxisCount, spacing: spacing);
  }
  
  /// 在Wrap中创建place-items行为
  static Widget wrapStart(List<Widget> children, {double spacing = 0.0}) {
    return children.wrapPlaceItemsStart(spacing: spacing);
  }
  
  static Widget wrapEnd(List<Widget> children, {double spacing = 0.0}) {
    return children.wrapPlaceItemsEnd(spacing: spacing);
  }
  
  static Widget wrapCenter(List<Widget> children, {double spacing = 0.0}) {
    return children.wrapPlaceItemsCenter(spacing: spacing);
  }
}
