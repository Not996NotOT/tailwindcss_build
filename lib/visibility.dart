import 'package:flutter/material.dart';

/// Tailwind CSS Visibility utilities for Flutter
/// Utilities for controlling the visibility of an element.
extension VisibilityExt on Widget {
  
  // === Visibility utilities ===
  
  /// visible -> visibility: visible;
  /// 元素可见
  Widget visible() => Visibility(
    visible: true,
    child: this,
  );
  
  /// invisible -> visibility: hidden;
  /// 元素不可见但占据空间
  Widget invisible() => Visibility(
    visible: false,
    maintainSize: true,
    maintainAnimation: true,
    maintainState: true,
    child: this,
  );
  
  /// collapse -> visibility: collapse;
  /// 在Flutter中类似于invisible，但主要用于表格行列
  Widget collapse() => Visibility(
    visible: false,
    maintainSize: false,
    maintainAnimation: false,
    maintainState: true,
    child: this,
  );
}

/// 高级可见性控制扩展
extension AdvancedVisibilityExt on Widget {
  
  /// 条件可见性
  Widget visibleIf(bool condition) => Visibility(
    visible: condition,
    child: this,
  );
  
  /// 条件可见性（不可见时不占空间）
  Widget showIf(bool condition) => condition ? this : const SizedBox.shrink();
  
  /// 条件可见性（不可见时占空间）
  Widget invisibleIf(bool condition) => Visibility(
    visible: !condition,
    maintainSize: true,
    maintainAnimation: true,
    maintainState: true,
    child: this,
  );
  
  /// 淡入淡出可见性
  Widget fadeVisibility(bool visible, {Duration? duration}) => AnimatedOpacity(
    opacity: visible ? 1.0 : 0.0,
    duration: duration ?? const Duration(milliseconds: 300),
    child: this,
  );
  
  /// 缩放可见性
  Widget scaleVisibility(bool visible, {Duration? duration}) => AnimatedScale(
    scale: visible ? 1.0 : 0.0,
    duration: duration ?? const Duration(milliseconds: 300),
    child: this,
  );
  
  /// 滑动可见性
  Widget slideVisibility(
    bool visible, {
    Duration? duration,
    Offset beginOffset = const Offset(0, -1),
    Offset endOffset = Offset.zero,
  }) => AnimatedSlide(
    offset: visible ? endOffset : beginOffset,
    duration: duration ?? const Duration(milliseconds: 300),
    child: this,
  );
  
  /// 组合动画可见性
  Widget animatedVisibility(
    bool visible, {
    Duration? duration,
    Curve curve = Curves.easeInOut,
  }) => AnimatedSwitcher(
    duration: duration ?? const Duration(milliseconds: 300),
    switchInCurve: curve,
    switchOutCurve: curve,
    child: visible ? this : const SizedBox.shrink(),
  );
}

/// 透明度相关扩展
extension OpacityExt on Widget {
  
  /// 完全透明
  Widget transparent() => Opacity(opacity: 0.0, child: this);
  
  /// 半透明
  Widget semitransparent() => Opacity(opacity: 0.5, child: this);
  
  /// 自定义透明度
  Widget opacity(double opacity) => Opacity(opacity: opacity, child: this);
  
  /// 动画透明度
  Widget animatedOpacity(
    double opacity, {
    Duration? duration,
    Curve curve = Curves.easeInOut,
  }) => AnimatedOpacity(
    opacity: opacity,
    duration: duration ?? const Duration(milliseconds: 300),
    curve: curve,
    child: this,
  );
}

/// 显示/隐藏状态管理
class VisibilityState {
  bool _visible;
  
  VisibilityState({bool visible = true}) : _visible = visible;
  
  bool get visible => _visible;
  
  void show() => _visible = true;
  void hide() => _visible = false;
  void toggle() => _visible = !_visible;
  
  Widget apply(Widget child) => child.visibleIf(_visible);
}

/// Visibility工具类
class VisibilityUtils {
  /// 显示元素
  static Widget visible(Widget child) => child.visible();
  
  /// 隐藏元素（占空间）
  static Widget invisible(Widget child) => child.invisible();
  
  /// 折叠元素（不占空间）
  static Widget collapse(Widget child) => child.collapse();
  
  /// 条件显示
  static Widget showIf(Widget child, bool condition) => child.showIf(condition);
  
  /// 条件可见
  static Widget visibleIf(Widget child, bool condition) => child.visibleIf(condition);
  
  /// 条件不可见
  static Widget invisibleIf(Widget child, bool condition) => child.invisibleIf(condition);
  
  /// 淡入淡出
  static Widget fade(Widget child, bool visible, {Duration? duration}) =>
      child.fadeVisibility(visible, duration: duration);
  
  /// 缩放显示
  static Widget scale(Widget child, bool visible, {Duration? duration}) =>
      child.scaleVisibility(visible, duration: duration);
  
  /// 滑动显示
  static Widget slide(
    Widget child,
    bool visible, {
    Duration? duration,
    Offset? beginOffset,
  }) => child.slideVisibility(
    visible,
    duration: duration,
    beginOffset: beginOffset ?? const Offset(0, -1),
  );
  
  /// 动画切换
  static Widget animated(Widget child, bool visible, {Duration? duration}) =>
      child.animatedVisibility(visible, duration: duration);
  
  /// 设置透明度
  static Widget opacity(Widget child, double opacity) => child.opacity(opacity);
  
  /// 动画透明度
  static Widget animatedOpacity(
    Widget child,
    double opacity, {
    Duration? duration,
  }) => child.animatedOpacity(opacity, duration: duration);
}
