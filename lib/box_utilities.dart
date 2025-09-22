import 'package:flutter/material.dart';

/// Tailwind CSS Box utilities for Flutter
/// Utilities for controlling box decoration and sizing behavior.

// === Box Decoration Break utilities ===
extension BoxDecorationBreakExt on Widget {
  
  /// box-decoration-clone -> box-decoration-break: clone;
  /// 在Flutter中通过ClipBehavior来模拟
  Widget boxDecorationClone() => ClipRRect(
    clipBehavior: Clip.antiAlias,
    child: this,
  );
  
  /// box-decoration-slice -> box-decoration-break: slice;
  /// 在Flutter中的默认行为
  Widget boxDecorationSlice() => this;
}

// === Box Sizing utilities ===
extension BoxSizingExt on Widget {
  
  /// box-border -> box-sizing: border-box;
  /// 在Flutter中，Widget默认为border-box行为
  Widget boxBorder() => this;
  
  /// box-content -> box-sizing: content-box;
  /// 在Flutter中通过Container的padding来模拟content-box
  Widget boxContent() => Container(
    child: this,
  );
}

/// 容器装饰相关的扩展
extension BoxDecorationExt on Widget {
  
  /// 添加边框装饰
  Widget withBorder({
    Color color = Colors.grey,
    double width = 1.0,
    BorderStyle style = BorderStyle.solid,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
          width: width,
          style: style,
        ),
      ),
      child: this,
    );
  }
  
  /// 添加阴影装饰
  Widget withShadow({
    Color color = Colors.black26,
    double blurRadius = 4.0,
    Offset offset = const Offset(0, 2),
  }) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: blurRadius,
            offset: offset,
          ),
        ],
      ),
      child: this,
    );
  }
  
  /// 添加背景色装饰
  Widget withBackground(Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: this,
    );
  }
  
  /// 添加渐变背景装饰
  Widget withGradient(Gradient gradient) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: this,
    );
  }
  
  /// 添加圆角装饰
  Widget withBorderRadius(double radius) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
      ),
      clipBehavior: Clip.antiAlias,
      child: this,
    );
  }
  
  /// 完整的装饰配置
  Widget withDecoration({
    Color? backgroundColor,
    Border? border,
    BorderRadius? borderRadius,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
    DecorationImage? image,
    BoxShape shape = BoxShape.rectangle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        gradient: gradient,
        image: image,
        shape: shape,
      ),
      clipBehavior: borderRadius != null ? Clip.antiAlias : Clip.none,
      child: this,
    );
  }
}

/// Box工具类
class Box {
  /// 创建border-box容器
  static Widget borderBox(Widget child) {
    return child.boxBorder();
  }
  
  /// 创建content-box容器
  static Widget contentBox(Widget child) {
    return child.boxContent();
  }
  
  /// 创建带边框的容器
  static Widget withBorder(
    Widget child, {
    Color color = Colors.grey,
    double width = 1.0,
  }) {
    return child.withBorder(color: color, width: width);
  }
  
  /// 创建带阴影的容器
  static Widget withShadow(
    Widget child, {
    Color color = Colors.black26,
    double blurRadius = 4.0,
    Offset offset = const Offset(0, 2),
  }) {
    return child.withShadow(
      color: color,
      blurRadius: blurRadius,
      offset: offset,
    );
  }
  
  /// 创建带背景色的容器
  static Widget withBackground(Widget child, Color color) {
    return child.withBackground(color);
  }
  
  /// 创建带圆角的容器
  static Widget withBorderRadius(Widget child, double radius) {
    return child.withBorderRadius(radius);
  }
}
