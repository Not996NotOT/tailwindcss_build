import 'package:flutter/material.dart';

/// Tailwind CSS Justify Self utilities for Flutter
/// Utilities for controlling how an individual grid item is aligned along its inline axis.
extension JustifySelfExt on Widget {
  
  // === justify-self utilities ===
  
  /// justify-self-auto -> justify-self: auto;
  /// 使用grid的justify-items值
  Widget justifySelfAuto() {
    return this;
  }
  
  /// justify-self-start -> justify-self: start;
  /// 将grid项目对齐到其inline轴的起始位置
  Widget justifySelfStart() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }
  
  /// justify-self-end -> justify-self: end;
  /// 将grid项目对齐到其inline轴的末端
  Widget justifySelfEnd() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }
  
  /// justify-self-center -> justify-self: center;
  /// 将grid项目对齐到其inline轴的中心
  Widget justifySelfCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// justify-self-stretch -> justify-self: stretch;
  /// 拉伸grid项目以填充其grid区域的inline轴
  Widget justifySelfStretch() {
    return SizedBox(
      width: double.infinity,
      child: this,
    );
  }
}

/// 在Flex容器中的justify-self行为模拟
extension FlexJustifySelfExt on Widget {
  
  /// 在Row中模拟justify-self-start行为
  Widget rowJustifySelfStart() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }
  
  /// 在Row中模拟justify-self-end行为
  Widget rowJustifySelfEnd() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }
  
  /// 在Row中模拟justify-self-center行为
  Widget rowJustifySelfCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// 在Row中模拟justify-self-stretch行为
  Widget rowJustifySelfStretch() {
    return Expanded(child: this);
  }
  
  /// 在Column中模拟justify-self-start行为
  Widget columnJustifySelfStart() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }
  
  /// 在Column中模拟justify-self-end行为
  Widget columnJustifySelfEnd() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }
  
  /// 在Column中模拟justify-self-center行为
  Widget columnJustifySelfCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// 在Column中模拟justify-self-stretch行为
  Widget columnJustifySelfStretch() {
    return SizedBox(
      width: double.infinity,
      child: this,
    );
  }
}

/// 带容器的justify-self扩展
extension ContainerJustifySelfExt on Widget {
  
  /// 在指定宽度的容器中应用justify-self-start
  Widget justifySelfStartInContainer({double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.centerLeft,
      child: this,
    );
  }
  
  /// 在指定宽度的容器中应用justify-self-end
  Widget justifySelfEndInContainer({double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.centerRight,
      child: this,
    );
  }
  
  /// 在指定宽度的容器中应用justify-self-center
  Widget justifySelfCenterInContainer({double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// 在指定宽度的容器中应用justify-self-stretch
  Widget justifySelfStretchInContainer({double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      child: SizedBox(
        width: double.infinity,
        child: this,
      ),
    );
  }
}

/// Justify Self工具类
class JustifySelf {
  /// 创建justify-self-auto项目
  static Widget auto(Widget child) {
    return child.justifySelfAuto();
  }
  
  /// 创建justify-self-start项目
  static Widget start(Widget child) {
    return child.justifySelfStart();
  }
  
  /// 创建justify-self-end项目
  static Widget end(Widget child) {
    return child.justifySelfEnd();
  }
  
  /// 创建justify-self-center项目
  static Widget center(Widget child) {
    return child.justifySelfCenter();
  }
  
  /// 创建justify-self-stretch项目
  static Widget stretch(Widget child) {
    return child.justifySelfStretch();
  }
  
  /// 在Row中创建justify-self行为
  static Widget rowStart(Widget child) {
    return child.rowJustifySelfStart();
  }
  
  static Widget rowEnd(Widget child) {
    return child.rowJustifySelfEnd();
  }
  
  static Widget rowCenter(Widget child) {
    return child.rowJustifySelfCenter();
  }
  
  static Widget rowStretch(Widget child) {
    return child.rowJustifySelfStretch();
  }
  
  /// 在Column中创建justify-self行为
  static Widget columnStart(Widget child) {
    return child.columnJustifySelfStart();
  }
  
  static Widget columnEnd(Widget child) {
    return child.columnJustifySelfEnd();
  }
  
  static Widget columnCenter(Widget child) {
    return child.columnJustifySelfCenter();
  }
  
  static Widget columnStretch(Widget child) {
    return child.columnJustifySelfStretch();
  }
}
