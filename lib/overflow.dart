import 'package:flutter/material.dart';

/// Tailwind CSS Overflow utilities for Flutter
/// Utilities for controlling how an element handles content that is too large for the container.
extension OverflowExt on Widget {
  
  // === Overflow utilities ===
  
  /// overflow-auto -> overflow: auto;
  /// 在Flutter中使用SingleChildScrollView实现自动滚动
  Widget overflowAuto() => SingleChildScrollView(child: this);
  
  /// overflow-hidden -> overflow: hidden;
  /// 隐藏溢出内容
  Widget overflowHidden() => ClipRect(child: this);
  
  /// overflow-clip -> overflow: clip;
  /// 裁剪溢出内容（类似hidden但性能更好）
  Widget overflowClip() => ClipRect(child: this);
  
  /// overflow-visible -> overflow: visible;
  /// 显示溢出内容（Flutter默认行为）
  Widget overflowVisible() => this;
  
  /// overflow-scroll -> overflow: scroll;
  /// 始终显示滚动条
  Widget overflowScroll() => Scrollbar(
    child: SingleChildScrollView(child: this),
  );
  
  // === Overflow X utilities ===
  
  /// overflow-x-auto -> overflow-x: auto;
  /// 水平方向自动滚动
  Widget overflowXAuto() => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: this,
  );
  
  /// overflow-x-hidden -> overflow-x: hidden;
  /// 隐藏水平溢出
  Widget overflowXHidden() => ClipRect(
    child: OverflowBox(
      alignment: Alignment.centerLeft,
      maxWidth: double.infinity,
      child: this,
    ),
  );
  
  /// overflow-x-clip -> overflow-x: clip;
  /// 裁剪水平溢出
  Widget overflowXClip() => ClipRect(
    child: OverflowBox(
      alignment: Alignment.centerLeft,
      maxWidth: double.infinity,
      child: this,
    ),
  );
  
  /// overflow-x-visible -> overflow-x: visible;
  /// 显示水平溢出
  Widget overflowXVisible() => OverflowBox(
    alignment: Alignment.centerLeft,
    child: this,
  );
  
  /// overflow-x-scroll -> overflow-x: scroll;
  /// 水平滚动条
  Widget overflowXScroll() => Scrollbar(
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: this,
    ),
  );
  
  // === Overflow Y utilities ===
  
  /// overflow-y-auto -> overflow-y: auto;
  /// 垂直方向自动滚动
  Widget overflowYAuto() => SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: this,
  );
  
  /// overflow-y-hidden -> overflow-y: hidden;
  /// 隐藏垂直溢出
  Widget overflowYHidden() => ClipRect(
    child: OverflowBox(
      alignment: Alignment.topCenter,
      maxHeight: double.infinity,
      child: this,
    ),
  );
  
  /// overflow-y-clip -> overflow-y: clip;
  /// 裁剪垂直溢出
  Widget overflowYClip() => ClipRect(
    child: OverflowBox(
      alignment: Alignment.topCenter,
      maxHeight: double.infinity,
      child: this,
    ),
  );
  
  /// overflow-y-visible -> overflow-y: visible;
  /// 显示垂直溢出
  Widget overflowYVisible() => OverflowBox(
    alignment: Alignment.topCenter,
    child: this,
  );
  
  /// overflow-y-scroll -> overflow-y: scroll;
  /// 垂直滚动条
  Widget overflowYScroll() => Scrollbar(
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: this,
    ),
  );
}

/// 滚动行为相关的扩展
extension ScrollBehaviorExt on Widget {
  
  /// 创建可滚动容器
  Widget scrollable({
    Axis direction = Axis.vertical,
    bool showScrollbar = false,
    ScrollPhysics? physics,
    EdgeInsets? padding,
  }) {
    Widget scrollView = SingleChildScrollView(
      scrollDirection: direction,
      physics: physics,
      padding: padding,
      child: this,
    );
    
    if (showScrollbar) {
      scrollView = Scrollbar(child: scrollView);
    }
    
    return scrollView;
  }
  
  /// 创建双向滚动容器
  Widget scrollableBoth({
    bool showScrollbar = false,
    ScrollPhysics? physics,
    EdgeInsets? padding,
  }) {
    Widget scrollView = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: physics,
        padding: padding,
        child: this,
      ),
    );
    
    if (showScrollbar) {
      scrollView = Scrollbar(child: scrollView);
    }
    
    return scrollView;
  }
  
  /// 创建带约束的滚动容器
  Widget constrainedScroll({
    double? maxHeight,
    double? maxWidth,
    Axis direction = Axis.vertical,
    bool showScrollbar = false,
  }) {
    Widget child = this;
    
    if (maxHeight != null || maxWidth != null) {
      child = ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: maxHeight ?? double.infinity,
          maxWidth: maxWidth ?? double.infinity,
        ),
        child: child,
      );
    }
    
    return child.scrollable(
      direction: direction,
      showScrollbar: showScrollbar,
    );
  }
}

/// 溢出处理相关的扩展
extension OverflowHandlingExt on Widget {
  
  /// 处理文本溢出
  Widget handleTextOverflow({
    TextOverflow overflow = TextOverflow.ellipsis,
    int? maxLines,
  }) {
    return this; // 这个方法主要用于Text widget的子类
  }
  
  /// 创建可展开的溢出容器
  Widget expandableOverflow({
    bool expanded = false,
    Widget? expandIcon,
  }) {
    return ExpansionTile(
      title: this,
      trailing: expandIcon,
      children: const [],
    );
  }
  
  /// 创建渐变遮罩的溢出效果
  Widget gradientOverflow({
    Color? color,
    double? height,
    double? width,
  }) {
    return Stack(
      children: [
        this,
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: height ?? 20,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  (color ?? Colors.white).withOpacity(0),
                  color ?? Colors.white,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Overflow工具类
class Overflow {
  /// 创建自动滚动容器
  static Widget auto(Widget child) => child.overflowAuto();
  
  /// 隐藏溢出内容
  static Widget hidden(Widget child) => child.overflowHidden();
  
  /// 裁剪溢出内容
  static Widget clip(Widget child) => child.overflowClip();
  
  /// 显示溢出内容
  static Widget visible(Widget child) => child.overflowVisible();
  
  /// 创建滚动容器
  static Widget scroll(Widget child) => child.overflowScroll();
  
  /// 水平自动滚动
  static Widget xAuto(Widget child) => child.overflowXAuto();
  
  /// 隐藏水平溢出
  static Widget xHidden(Widget child) => child.overflowXHidden();
  
  /// 水平滚动
  static Widget xScroll(Widget child) => child.overflowXScroll();
  
  /// 垂直自动滚动
  static Widget yAuto(Widget child) => child.overflowYAuto();
  
  /// 隐藏垂直溢出
  static Widget yHidden(Widget child) => child.overflowYHidden();
  
  /// 垂直滚动
  static Widget yScroll(Widget child) => child.overflowYScroll();
  
  /// 创建可滚动容器
  static Widget scrollable(
    Widget child, {
    Axis direction = Axis.vertical,
    bool showScrollbar = false,
  }) => child.scrollable(
    direction: direction,
    showScrollbar: showScrollbar,
  );
  
  /// 创建双向滚动容器
  static Widget scrollableBoth(Widget child, {bool showScrollbar = false}) =>
      child.scrollableBoth(showScrollbar: showScrollbar);
}
