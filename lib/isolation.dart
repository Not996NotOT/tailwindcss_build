import 'package:flutter/material.dart';

/// Tailwind CSS Isolation utilities for Flutter
/// Utilities for controlling whether an element should explicitly create a new stacking context.
extension IsolationExt on Widget {
  
  // === Isolation utilities ===
  
  /// isolate -> isolation: isolate;
  /// 在Flutter中通过Transform.translate(offset: Offset.zero)来创建新的合成层
  Widget isolate() => Transform.translate(
    offset: Offset.zero,
    child: this,
  );
  
  /// isolation-auto -> isolation: auto;
  /// 默认行为，不创建新的堆叠上下文
  Widget isolationAuto() => this;
}

/// 堆叠上下文相关的扩展
extension StackingContextExt on Widget {
  
  /// 创建新的堆叠上下文（使用Container）
  Widget createStackingContext() => Container(
    child: this,
  );
  
  /// 创建新的合成层（使用RepaintBoundary）
  Widget createCompositingLayer() => RepaintBoundary(
    child: this,
  );
  
  /// 创建新的变换层（使用Transform）
  Widget createTransformLayer() => Transform.translate(
    offset: Offset.zero,
    child: this,
  );
  
  /// 创建opacity层（会自动创建新的合成层）
  Widget createOpacityLayer({double opacity = 1.0}) => Opacity(
    opacity: opacity,
    child: this,
  );
  
  /// 创建clip层（会自动创建新的合成层）
  Widget createClipLayer({BorderRadius? borderRadius}) {
    if (borderRadius != null) {
      return ClipRRect(
        borderRadius: borderRadius,
        child: this,
      );
    }
    return ClipRect(child: this);
  }
}

/// 用于优化渲染性能的扩展
extension RenderOptimizationExt on Widget {
  
  /// 添加重绘边界以优化性能
  Widget withRepaintBoundary() => RepaintBoundary(child: this);
  
  /// 添加关键渲染优化
  Widget optimizeRendering({
    bool repaintBoundary = false,
    bool isolate = false,
    bool keepAlive = false,
  }) {
    Widget child = this;
    
    if (keepAlive) {
      child = AutomaticKeepAliveClientMixin as Widget? ?? child;
    }
    
    if (isolate) {
      child = child.isolate();
    }
    
    if (repaintBoundary) {
      child = child.withRepaintBoundary();
    }
    
    return child;
  }
  
  /// 为动画元素添加合成层提示
  Widget hintForAnimation() => Transform.translate(
    offset: Offset.zero,
    child: RepaintBoundary(child: this),
  );
  
  /// 为滚动元素优化
  Widget optimizeForScrolling() => RepaintBoundary(
    child: this,
  );
}

/// Isolation工具类
class Isolation {
  /// 创建隔离的元素
  static Widget isolate(Widget child) => child.isolate();
  
  /// 自动隔离
  static Widget auto(Widget child) => child.isolationAuto();
  
  /// 创建新的堆叠上下文
  static Widget newStackingContext(Widget child) => child.createStackingContext();
  
  /// 创建新的合成层
  static Widget newCompositingLayer(Widget child) => child.createCompositingLayer();
  
  /// 优化渲染性能
  static Widget optimizeRendering(
    Widget child, {
    bool repaintBoundary = false,
    bool isolate = false,
    bool keepAlive = false,
  }) => child.optimizeRendering(
    repaintBoundary: repaintBoundary,
    isolate: isolate,
    keepAlive: keepAlive,
  );
  
  /// 为动画优化
  static Widget forAnimation(Widget child) => child.hintForAnimation();
  
  /// 为滚动优化
  static Widget forScrolling(Widget child) => child.optimizeForScrolling();
}

/// 层级管理相关的扩展
extension LayerManagementExt on Widget {
  
  /// 设置层级（使用Stack的positioned）
  Widget withLayer(int layer) => Positioned(
    child: this,
  );
  
  /// 置于顶层
  Widget toTop() => Positioned(
    top: 0,
    left: 0,
    right: 0,
    child: this,
  );
  
  /// 置于底层
  Widget toBottom() => Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: this,
  );
  
  /// 绝对定位
  Widget absolutePosition({
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
