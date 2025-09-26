import 'package:flutter/material.dart';

/// Tailwind CSS 风格的尺寸扩展
/// 提供宽度、高度、尺寸等的便捷方法
extension SizingExt on Widget {
  
  /// 设置固定尺寸
  Widget size(double size) => SizedBox(
    width: size,
    height: size,
    child: this,
  );
  
  /// 设置宽度和高度
  Widget sized(double width, double height) => SizedBox(
    width: width,
    height: height,
    child: this,
  );
  
  /// 设置宽度
  Widget width(double width) => SizedBox(
    width: width,
    child: this,
  );
  
  /// 设置高度
  Widget height(double height) => SizedBox(
    height: height,
    child: this,
  );
  
  /// 最小尺寸
  Widget minSize(double size) => ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: size,
      minHeight: size,
    ),
    child: this,
  );
  
  /// 最大尺寸
  Widget maxSize(double size) => ConstrainedBox(
    constraints: BoxConstraints(
      maxWidth: size,
      maxHeight: size,
    ),
    child: this,
  );
  
  /// 设置约束
  Widget constrained({
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
  }) => ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: minWidth ?? 0,
      maxWidth: maxWidth ?? double.infinity,
      minHeight: minHeight ?? 0,
      maxHeight: maxHeight ?? double.infinity,
    ),
    child: this,
  );
  
  /// 铺满父容器
  Widget expanded({int flex = 1}) => Expanded(
    flex: flex,
    child: this,
  );
  
  /// 灵活尺寸
  Widget flexible({int flex = 1, FlexFit fit = FlexFit.loose}) => Flexible(
    flex: flex,
    fit: fit,
    child: this,
  );
  
  /// 占满可用空间
  Widget fillWidth() => SizedBox(
    width: double.infinity,
    child: this,
  );
  
  /// 占满可用高度
  Widget fillHeight() => SizedBox(
    height: double.infinity,
    child: this,
  );
  
  /// 占满可用空间
  Widget fillSpace() => SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: this,
  );
}

/// Icon 特定的尺寸扩展
extension IconSizingExt on Icon {
  
  /// 设置图标尺寸
  Widget iconSize(double size) => Icon(
    icon,
    size: size,
    color: color,
    semanticLabel: semanticLabel,
    textDirection: textDirection,
  );
  
  /// 设置图标颜色
  Widget iconColor(Color color) => Icon(
    icon,
    size: size,
    color: color,
    semanticLabel: semanticLabel,
    textDirection: textDirection,
  );
  
  /// 同时设置尺寸和颜色
  Widget iconStyle({double? size, Color? color}) => Icon(
    icon,
    size: size ?? this.size,
    color: color ?? this.color,
    semanticLabel: semanticLabel,
    textDirection: textDirection,
  );
}

/// 快速尺寸预设
extension QuickSizingExt on Widget {
  
  // 小尺寸预设
  Widget sizeXs() => size(16);   // 16x16
  Widget sizeSm() => size(20);   // 20x20  
  Widget sizeMd() => size(24);   // 24x24
  Widget sizeLg() => size(32);   // 32x32
  Widget sizeXl() => size(40);   // 40x40
  Widget size2xl() => size(48);  // 48x48
  Widget size3xl() => size(64);  // 64x64
  
  // 图标尺寸预设
  Widget iconXs() => size(12);   // 12x12
  Widget iconSm() => size(16);   // 16x16
  Widget iconMd() => size(20);   // 20x20
  Widget iconLg() => size(24);   // 24x24
  Widget iconXl() => size(28);   // 28x28
  
  // 头像尺寸预设
  Widget avatarXs() => size(24);   // 24x24
  Widget avatarSm() => size(32);   // 32x32
  Widget avatarMd() => size(40);   // 40x40
  Widget avatarLg() => size(48);   // 48x48
  Widget avatarXl() => size(64);   // 64x64
  Widget avatar2xl() => size(80);  // 80x80
  
  // 按钮高度预设
  Widget btnXs() => height(24);    // 超小按钮
  Widget btnSm() => height(32);    // 小按钮
  Widget btnMd() => height(40);    // 中等按钮
  Widget btnLg() => height(48);    // 大按钮
  Widget btnXl() => height(56);    // 超大按钮
}
