import 'package:flutter/material.dart';

/// Tailwind CSS Flex Direction utilities for Flutter
/// Utilities for controlling the direction of flex items.
extension FlexDirectionExt on Widget {
  
  // === flex-direction utilities ===
  
  /// flex-row -> flex-direction: row;
  /// 水平排列flex项目，与文本方向相同
  Widget flexRow() {
    return Row(
      children: [this],
    );
  }
  
  /// flex-row-reverse -> flex-direction: row-reverse;
  /// 水平排列flex项目，与文本方向相反
  Widget flexRowReverse() {
    return Row(
      textDirection: TextDirection.rtl,
      children: [this],
    );
  }
  
  /// flex-col -> flex-direction: column;
  /// 垂直排列flex项目
  Widget flexCol() {
    return Column(
      children: [this],
    );
  }
  
  /// flex-col-reverse -> flex-direction: column-reverse;
  /// 垂直排列flex项目，方向相反
  Widget flexColReverse() {
    return Column(
      verticalDirection: VerticalDirection.up,
      children: [this],
    );
  }
}

/// 用于创建Flex容器的扩展（接受多个子组件）
extension FlexContainerExt on List<Widget> {
  
  /// 创建水平Flex容器 (flex-row)
  Widget flexRow({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: this,
    );
  }
  
  /// 创建水平反向Flex容器 (flex-row-reverse)
  Widget flexRowReverse({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: TextDirection.rtl,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: this,
    );
  }
  
  /// 创建垂直Flex容器 (flex-col)
  Widget flexCol({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: this,
    );
  }
  
  /// 创建垂直反向Flex容器 (flex-col-reverse)
  Widget flexColReverse({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    TextBaseline? textBaseline,
  }) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: VerticalDirection.up,
      textBaseline: textBaseline,
      children: this,
    );
  }
  
  /// 通用Flex容器，允许自定义方向
  Widget flex({
    required Axis direction,
    bool reverse = false,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) {
    return Flex(
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: reverse 
          ? (direction == Axis.horizontal ? TextDirection.rtl : textDirection)
          : textDirection,
      verticalDirection: reverse && direction == Axis.vertical 
          ? VerticalDirection.up 
          : verticalDirection,
      textBaseline: textBaseline,
      children: this,
    );
  }
}