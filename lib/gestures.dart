import 'package:flutter/material.dart';

/// Tailwind CSS 风格的手势扩展
/// 提供链式调用的手势识别方法
extension GestureExt on Widget {
  
  /// 点击手势 - onTap
  Widget onTap(VoidCallback? onTap) => GestureDetector(
    onTap: onTap,
    child: this,
  );
  
  /// 长按手势 - onLongPress
  Widget onLongPress(VoidCallback? onLongPress) => GestureDetector(
    onLongPress: onLongPress,
    child: this,
  );
  
  /// 双击手势 - onDoubleTap
  Widget onDoubleTap(VoidCallback? onDoubleTap) => GestureDetector(
    onDoubleTap: onDoubleTap,
    child: this,
  );
  
  /// 综合手势 - 支持多种手势
  Widget gesture({
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    VoidCallback? onDoubleTap,
    GestureTapDownCallback? onTapDown,
    GestureTapUpCallback? onTapUp,
    GestureTapCancelCallback? onTapCancel,
    GestureDragStartCallback? onPanStart,
    GestureDragUpdateCallback? onPanUpdate,
    GestureDragEndCallback? onPanEnd,
  }) => GestureDetector(
    onTap: onTap,
    onLongPress: onLongPress,
    onDoubleTap: onDoubleTap,
    onTapDown: onTapDown,
    onTapUp: onTapUp,
    onTapCancel: onTapCancel,
    onPanStart: onPanStart,
    onPanUpdate: onPanUpdate,
    onPanEnd: onPanEnd,
    child: this,
  );
  
  /// 悬停手势 - 适用于桌面平台
  Widget onHover(ValueChanged<bool>? onHover) => MouseRegion(
    onEnter: onHover != null ? (_) => onHover(true) : null,
    onExit: onHover != null ? (_) => onHover(false) : null,
    child: this,
  );
  
  /// 点击变化 - 支持按下和释放状态
  Widget onTapChange({
    VoidCallback? onTapDown,
    VoidCallback? onTapUp,
    VoidCallback? onTapCancel,
  }) => GestureDetector(
    onTapDown: onTapDown != null ? (_) => onTapDown() : null,
    onTapUp: onTapUp != null ? (_) => onTapUp() : null,
    onTapCancel: onTapCancel,
    child: this,
  );
  
  /// 可点击区域扩展 - 增加点击热区
  Widget expandTapArea({
    double? all,
    double? horizontal,
    double? vertical,
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left ?? horizontal ?? all ?? 0,
        top: top ?? vertical ?? all ?? 0,
        right: right ?? horizontal ?? all ?? 0,
        bottom: bottom ?? vertical ?? all ?? 0,
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: this,
      ),
    );
  }
}

/// 链式调用的InkWell风格
extension InkWellExt on Widget {
  
  /// 材料设计风格的点击效果
  Widget inkWell({
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    VoidCallback? onDoubleTap,
    Color? splashColor,
    Color? highlightColor,
    Color? hoverColor,
    double? radius,
    BorderRadius? borderRadius,
  }) => Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      onDoubleTap: onDoubleTap,
      splashColor: splashColor,
      highlightColor: highlightColor,
      hoverColor: hoverColor,
      radius: radius,
      borderRadius: borderRadius,
      child: this,
    ),
  );
  
  /// 简化版 InkWell
  Widget ripple({VoidCallback? onTap, BorderRadius? borderRadius}) => inkWell(
    onTap: onTap,
    borderRadius: borderRadius,
  );
}
