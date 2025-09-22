import 'package:flutter/material.dart';

/// Tailwind CSS Flex Grow utilities for Flutter
/// Utilities for controlling how flex items grow.
extension FlexGrowExt on Widget {
  
  // === flex-grow utilities ===
  
  /// flex-grow -> flex-grow: 1;
  /// 允许flex项目增长以填充任何可用空间
  Widget grow() => Expanded(child: this);
  
  /// flex-grow-0 -> flex-grow: 0;
  /// 防止flex项目增长
  Widget grow0() => Flexible(flex: 0, fit: FlexFit.loose, child: this);
  
  // === 自定义grow值 ===
  
  /// 自定义flex-grow值
  Widget growCustom(int growValue) => Expanded(flex: growValue, child: this);
}

/// 用于多个Widget的flex-grow工具类
extension FlexGrowListExt on List<Widget> {
  
  /// 为列表中的所有Widget应用grow
  List<Widget> get allGrow => map((widget) => widget.grow()).toList();
  
  /// 为列表中的所有Widget应用grow0
  List<Widget> get allGrow0 => map((widget) => widget.grow0()).toList();
  
  /// 为列表中的Widget应用不同的grow值
  List<Widget> growValues(List<int> growValues) {
    final result = <Widget>[];
    for (int i = 0; i < length; i++) {
      final growValue = i < growValues.length ? growValues[i] : 1;
      result.add(this[i].growCustom(growValue));
    }
    return result;
  }
}

/// Flex grow 辅助工具类
class FlexGrow {
  /// 创建一个grow项目
  static Widget grow(Widget child) => Expanded(child: child);
  
  /// 创建一个grow-0项目
  static Widget grow0(Widget child) => Flexible(flex: 0, fit: FlexFit.loose, child: child);
  
  /// 创建一个自定义grow值的项目
  static Widget custom(Widget child, int growValue) => Expanded(flex: growValue, child: child);
  
  /// 将多个Widget包装为grow项目
  static List<Widget> wrapAll(List<Widget> children) {
    return children.map((child) => grow(child)).toList();
  }
  
  /// 根据权重分配grow值
  static List<Widget> distributed(List<Widget> children, List<int> weights) {
    final result = <Widget>[];
    for (int i = 0; i < children.length; i++) {
      final weight = i < weights.length ? weights[i] : 1;
      result.add(custom(children[i], weight));
    }
    return result;
  }
}