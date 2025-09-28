import 'package:flutter/material.dart';

/// 按钮转换扩展
/// 让Widget可以转换为可点击的按钮并支持TailwindCSS样式
extension ButtonExtensions on Widget {
  /// 将Widget转换为可点击的按钮（使用GestureDetector）
  Widget onTap(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }

  /// 将Widget转换为ElevatedButton样式（实际使用GestureDetector）
  Widget asElevatedButton({
    required VoidCallback? onPressed,
    required Widget child,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: this,
    );
  }

  /// 将Widget转换为OutlinedButton样式（实际使用GestureDetector）
  Widget asOutlinedButton({
    required VoidCallback? onPressed,
    required Widget child,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: this,
    );
  }

  /// 将Widget转换为TextButton样式（实际使用GestureDetector）
  Widget asTextButton({
    required VoidCallback? onPressed,
    required Widget child,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: this,
    );
  }
}
