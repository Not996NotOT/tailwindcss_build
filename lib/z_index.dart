import 'package:flutter/material.dart';

/// Tailwind CSS Z-Index utilities for Flutter
/// Utilities for controlling the stack order of an element.
extension ZIndexExt on Widget {
  
  // === Z-Index utilities ===
  
  /// z-0 -> z-index: 0;
  Widget z0() => _wrapWithZIndex(0);
  
  /// z-10 -> z-index: 10;
  Widget z10() => _wrapWithZIndex(10);
  
  /// z-20 -> z-index: 20;
  Widget z20() => _wrapWithZIndex(20);
  
  /// z-30 -> z-index: 30;
  Widget z30() => _wrapWithZIndex(30);
  
  /// z-40 -> z-index: 40;
  Widget z40() => _wrapWithZIndex(40);
  
  /// z-50 -> z-index: 50;
  Widget z50() => _wrapWithZIndex(50);
  
  /// z-auto -> z-index: auto;
  /// 在Flutter中相当于默认行为
  Widget zAuto() => this;
  
  /// 自定义z-index值
  Widget zIndex(int index) => _wrapWithZIndex(index);
  
  /// 负z-index值（在Flutter中通过调整Stack中的顺序实现）
  Widget zNegative(int index) => _wrapWithZIndex(-index);
  
  /// 内部方法：通过metadata标记z-index值
  Widget _wrapWithZIndex(int zIndex) {
    return _ZIndexWrapper(
      zIndex: zIndex,
      child: this,
    );
  }
}

/// Z-Index包装器，用于标记层级信息
class _ZIndexWrapper extends StatelessWidget {
  final int zIndex;
  final Widget child;
  
  const _ZIndexWrapper({
    required this.zIndex,
    required this.child,
  });
  
  @override
  Widget build(BuildContext context) {
    return child;
  }
}

/// 层级管理相关扩展
extension LayerExt on Widget {
  
  /// 置于最顶层
  Widget toTop() => _wrapWithZIndex(9999);
  
  /// 置于最底层  
  Widget toBottom() => _wrapWithZIndex(-9999);
  
  /// 置于前景
  Widget toForeground() => _wrapWithZIndex(100);
  
  /// 置于背景
  Widget toBackground() => _wrapWithZIndex(-100);
  
  /// 创建浮动层
  Widget floating({int level = 1000}) => _wrapWithZIndex(level);
  
  /// 创建模态层
  Widget modal({int level = 5000}) => _wrapWithZIndex(level);
  
  /// 创建工具提示层
  Widget tooltip({int level = 8000}) => _wrapWithZIndex(level);
  
  /// 创建下拉菜单层
  Widget dropdown({int level = 3000}) => _wrapWithZIndex(level);
  
  /// 创建覆盖层
  Widget overlay({int level = 6000}) => _wrapWithZIndex(level);
}

/// Stack管理扩展，用于处理多个有z-index的Widget
extension StackWithZIndexExt on List<Widget> {
  
  /// 根据z-index排序并创建Stack
  Widget stackWithZIndex({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    // 按z-index排序Widget
    final sortedWidgets = [...this];
    sortedWidgets.sort((a, b) {
      final aIndex = _extractZIndex(a);
      final bIndex = _extractZIndex(b);
      return aIndex.compareTo(bIndex);
    });
    
    return Stack(
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      clipBehavior: clipBehavior,
      children: sortedWidgets,
    );
  }
  
  /// 提取Widget的z-index值
  int _extractZIndex(Widget widget) {
    if (widget is _ZIndexWrapper) {
      return widget.zIndex;
    }
    return 0; // 默认z-index
  }
}

/// 预定义的层级常量
class ZLayers {
  static const int background = -100;
  static const int base = 0;
  static const int content = 10;
  static const int raised = 20;
  static const int dropdown = 1000;
  static const int sticky = 1020;
  static const int fixed = 1030;
  static const int modal = 1040;
  static const int popover = 1050;
  static const int tooltip = 1060;
  static const int toast = 1070;
  static const int notification = 1080;
  static const int debug = 9999;
}

/// Z-Index工具类
class ZIndex {
  /// 设置z-index为0
  static Widget z0(Widget child) => child.z0();
  
  /// 设置z-index为10
  static Widget z10(Widget child) => child.z10();
  
  /// 设置z-index为20
  static Widget z20(Widget child) => child.z20();
  
  /// 设置z-index为30
  static Widget z30(Widget child) => child.z30();
  
  /// 设置z-index为40
  static Widget z40(Widget child) => child.z40();
  
  /// 设置z-index为50
  static Widget z50(Widget child) => child.z50();
  
  /// 自动z-index
  static Widget auto(Widget child) => child.zAuto();
  
  /// 自定义z-index
  static Widget custom(Widget child, int index) => child.zIndex(index);
  
  /// 置于顶层
  static Widget top(Widget child) => child.toTop();
  
  /// 置于底层
  static Widget bottom(Widget child) => child.toBottom();
  
  /// 创建浮动层
  static Widget floating(Widget child, {int level = ZLayers.raised}) =>
      child.floating(level: level);
  
  /// 创建模态层
  static Widget modal(Widget child) => child.modal(level: ZLayers.modal);
  
  /// 创建工具提示层
  static Widget tooltip(Widget child) => child.tooltip(level: ZLayers.tooltip);
  
  /// 创建下拉菜单层
  static Widget dropdown(Widget child) => child.dropdown(level: ZLayers.dropdown);
  
  /// 创建覆盖层
  static Widget overlay(Widget child) => child.overlay(level: ZLayers.popover);
  
  /// 创建通知层
  static Widget notification(Widget child) => 
      child.zIndex(ZLayers.notification);
  
  /// 创建吐司层
  static Widget toast(Widget child) => child.zIndex(ZLayers.toast);
  
  /// 根据z-index排序创建Stack
  static Widget stack(List<Widget> children, {
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    StackFit fit = StackFit.loose,
  }) => children.stackWithZIndex(
    alignment: alignment,
    fit: fit,
  );
}

/// 层级管理器，用于管理全局层级
class LayerManager {
  static int _currentMaxZIndex = 0;
  
  /// 获取下一个可用的z-index
  static int getNextZIndex() => ++_currentMaxZIndex;
  
  /// 重置z-index计数器
  static void reset() => _currentMaxZIndex = 0;
  
  /// 确保Widget在最顶层
  static Widget bringToFront(Widget child) {
    final zIndex = getNextZIndex();
    return child.zIndex(zIndex);
  }
  
  /// 创建临时顶层Widget
  static Widget temporary(Widget child, {Duration? duration}) {
    final zIndex = getNextZIndex();
    
    if (duration != null) {
      // 延时后降低层级
      Future.delayed(duration, () {
        _currentMaxZIndex = zIndex - 1;
      });
    }
    
    return child.zIndex(zIndex);
  }
}
