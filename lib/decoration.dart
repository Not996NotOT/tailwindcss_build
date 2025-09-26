import 'package:flutter/material.dart';

/// Tailwind CSS 风格的装饰组合扩展
/// 提供边框、圆角、阴影等的组合方法
extension DecorationExt on Widget {
  
  /// 完整装饰 - 边框+圆角+背景+阴影的组合
  Widget decoration({
    Color? color,
    Color? borderColor,
    double borderWidth = 1.0,
    BorderRadius? borderRadius,
    double? radius,
    List<BoxShadow>? boxShadow,
    bool shadow = false,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
  }) => Container(
    padding: padding,
    margin: margin,
    decoration: BoxDecoration(
      color: color,
      border: borderColor != null 
          ? Border.all(color: borderColor, width: borderWidth)
          : null,
      borderRadius: borderRadius ?? 
          (radius != null ? BorderRadius.circular(radius) : null),
      boxShadow: boxShadow ?? (shadow ? [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ] : null),
      gradient: gradient,
    ),
    child: this,
  );
  
  /// 卡片样式 - 常用的卡片装饰
  Widget card({
    Color? color,
    double radius = 8.0,
    bool shadow = true,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
  }) => decoration(
    color: color ?? Colors.white,
    radius: radius,
    shadow: shadow,
    padding: padding,
    margin: margin,
  );
  
  /// 边框卡片 - 带边框的卡片
  Widget borderCard({
    Color? color,
    Color? borderColor,
    double borderWidth = 1.0,
    double radius = 8.0,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
  }) => decoration(
    color: color ?? Colors.white,
    borderColor: borderColor ?? Colors.grey[300],
    borderWidth: borderWidth,
    radius: radius,
    padding: padding,
    margin: margin,
  );
  
  /// 圆形装饰
  Widget circle({
    Color? color,
    Color? borderColor,
    double borderWidth = 1.0,
    bool shadow = false,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
  }) => decoration(
    color: color,
    borderColor: borderColor,
    borderWidth: borderWidth,
    radius: 9999, // 完全圆形
    shadow: shadow,
    padding: padding,
    margin: margin,
  );
  
  /// 渐变装饰
  Widget gradientDecoration({
    required Gradient gradient,
    Color? borderColor,
    double borderWidth = 1.0,
    BorderRadius? borderRadius,
    double? radius,
    bool shadow = false,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
  }) => decoration(
    gradient: gradient,
    borderColor: borderColor,
    borderWidth: borderWidth,
    borderRadius: borderRadius,
    radius: radius,
    shadow: shadow,
    padding: padding,
    margin: margin,
  );
}

/// 快速圆角方法
extension QuickRadiusExt on Widget {
  
  /// 快速圆角 - 支持数值 (使用clip方式)
  Widget clipRounded(double radius) => ClipRRect(
    borderRadius: BorderRadius.circular(radius),
    child: this,
  );
  
  /// 顶部圆角
  Widget roundedTop(double radius) => ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(radius),
      topRight: Radius.circular(radius),
    ),
    child: this,
  );
  
  /// 底部圆角
  Widget roundedBottom(double radius) => ClipRRect(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
    ),
    child: this,
  );
  
  /// 左侧圆角
  Widget roundedLeft(double radius) => ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(radius),
      bottomLeft: Radius.circular(radius),
    ),
    child: this,
  );
  
  /// 右侧圆角
  Widget roundedRight(double radius) => ClipRRect(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
    ),
    child: this,
  );
}

/// 快速阴影方法
extension QuickShadowExt on Widget {
  
  /// 轻微阴影
  Widget shadowSm() => decoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black.withValues(alpha: 0.05),
        blurRadius: 2,
        offset: const Offset(0, 1),
      ),
    ],
  );
  
  /// 标准阴影
  Widget shadowMd() => decoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black.withValues(alpha: 0.1),
        blurRadius: 4,
        offset: const Offset(0, 2),
      ),
    ],
  );
  
  /// 较大阴影
  Widget shadowLg() => decoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black.withValues(alpha: 0.15),
        blurRadius: 8,
        offset: const Offset(0, 4),
      ),
    ],
  );
  
  /// 超大阴影
  Widget shadowXl() => decoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black.withValues(alpha: 0.2),
        blurRadius: 16,
        offset: const Offset(0, 8),
      ),
    ],
  );
  
  /// 自定义阴影
  Widget shadowCustom({
    Color? color,
    double blurRadius = 4,
    Offset offset = const Offset(0, 2),
    double alpha = 0.1,
  }) => decoration(
    boxShadow: [
      BoxShadow(
        color: (color ?? Colors.black).withValues(alpha: alpha),
        blurRadius: blurRadius,
        offset: offset,
      ),
    ],
  );
}
