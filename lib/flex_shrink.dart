import 'package:flutter/material.dart';

/// Tailwind CSS Flex Shrink utilities for Flutter
/// Utilities for controlling how flex items shrink.
extension FlexShrinkExt on Widget {
  
  // === flex-shrink utilities ===
  
  /// flex-shrink -> flex-shrink: 1;
  /// 允许flex项目在必要时收缩
  Widget shrink() => Flexible(fit: FlexFit.loose, child: this);
  
  /// flex-shrink-0 -> flex-shrink: 0;
  /// 防止flex项目收缩
  Widget shrink0() => Flexible(fit: FlexFit.tight, child: this);
  
  // === 自定义shrink值 ===
  
  /// 自定义flex-shrink值
  /// 在Flutter中，我们通过Flexible的fit属性来控制收缩行为
  Widget shrinkCustom({FlexFit fit = FlexFit.loose}) => Flexible(fit: fit, child: this);
}

/// 用于多个Widget的flex-shrink工具类
extension FlexShrinkListExt on List<Widget> {
  
  /// 为列表中的所有Widget应用shrink
  List<Widget> get allShrink => map((widget) => widget.shrink()).toList();
  
  /// 为列表中的所有Widget应用shrink0
  List<Widget> get allShrink0 => map((widget) => widget.shrink0()).toList();
}

/// Flex shrink 辅助工具类
class FlexShrink {
  /// 创建一个shrink项目
  static Widget shrink(Widget child) => Flexible(fit: FlexFit.loose, child: child);
  
  /// 创建一个shrink-0项目
  static Widget shrink0(Widget child) => Flexible(fit: FlexFit.tight, child: child);
  
  /// 创建一个自定义shrink行为的项目
  static Widget custom(Widget child, {FlexFit fit = FlexFit.loose}) {
    return Flexible(fit: fit, child: child);
  }
  
  /// 将多个Widget包装为shrink项目
  static List<Widget> wrapAll(List<Widget> children) {
    return children.map((child) => shrink(child)).toList();
  }
  
  /// 将多个Widget包装为shrink0项目
  static List<Widget> wrapAllNoShrink(List<Widget> children) {
    return children.map((child) => shrink0(child)).toList();
  }
}

/// FlexFit的便捷扩展
extension FlexFitExt on String {
  FlexFit get flexFit {
    switch (toLowerCase()) {
      case 'tight': return FlexFit.tight;
      case 'loose': return FlexFit.loose;
      default: return FlexFit.loose;
    }
  }
}

/// 组合Flex属性的工具类
class FlexProperties {
  /// 组合grow和shrink属性
  static Widget combined(
    Widget child, {
    bool grow = false,
    bool shrink = true,
    int flex = 1,
  }) {
    if (grow) {
      return Expanded(
        flex: flex,
        child: child,
      );
    } else if (shrink) {
      return Flexible(
        flex: flex,
        fit: FlexFit.loose,
        child: child,
      );
    } else {
      return Flexible(
        flex: flex,
        fit: FlexFit.tight,
        child: child,
      );
    }
  }
}