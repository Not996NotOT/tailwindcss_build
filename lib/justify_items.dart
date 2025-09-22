import 'package:flutter/material.dart';

/// Tailwind CSS Justify Items utilities for Flutter
/// Utilities for controlling how grid items are aligned along their inline axis.
extension JustifyItemsExt on List<Widget> {
  
  // === justify-items utilities ===
  
  /// justify-items-start -> justify-items: start;
  /// 将grid项目对齐到其inline轴的起始位置
  Widget justifyItemsStart() {
    return GridView.count(
      crossAxisCount: 1,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: this.map((child) => Align(
        alignment: Alignment.centerLeft,
        child: child,
      )).toList(),
    );
  }
  
  /// justify-items-end -> justify-items: end;
  /// 将grid项目对齐到其inline轴的末端
  Widget justifyItemsEnd() {
    return GridView.count(
      crossAxisCount: 1,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: this.map((child) => Align(
        alignment: Alignment.centerRight,
        child: child,
      )).toList(),
    );
  }
  
  /// justify-items-center -> justify-items: center;
  /// 将grid项目对齐到其inline轴的中心
  Widget justifyItemsCenter() {
    return GridView.count(
      crossAxisCount: 1,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: this.map((child) => Align(
        alignment: Alignment.center,
        child: child,
      )).toList(),
    );
  }
  
  /// justify-items-stretch -> justify-items: stretch;
  /// 拉伸grid项目以填充其grid区域的inline轴
  Widget justifyItemsStretch() {
    return GridView.count(
      crossAxisCount: 1,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: this.map((child) => SizedBox(
        width: double.infinity,
        child: child,
      )).toList(),
    );
  }
}

/// 在Flex容器中的justify-items行为模拟
extension FlexJustifyItemsExt on List<Widget> {
  
  /// 在Row中模拟justify-items-start
  Widget rowJustifyItemsStart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: this.map((child) => Align(
        alignment: Alignment.centerLeft,
        child: child,
      )).toList(),
    );
  }
  
  /// 在Row中模拟justify-items-end
  Widget rowJustifyItemsEnd() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: this.map((child) => Align(
        alignment: Alignment.centerRight,
        child: child,
      )).toList(),
    );
  }
  
  /// 在Row中模拟justify-items-center
  Widget rowJustifyItemsCenter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: this.map((child) => Align(
        alignment: Alignment.center,
        child: child,
      )).toList(),
    );
  }
  
  /// 在Row中模拟justify-items-stretch
  Widget rowJustifyItemsStretch() {
    return Row(
      children: this.map((child) => Expanded(child: child)).toList(),
    );
  }
  
  /// 在Column中模拟justify-items-start
  Widget columnJustifyItemsStart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: this,
    );
  }
  
  /// 在Column中模拟justify-items-end
  Widget columnJustifyItemsEnd() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: this,
    );
  }
  
  /// 在Column中模拟justify-items-center
  Widget columnJustifyItemsCenter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: this,
    );
  }
  
  /// 在Column中模拟justify-items-stretch
  Widget columnJustifyItemsStretch() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: this,
    );
  }
}

/// 单个Widget的justify-items扩展
extension SingleWidgetJustifyItemsExt on Widget {
  
  /// 将单个widget对齐到start位置
  Widget justifyItemStart() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }
  
  /// 将单个widget对齐到end位置
  Widget justifyItemEnd() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }
  
  /// 将单个widget对齐到center位置
  Widget justifyItemCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// 将单个widget拉伸到全宽
  Widget justifyItemStretch() {
    return SizedBox(
      width: double.infinity,
      child: this,
    );
  }
}

/// Justify Items工具类
class JustifyItems {
  /// 创建justify-items-start容器
  static Widget start(List<Widget> children) {
    return children.justifyItemsStart();
  }
  
  /// 创建justify-items-end容器
  static Widget end(List<Widget> children) {
    return children.justifyItemsEnd();
  }
  
  /// 创建justify-items-center容器
  static Widget center(List<Widget> children) {
    return children.justifyItemsCenter();
  }
  
  /// 创建justify-items-stretch容器
  static Widget stretch(List<Widget> children) {
    return children.justifyItemsStretch();
  }
  
  /// 在Row中创建justify-items行为
  static Widget rowStart(List<Widget> children) {
    return children.rowJustifyItemsStart();
  }
  
  static Widget rowEnd(List<Widget> children) {
    return children.rowJustifyItemsEnd();
  }
  
  static Widget rowCenter(List<Widget> children) {
    return children.rowJustifyItemsCenter();
  }
  
  static Widget rowStretch(List<Widget> children) {
    return children.rowJustifyItemsStretch();
  }
  
  /// 在Column中创建justify-items行为
  static Widget columnStart(List<Widget> children) {
    return children.columnJustifyItemsStart();
  }
  
  static Widget columnEnd(List<Widget> children) {
    return children.columnJustifyItemsEnd();
  }
  
  static Widget columnCenter(List<Widget> children) {
    return children.columnJustifyItemsCenter();
  }
  
  static Widget columnStretch(List<Widget> children) {
    return children.columnJustifyItemsStretch();
  }
}
