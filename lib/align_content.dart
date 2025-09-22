import 'package:flutter/material.dart';

/// Tailwind CSS Align Content utilities for Flutter
/// Utilities for controlling how rows are positioned in multi-row flex and grid containers.
extension AlignContentExt on List<Widget> {
  
  // === align-content utilities ===
  
  /// content-start -> align-content: flex-start;
  /// 将行打包到容器的起始位置
  Widget contentStart({
    double spacing = 0.0,
    WrapAlignment alignment = WrapAlignment.start,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: alignment,
      spacing: spacing,
      runSpacing: spacing,
      runAlignment: WrapAlignment.start,
      children: this,
    );
  }
  
  /// content-end -> align-content: flex-end;
  /// 将行打包到容器的末端
  Widget contentEnd({
    double spacing = 0.0,
    WrapAlignment alignment = WrapAlignment.start,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: alignment,
      spacing: spacing,
      runSpacing: spacing,
      runAlignment: WrapAlignment.end,
      children: this,
    );
  }
  
  /// content-center -> align-content: center;
  /// 将行打包到容器的中心
  Widget contentCenter({
    double spacing = 0.0,
    WrapAlignment alignment = WrapAlignment.start,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: alignment,
      spacing: spacing,
      runSpacing: spacing,
      runAlignment: WrapAlignment.center,
      children: this,
    );
  }
  
  /// content-between -> align-content: space-between;
  /// 在行之间分配空间，使行之间有相等的空间
  Widget contentBetween({
    double spacing = 0.0,
    WrapAlignment alignment = WrapAlignment.start,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: alignment,
      spacing: spacing,
      runSpacing: spacing,
      runAlignment: WrapAlignment.spaceBetween,
      children: this,
    );
  }
  
  /// content-around -> align-content: space-around;
  /// 在行周围分配空间，使每行的每一侧都有相等的空间
  Widget contentAround({
    double spacing = 0.0,
    WrapAlignment alignment = WrapAlignment.start,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: alignment,
      spacing: spacing,
      runSpacing: spacing,
      runAlignment: WrapAlignment.spaceAround,
      children: this,
    );
  }
  
  /// content-evenly -> align-content: space-evenly;
  /// 在行周围分配空间，使行之间和每一侧的空间都相等
  Widget contentEvenly({
    double spacing = 0.0,
    WrapAlignment alignment = WrapAlignment.start,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: alignment,
      spacing: spacing,
      runSpacing: spacing,
      runAlignment: WrapAlignment.spaceEvenly,
      children: this,
    );
  }
  
  /// content-stretch -> align-content: stretch;
  /// 拉伸行以占用剩余空间
  Widget contentStretch({
    double spacing = 0.0,
    WrapAlignment alignment = WrapAlignment.start,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: alignment,
      spacing: spacing,
      runSpacing: spacing,
      runAlignment: WrapAlignment.start,
      children: this,
    );
  }
  
  /// content-normal -> align-content: normal;
  /// 将行打包在其默认位置，就好像没有设置align-content值一样
  Widget contentNormal({
    double spacing = 0.0,
    WrapAlignment alignment = WrapAlignment.start,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: alignment,
      spacing: spacing,
      runSpacing: spacing,
      runAlignment: WrapAlignment.start,
      children: this,
    );
  }
}

/// 在Column中的align-content行为模拟
extension ColumnAlignContentExt on List<Widget> {
  
  /// 在Column中模拟content-start
  Widget columnContentStart({
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment,
      children: this,
    );
  }
  
  /// 在Column中模拟content-end
  Widget columnContentEnd({
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: crossAxisAlignment,
      children: this,
    );
  }
  
  /// 在Column中模拟content-center
  Widget columnContentCenter({
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: crossAxisAlignment,
      children: this,
    );
  }
  
  /// 在Column中模拟content-between
  Widget columnContentBetween({
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: crossAxisAlignment,
      children: this,
    );
  }
  
  /// 在Column中模拟content-around
  Widget columnContentAround({
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: crossAxisAlignment,
      children: this,
    );
  }
  
  /// 在Column中模拟content-evenly
  Widget columnContentEvenly({
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: crossAxisAlignment,
      children: this,
    );
  }
}

/// Align Content工具类
class AlignContent {
  /// 创建content-start容器
  static Widget start(List<Widget> children, {double spacing = 0.0}) {
    return children.contentStart(spacing: spacing);
  }
  
  /// 创建content-end容器
  static Widget end(List<Widget> children, {double spacing = 0.0}) {
    return children.contentEnd(spacing: spacing);
  }
  
  /// 创建content-center容器
  static Widget center(List<Widget> children, {double spacing = 0.0}) {
    return children.contentCenter(spacing: spacing);
  }
  
  /// 创建content-between容器
  static Widget between(List<Widget> children, {double spacing = 0.0}) {
    return children.contentBetween(spacing: spacing);
  }
  
  /// 创建content-around容器
  static Widget around(List<Widget> children, {double spacing = 0.0}) {
    return children.contentAround(spacing: spacing);
  }
  
  /// 创建content-evenly容器
  static Widget evenly(List<Widget> children, {double spacing = 0.0}) {
    return children.contentEvenly(spacing: spacing);
  }
  
  /// 在Column中创建align-content行为
  static Widget columnStart(List<Widget> children) {
    return children.columnContentStart();
  }
  
  static Widget columnEnd(List<Widget> children) {
    return children.columnContentEnd();
  }
  
  static Widget columnCenter(List<Widget> children) {
    return children.columnContentCenter();
  }
  
  static Widget columnBetween(List<Widget> children) {
    return children.columnContentBetween();
  }
  
  static Widget columnAround(List<Widget> children) {
    return children.columnContentAround();
  }
  
  static Widget columnEvenly(List<Widget> children) {
    return children.columnContentEvenly();
  }
}
