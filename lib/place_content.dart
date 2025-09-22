import 'package:flutter/material.dart';

/// Tailwind CSS Place Content utilities for Flutter
/// Utilities for controlling how content is justified and aligned at the same time.
/// place-content is a shorthand for align-content and justify-content.
extension PlaceContentExt on List<Widget> {
  
  // === place-content utilities ===
  
  /// place-content-start -> place-content: start;
  /// 将内容打包到容器的起始位置（同时控制主轴和交叉轴）
  Widget placeContentStart({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// place-content-end -> place-content: end;
  /// 将内容打包到容器的末端（同时控制主轴和交叉轴）
  Widget placeContentEnd({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.end,
      runAlignment: WrapAlignment.end,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// place-content-center -> place-content: center;
  /// 将内容打包到容器的中心（同时控制主轴和交叉轴）
  Widget placeContentCenter({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// place-content-between -> place-content: space-between;
  /// 在内容之间分配空间（同时控制主轴和交叉轴）
  Widget placeContentBetween({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceBetween,
      runAlignment: WrapAlignment.spaceBetween,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// place-content-around -> place-content: space-around;
  /// 在内容周围分配空间（同时控制主轴和交叉轴）
  Widget placeContentAround({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceAround,
      runAlignment: WrapAlignment.spaceAround,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// place-content-evenly -> place-content: space-evenly;
  /// 在内容周围均匀分配空间（同时控制主轴和交叉轴）
  Widget placeContentEvenly({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.spaceEvenly,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// place-content-stretch -> place-content: stretch;
  /// 拉伸内容以填充容器
  Widget placeContentStretch({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this.map((child) => SizedBox(
        width: double.infinity,
        child: child,
      )).toList(),
    );
  }
  
  /// place-content-baseline -> place-content: baseline;
  /// 基于基线对齐内容
  Widget placeContentBaseline({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
}

/// 在Flex容器中的place-content行为
extension FlexPlaceContentExt on List<Widget> {
  
  /// 在Row中模拟place-content-start
  Widget rowPlaceContentStart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: this,
    );
  }
  
  /// 在Row中模拟place-content-end
  Widget rowPlaceContentEnd() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: this,
    );
  }
  
  /// 在Row中模拟place-content-center
  Widget rowPlaceContentCenter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: this,
    );
  }
  
  /// 在Row中模拟place-content-between
  Widget rowPlaceContentBetween() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: this,
    );
  }
  
  /// 在Row中模拟place-content-around
  Widget rowPlaceContentAround() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: this,
    );
  }
  
  /// 在Row中模拟place-content-evenly
  Widget rowPlaceContentEvenly() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: this,
    );
  }
  
  /// 在Column中模拟place-content-start
  Widget columnPlaceContentStart() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: this,
    );
  }
  
  /// 在Column中模拟place-content-end
  Widget columnPlaceContentEnd() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: this,
    );
  }
  
  /// 在Column中模拟place-content-center
  Widget columnPlaceContentCenter() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: this,
    );
  }
  
  /// 在Column中模拟place-content-between
  Widget columnPlaceContentBetween() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: this,
    );
  }
  
  /// 在Column中模拟place-content-around
  Widget columnPlaceContentAround() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: this,
    );
  }
  
  /// 在Column中模拟place-content-evenly
  Widget columnPlaceContentEvenly() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: this,
    );
  }
}

/// Place Content工具类
class PlaceContent {
  /// 创建place-content-start容器
  static Widget start(List<Widget> children, {double spacing = 0.0}) {
    return children.placeContentStart(spacing: spacing);
  }
  
  /// 创建place-content-end容器
  static Widget end(List<Widget> children, {double spacing = 0.0}) {
    return children.placeContentEnd(spacing: spacing);
  }
  
  /// 创建place-content-center容器
  static Widget center(List<Widget> children, {double spacing = 0.0}) {
    return children.placeContentCenter(spacing: spacing);
  }
  
  /// 创建place-content-between容器
  static Widget between(List<Widget> children, {double spacing = 0.0}) {
    return children.placeContentBetween(spacing: spacing);
  }
  
  /// 创建place-content-around容器
  static Widget around(List<Widget> children, {double spacing = 0.0}) {
    return children.placeContentAround(spacing: spacing);
  }
  
  /// 创建place-content-evenly容器
  static Widget evenly(List<Widget> children, {double spacing = 0.0}) {
    return children.placeContentEvenly(spacing: spacing);
  }
  
  /// 创建place-content-stretch容器
  static Widget stretch(List<Widget> children, {double spacing = 0.0}) {
    return children.placeContentStretch(spacing: spacing);
  }
  
  /// 在Row中创建place-content行为
  static Widget rowStart(List<Widget> children) {
    return children.rowPlaceContentStart();
  }
  
  static Widget rowEnd(List<Widget> children) {
    return children.rowPlaceContentEnd();
  }
  
  static Widget rowCenter(List<Widget> children) {
    return children.rowPlaceContentCenter();
  }
  
  static Widget rowBetween(List<Widget> children) {
    return children.rowPlaceContentBetween();
  }
  
  static Widget rowAround(List<Widget> children) {
    return children.rowPlaceContentAround();
  }
  
  static Widget rowEvenly(List<Widget> children) {
    return children.rowPlaceContentEvenly();
  }
  
  /// 在Column中创建place-content行为
  static Widget columnStart(List<Widget> children) {
    return children.columnPlaceContentStart();
  }
  
  static Widget columnEnd(List<Widget> children) {
    return children.columnPlaceContentEnd();
  }
  
  static Widget columnCenter(List<Widget> children) {
    return children.columnPlaceContentCenter();
  }
  
  static Widget columnBetween(List<Widget> children) {
    return children.columnPlaceContentBetween();
  }
  
  static Widget columnAround(List<Widget> children) {
    return children.columnPlaceContentAround();
  }
  
  static Widget columnEvenly(List<Widget> children) {
    return children.columnPlaceContentEvenly();
  }
}
