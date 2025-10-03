import 'package:flutter/material.dart';

import 'container_builder.dart';

/// Scroll 建造者 - 处理 overflow 和滚动行为
/// 对应 TailwindCSS 的 overflow 类
class ScrollBuilder {
  final Widget child;
  
  // 收集的滚动属性
  Axis? _scrollDirection;
  bool _enableScrollX = false;
  bool _enableScrollY = false;
  Clip _clipBehavior = Clip.hardEdge;
  ScrollPhysics? _physics;
  EdgeInsetsGeometry? _padding;
  ScrollController? _controller;
  
  ScrollBuilder(this.child);
  
  // === Overflow 基础方法 ===
  
  /// overflow-auto -> 自动滚动（当内容超出时显示滚动条）
  ScrollBuilder overflowAuto() {
    _enableScrollX = true;
    _enableScrollY = true;
    _clipBehavior = Clip.hardEdge;
    return this;
  }
  
  /// overflow-hidden -> 隐藏超出内容
  ScrollBuilder overflowHidden() {
    _enableScrollX = false;
    _enableScrollY = false;
    _clipBehavior = Clip.hardEdge;
    return this;
  }
  
  /// overflow-clip -> 裁剪超出内容
  ScrollBuilder overflowClip() {
    _enableScrollX = false;
    _enableScrollY = false;
    _clipBehavior = Clip.hardEdge;
    return this;
  }
  
  /// overflow-visible -> 允许内容溢出显示
  ScrollBuilder overflowVisible() {
    _enableScrollX = false;
    _enableScrollY = false;
    _clipBehavior = Clip.none;
    return this;
  }
  
  /// overflow-scroll -> 始终显示滚动（双向滚动）
  ScrollBuilder overflowScroll() {
    _enableScrollX = true;
    _enableScrollY = true;
    _clipBehavior = Clip.hardEdge;
    _physics = const AlwaysScrollableScrollPhysics();
    return this;
  }
  
  // === Overflow X 方法 ===
  
  /// overflow-x-auto -> X轴自动滚动
  ScrollBuilder overflowXAuto() {
    _enableScrollX = true;
    _enableScrollY = false;
    _scrollDirection = Axis.horizontal;
    _clipBehavior = Clip.hardEdge;
    return this;
  }
  
  /// overflow-x-hidden -> 隐藏X轴超出内容
  ScrollBuilder overflowXHidden() {
    _enableScrollX = false;
    _clipBehavior = Clip.hardEdge;
    return this;
  }
  
  /// overflow-x-clip -> 裁剪X轴超出内容
  ScrollBuilder overflowXClip() {
    _enableScrollX = false;
    _clipBehavior = Clip.hardEdge;
    return this;
  }
  
  /// overflow-x-visible -> 允许X轴内容溢出显示
  ScrollBuilder overflowXVisible() {
    _clipBehavior = Clip.none;
    return this;
  }
  
  /// overflow-x-scroll -> X轴始终可滚动
  ScrollBuilder overflowXScroll() {
    _enableScrollX = true;
    _enableScrollY = false;
    _scrollDirection = Axis.horizontal;
    _clipBehavior = Clip.hardEdge;
    _physics = const AlwaysScrollableScrollPhysics();
    return this;
  }
  
  // === Overflow Y 方法 ===
  
  /// overflow-y-auto -> Y轴自动滚动
  ScrollBuilder overflowYAuto() {
    _enableScrollX = false;
    _enableScrollY = true;
    _scrollDirection = Axis.vertical;
    _clipBehavior = Clip.hardEdge;
    return this;
  }
  
  /// overflow-y-hidden -> 隐藏Y轴超出内容
  ScrollBuilder overflowYHidden() {
    _enableScrollY = false;
    _clipBehavior = Clip.hardEdge;
    return this;
  }
  
  /// overflow-y-clip -> 裁剪Y轴超出内容
  ScrollBuilder overflowYClip() {
    _enableScrollY = false;
    _clipBehavior = Clip.hardEdge;
    return this;
  }
  
  /// overflow-y-visible -> 允许Y轴内容溢出显示
  ScrollBuilder overflowYVisible() {
    _clipBehavior = Clip.none;
    return this;
  }
  
  /// overflow-y-scroll -> Y轴始终可滚动
  ScrollBuilder overflowYScroll() {
    _enableScrollX = false;
    _enableScrollY = true;
    _scrollDirection = Axis.vertical;
    _clipBehavior = Clip.hardEdge;
    _physics = const AlwaysScrollableScrollPhysics();
    return this;
  }
  
  // === 辅助方法 ===
  
  /// 设置内边距
  ScrollBuilder padding(EdgeInsetsGeometry padding) {
    _padding = padding;
    return this;
  }
  
  /// 设置滚动控制器
  ScrollBuilder controller(ScrollController controller) {
    _controller = controller;
    return this;
  }
  
  /// 设置滚动物理效果
  ScrollBuilder physics(ScrollPhysics physics) {
    _physics = physics;
    return this;
  }
  
  /// 构建最终的 Widget
  Widget build() {
    // 如果需要双向滚动
    if (_enableScrollX && _enableScrollY) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: _physics,
        controller: _controller,
        padding: _padding,
        clipBehavior: _clipBehavior,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: _physics,
          clipBehavior: _clipBehavior,
          child: child,
        ),
      );
    }
    
    // 如果只需要单向滚动
    if (_enableScrollX || _enableScrollY) {
      return SingleChildScrollView(
        scrollDirection: _scrollDirection ?? (_enableScrollY ? Axis.vertical : Axis.horizontal),
        physics: _physics,
        controller: _controller,
        padding: _padding,
        clipBehavior: _clipBehavior,
        child: child,
      );
    }
    
    // 如果不需要滚动，只是裁剪
    if (_clipBehavior != Clip.none) {
      return ClipRect(
        clipBehavior: _clipBehavior,
        child: child,
      );
    }
    
    // 允许溢出显示
    return child;
  }
  
  /// 转换为 ContainerBuilder，添加额外样式
  ContainerBuilder asContainer() {
    return ContainerBuilder(build());
  }
}

/// Widget 到 ScrollBuilder 的转换扩展
extension WidgetToScrollBuilder on Widget {
  /// 将 Widget 转换为 ScrollBuilder，开始 overflow 样式链式调用
  ScrollBuilder asScrollView() {
    return ScrollBuilder(this);
  }
}

/// ContainerBuilder 到 ScrollBuilder 的转换扩展  
extension ContainerBuilderToScrollBuilder on ContainerBuilder {
  /// 将 ContainerBuilder 转换为 ScrollBuilder，处理 overflow
  ScrollBuilder asScrollView() {
    return ScrollBuilder(build());
  }
}

/// ScrollBuilder 的交互扩展
extension ScrollBuilderInteraction on ScrollBuilder {
  /// 添加点击事件
  Widget onTap(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: build(),
    );
  }
}

