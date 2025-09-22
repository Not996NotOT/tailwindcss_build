import 'package:flutter/material.dart';

/// Tailwind CSS Align Self utilities for Flutter
/// Utilities for controlling how an individual flex or grid item is positioned along its container's cross axis.
extension AlignSelfExt on Widget {
  
  // === align-self utilities ===
  
  /// self-auto -> align-self: auto;
  /// 使用父容器的align-items值
  Widget selfAuto() {
    return this;
  }
  
  /// self-start -> align-self: flex-start;
  /// 将项目对齐到交叉轴的起始位置
  Widget selfStart() {
    return Align(
      alignment: Alignment.topCenter,
      child: this,
    );
  }
  
  /// self-end -> align-self: flex-end;
  /// 将项目对齐到交叉轴的末端
  Widget selfEnd() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }
  
  /// self-center -> align-self: center;
  /// 将项目对齐到交叉轴的中心
  Widget selfCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// self-stretch -> align-self: stretch;
  /// 拉伸项目以填充交叉轴
  Widget selfStretch() {
    return SizedBox(
      height: double.infinity,
      child: this,
    );
  }
  
  /// self-baseline -> align-self: baseline;
  /// 将项目对齐到基线
  Widget selfBaseline() {
    return Baseline(
      baseline: 0,
      baselineType: TextBaseline.alphabetic,
      child: this,
    );
  }
}

/// 在Row中的align-self行为
extension RowAlignSelfExt on Widget {
  
  /// 在Row中模拟self-start（对齐到顶部）
  Widget rowSelfStart() {
    return Align(
      alignment: Alignment.topCenter,
      child: this,
    );
  }
  
  /// 在Row中模拟self-end（对齐到底部）
  Widget rowSelfEnd() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }
  
  /// 在Row中模拟self-center（垂直居中）
  Widget rowSelfCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// 在Row中模拟self-stretch（垂直拉伸）
  Widget rowSelfStretch() {
    return SizedBox(
      height: double.infinity,
      child: this,
    );
  }
  
  /// 在Row中模拟self-baseline
  Widget rowSelfBaseline() {
    return Baseline(
      baseline: 0,
      baselineType: TextBaseline.alphabetic,
      child: this,
    );
  }
}

/// 在Column中的align-self行为
extension ColumnAlignSelfExt on Widget {
  
  /// 在Column中模拟self-start（对齐到左侧）
  Widget columnSelfStart() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }
  
  /// 在Column中模拟self-end（对齐到右侧）
  Widget columnSelfEnd() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }
  
  /// 在Column中模拟self-center（水平居中）
  Widget columnSelfCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// 在Column中模拟self-stretch（水平拉伸）
  Widget columnSelfStretch() {
    return SizedBox(
      width: double.infinity,
      child: this,
    );
  }
}

/// 带容器的align-self扩展
extension ContainerAlignSelfExt on Widget {
  
  /// 在指定尺寸的容器中应用self-start
  Widget selfStartInContainer({double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.topCenter,
      child: this,
    );
  }
  
  /// 在指定尺寸的容器中应用self-end
  Widget selfEndInContainer({double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }
  
  /// 在指定尺寸的容器中应用self-center
  Widget selfCenterInContainer({double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// 在指定尺寸的容器中应用self-stretch
  Widget selfStretchInContainer({double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: this,
      ),
    );
  }
}

/// 自定义对齐扩展
extension CustomAlignSelfExt on Widget {
  
  /// 使用自定义Alignment的align-self
  Widget selfAlign(Alignment alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }
  
  /// 在容器中使用自定义Alignment
  Widget selfAlignInContainer(
    Alignment alignment, {
    double? width,
    double? height,
  }) {
    return Container(
      width: width,
      height: height,
      alignment: alignment,
      child: this,
    );
  }
}

/// Align Self工具类
class AlignSelf {
  /// 创建self-auto项目
  static Widget auto(Widget child) {
    return child.selfAuto();
  }
  
  /// 创建self-start项目
  static Widget start(Widget child) {
    return child.selfStart();
  }
  
  /// 创建self-end项目
  static Widget end(Widget child) {
    return child.selfEnd();
  }
  
  /// 创建self-center项目
  static Widget center(Widget child) {
    return child.selfCenter();
  }
  
  /// 创建self-stretch项目
  static Widget stretch(Widget child) {
    return child.selfStretch();
  }
  
  /// 创建self-baseline项目
  static Widget baseline(Widget child) {
    return child.selfBaseline();
  }
  
  /// 在Row中创建align-self行为
  static Widget rowStart(Widget child) {
    return child.rowSelfStart();
  }
  
  static Widget rowEnd(Widget child) {
    return child.rowSelfEnd();
  }
  
  static Widget rowCenter(Widget child) {
    return child.rowSelfCenter();
  }
  
  static Widget rowStretch(Widget child) {
    return child.rowSelfStretch();
  }
  
  static Widget rowBaseline(Widget child) {
    return child.rowSelfBaseline();
  }
  
  /// 在Column中创建align-self行为
  static Widget columnStart(Widget child) {
    return child.columnSelfStart();
  }
  
  static Widget columnEnd(Widget child) {
    return child.columnSelfEnd();
  }
  
  static Widget columnCenter(Widget child) {
    return child.columnSelfCenter();
  }
  
  static Widget columnStretch(Widget child) {
    return child.columnSelfStretch();
  }
  
  /// 使用自定义对齐
  static Widget custom(Widget child, Alignment alignment) {
    return child.selfAlign(alignment);
  }
}
