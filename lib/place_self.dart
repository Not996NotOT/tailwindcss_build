import 'package:flutter/material.dart';

/// Tailwind CSS Place Self utilities for Flutter
/// Utilities for controlling how an individual item is justified and aligned at the same time.
/// place-self is a shorthand for align-self and justify-self.
extension PlaceSelfExt on Widget {
  
  // === place-self utilities ===
  
  /// place-self-auto -> place-self: auto;
  /// 使用父容器的place-items值
  Widget placeSelfAuto() {
    return this;
  }
  
  /// place-self-start -> place-self: start;
  /// 将项目对齐到其区域的起始位置（同时控制主轴和交叉轴）
  Widget placeSelfStart() {
    return Align(
      alignment: Alignment.topLeft,
      child: this,
    );
  }
  
  /// place-self-end -> place-self: end;
  /// 将项目对齐到其区域的末端（同时控制主轴和交叉轴）
  Widget placeSelfEnd() {
    return Align(
      alignment: Alignment.bottomRight,
      child: this,
    );
  }
  
  /// place-self-center -> place-self: center;
  /// 将项目对齐到其区域的中心（同时控制主轴和交叉轴）
  Widget placeSelfCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// place-self-stretch -> place-self: stretch;
  /// 拉伸项目以填充其区域（同时控制主轴和交叉轴）
  Widget placeSelfStretch() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: this,
    );
  }
}

/// 在Row中的place-self行为
extension RowPlaceSelfExt on Widget {
  
  /// 在Row中模拟place-self-start（左上对齐）
  Widget rowPlaceSelfStart() {
    return Align(
      alignment: Alignment.topLeft,
      child: this,
    );
  }
  
  /// 在Row中模拟place-self-end（右下对齐）
  Widget rowPlaceSelfEnd() {
    return Align(
      alignment: Alignment.bottomRight,
      child: this,
    );
  }
  
  /// 在Row中模拟place-self-center（居中对齐）
  Widget rowPlaceSelfCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// 在Row中模拟place-self-stretch（拉伸填充）
  Widget rowPlaceSelfStretch() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: this,
    );
  }
}

/// 在Column中的place-self行为
extension ColumnPlaceSelfExt on Widget {
  
  /// 在Column中模拟place-self-start（左上对齐）
  Widget columnPlaceSelfStart() {
    return Align(
      alignment: Alignment.topLeft,
      child: this,
    );
  }
  
  /// 在Column中模拟place-self-end（右下对齐）
  Widget columnPlaceSelfEnd() {
    return Align(
      alignment: Alignment.bottomRight,
      child: this,
    );
  }
  
  /// 在Column中模拟place-self-center（居中对齐）
  Widget columnPlaceSelfCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// 在Column中模拟place-self-stretch（拉伸填充）
  Widget columnPlaceSelfStretch() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: this,
    );
  }
}

/// 带容器的place-self扩展
extension ContainerPlaceSelfExt on Widget {
  
  /// 在指定尺寸的容器中应用place-self-start
  Widget placeSelfStartInContainer({double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.topLeft,
      child: this,
    );
  }
  
  /// 在指定尺寸的容器中应用place-self-end
  Widget placeSelfEndInContainer({double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.bottomRight,
      child: this,
    );
  }
  
  /// 在指定尺寸的容器中应用place-self-center
  Widget placeSelfCenterInContainer({double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// 在指定尺寸的容器中应用place-self-stretch
  Widget placeSelfStretchInContainer({double? width, double? height}) {
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

/// 自定义对齐的place-self扩展
extension CustomPlaceSelfExt on Widget {
  
  /// 使用自定义Alignment的place-self
  Widget placeSelfAlign(Alignment alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }
  
  /// 在容器中使用自定义Alignment
  Widget placeSelfAlignInContainer(
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
  
  /// 使用分别的主轴和交叉轴对齐
  Widget placeSelfCustom({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    // 根据对齐方式计算Alignment
    double x = 0.0;
    double y = 0.0;
    
    // 主轴对齐（假设为水平方向）
    switch (mainAxisAlignment) {
      case MainAxisAlignment.start:
        x = -1.0;
        break;
      case MainAxisAlignment.end:
        x = 1.0;
        break;
      case MainAxisAlignment.center:
        x = 0.0;
        break;
      default:
        x = 0.0;
    }
    
    // 交叉轴对齐
    switch (crossAxisAlignment) {
      case CrossAxisAlignment.start:
        y = -1.0;
        break;
      case CrossAxisAlignment.end:
        y = 1.0;
        break;
      case CrossAxisAlignment.center:
        y = 0.0;
        break;
      case CrossAxisAlignment.stretch:
        return SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: this,
        );
      default:
        y = 0.0;
    }
    
    return Align(
      alignment: Alignment(x, y),
      child: this,
    );
  }
}

/// Place Self工具类
class PlaceSelf {
  /// 创建place-self-auto项目
  static Widget auto(Widget child) {
    return child.placeSelfAuto();
  }
  
  /// 创建place-self-start项目
  static Widget start(Widget child) {
    return child.placeSelfStart();
  }
  
  /// 创建place-self-end项目
  static Widget end(Widget child) {
    return child.placeSelfEnd();
  }
  
  /// 创建place-self-center项目
  static Widget center(Widget child) {
    return child.placeSelfCenter();
  }
  
  /// 创建place-self-stretch项目
  static Widget stretch(Widget child) {
    return child.placeSelfStretch();
  }
  
  /// 在Row中创建place-self行为
  static Widget rowStart(Widget child) {
    return child.rowPlaceSelfStart();
  }
  
  static Widget rowEnd(Widget child) {
    return child.rowPlaceSelfEnd();
  }
  
  static Widget rowCenter(Widget child) {
    return child.rowPlaceSelfCenter();
  }
  
  static Widget rowStretch(Widget child) {
    return child.rowPlaceSelfStretch();
  }
  
  /// 在Column中创建place-self行为
  static Widget columnStart(Widget child) {
    return child.columnPlaceSelfStart();
  }
  
  static Widget columnEnd(Widget child) {
    return child.columnPlaceSelfEnd();
  }
  
  static Widget columnCenter(Widget child) {
    return child.columnPlaceSelfCenter();
  }
  
  static Widget columnStretch(Widget child) {
    return child.columnPlaceSelfStretch();
  }
  
  /// 使用自定义对齐
  static Widget custom(Widget child, Alignment alignment) {
    return child.placeSelfAlign(alignment);
  }
  
  /// 使用分别的主轴和交叉轴对齐
  static Widget customAxis(
    Widget child, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return child.placeSelfCustom(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
    );
  }
}
