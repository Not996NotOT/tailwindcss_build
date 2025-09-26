import 'package:flutter/material.dart';

/// Tailwind CSS Grid Auto Columns utilities for Flutter
/// Utilities for controlling the size of implicitly-created grid columns.
extension GridAutoColumnsExt on List<Widget> {
  
  // === Grid Auto Columns utilities ===
  
  /// auto-cols-auto -> grid-auto-columns: auto;
  Widget autoColsAuto({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: map((child) => IntrinsicWidth(child: child)).toList(),
    );
  }
  
  /// auto-cols-min -> grid-auto-columns: min-content;
  Widget autoColsMin({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: map((child) => IntrinsicWidth(child: child)).toList(),
    );
  }
  
  /// auto-cols-max -> grid-auto-columns: max-content;
  Widget autoColsMax({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Row(
      children: map((child) => Expanded(child: child)).toList(),
    );
  }
  
  /// auto-cols-fr -> grid-auto-columns: minmax(0, 1fr);
  Widget autoColsFr({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Row(
      children: map((child) => Expanded(child: child)).toList(),
    );
  }
  
  /// auto-cols-3xs -> grid-auto-columns: 16rem;
  Widget autoCols3xs() => _createFixedColumnGrid(256);
  
  /// auto-cols-2xs -> grid-auto-columns: 18rem;
  Widget autoCols2xs() => _createFixedColumnGrid(288);
  
  /// auto-cols-xs -> grid-auto-columns: 20rem;
  Widget autoColsXs() => _createFixedColumnGrid(320);
  
  /// auto-cols-sm -> grid-auto-columns: 24rem;
  Widget autoColsSm() => _createFixedColumnGrid(384);
  
  /// auto-cols-md -> grid-auto-columns: 28rem;
  Widget autoColsMd() => _createFixedColumnGrid(448);
  
  /// auto-cols-lg -> grid-auto-columns: 32rem;
  Widget autoColsLg() => _createFixedColumnGrid(512);
  
  /// auto-cols-xl -> grid-auto-columns: 36rem;
  Widget autoColsXl() => _createFixedColumnGrid(576);
  
  /// auto-cols-2xl -> grid-auto-columns: 42rem;
  Widget autoCols2xl() => _createFixedColumnGrid(672);
  
  /// auto-cols-3xl -> grid-auto-columns: 48rem;
  Widget autoCols3xl() => _createFixedColumnGrid(768);
  
  /// auto-cols-4xl -> grid-auto-columns: 56rem;
  Widget autoCols4xl() => _createFixedColumnGrid(896);
  
  /// auto-cols-5xl -> grid-auto-columns: 64rem;
  Widget autoCols5xl() => _createFixedColumnGrid(1024);
  
  /// auto-cols-6xl -> grid-auto-columns: 72rem;
  Widget autoCols6xl() => _createFixedColumnGrid(1152);
  
  /// auto-cols-7xl -> grid-auto-columns: 80rem;
  Widget autoCols7xl() => _createFixedColumnGrid(1280);
  
  /// 自定义列宽
  Widget autoColsCustom(double width) => _createFixedColumnGrid(width);
  
  /// 内部方法：创建固定列宽Grid
  Widget _createFixedColumnGrid(double columnWidth) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth;
        final columnCount = (availableWidth / columnWidth).floor().clamp(1, length);
        
        return GridView.count(
          crossAxisCount: columnCount,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: this,
        );
      },
    );
  }
}

/// Tailwind CSS Grid Auto Rows utilities for Flutter
/// Utilities for controlling the size of implicitly-created grid rows.
extension GridAutoRowsExt on List<Widget> {
  
  // === Grid Auto Rows utilities ===
  
  /// auto-rows-auto -> grid-auto-rows: auto;
  Widget autoRowsAuto({
    int crossAxisCount = 1,
    double spacing = 0.0,
  }) {
    return Column(
      children: map((child) => IntrinsicHeight(child: child)).toList(),
    );
  }
  
  /// auto-rows-min -> grid-auto-rows: min-content;
  Widget autoRowsMin({
    int crossAxisCount = 1,
    double spacing = 0.0,
  }) {
    return Column(
      children: map((child) => IntrinsicHeight(child: child)).toList(),
    );
  }
  
  /// auto-rows-max -> grid-auto-rows: max-content;
  Widget autoRowsMax({
    int crossAxisCount = 1,
    double spacing = 0.0,
  }) {
    return Column(
      children: map((child) => Expanded(child: child)).toList(),
    );
  }
  
  /// auto-rows-fr -> grid-auto-rows: minmax(0, 1fr);
  Widget autoRowsFr({
    int crossAxisCount = 1,
    double spacing = 0.0,
  }) {
    return Column(
      children: map((child) => Expanded(child: child)).toList(),
    );
  }
  
  /// 固定行高的Grid行
  Widget autoRowsFixed(double rowHeight) {
    return Column(
      children: map((child) => SizedBox(
        height: rowHeight,
        child: child,
      )).toList(),
    );
  }
  
  /// 自定义行高的Grid行
  Widget autoRowsCustom(List<double> rowHeights) {
    final children = <Widget>[];
    for (int i = 0; i < length; i++) {
      final height = i < rowHeights.length ? rowHeights[i] : 100.0;
      children.add(SizedBox(height: height, child: this[i]));
    }
    return Column(children: children);
  }
}

/// 自适应Grid Auto扩展
extension AdaptiveGridAutoExt on List<Widget> {
  
  /// 自适应列宽Grid
  Widget autoColsAdaptive({
    double minWidth = 200.0,
    double maxWidth = 400.0,
    double spacing = 0.0,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth;
        final columnCount = (availableWidth / minWidth).floor().clamp(1, length);
        final actualColumnWidth = availableWidth / columnCount;
        
        if (actualColumnWidth > maxWidth) {
          // 如果计算出的列宽超过最大值，重新计算列数
          final adjustedColumnCount = (availableWidth / maxWidth).ceil();
          return GridView.count(
            crossAxisCount: adjustedColumnCount,
            crossAxisSpacing: spacing,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: this,
          );
        }
        
        return GridView.count(
          crossAxisCount: columnCount,
          crossAxisSpacing: spacing,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: this,
        );
      },
    );
  }
  
  /// 自适应行高Grid
  Widget autoRowsAdaptive({
    double minHeight = 100.0,
    double maxHeight = 300.0,
    double spacing = 0.0,
  }) {
    return Column(
      children: map((child) => ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: minHeight,
          maxHeight: maxHeight,
        ),
        child: child,
      )).toList(),
    );
  }
}

/// Grid Auto工具类
class GridAuto {
  // === Columns ===
  
  /// 自动列宽
  static Widget colsAuto(List<Widget> children) => children.autoColsAuto();
  
  /// 最小内容列宽
  static Widget colsMin(List<Widget> children) => children.autoColsMin();
  
  /// 最大内容列宽
  static Widget colsMax(List<Widget> children) => children.autoColsMax();
  
  /// 分数列宽
  static Widget colsFr(List<Widget> children) => children.autoColsFr();
  
  /// 固定列宽
  static Widget colsFixed(List<Widget> children, double width) =>
      children.autoColsCustom(width);
  
  /// 自适应列宽
  static Widget colsAdaptive(
    List<Widget> children, {
    double minWidth = 200.0,
    double maxWidth = 400.0,
  }) => children.autoColsAdaptive(minWidth: minWidth, maxWidth: maxWidth);
  
  // === Rows ===
  
  /// 自动行高
  static Widget rowsAuto(List<Widget> children) => children.autoRowsAuto();
  
  /// 最小内容行高
  static Widget rowsMin(List<Widget> children) => children.autoRowsMin();
  
  /// 最大内容行高
  static Widget rowsMax(List<Widget> children) => children.autoRowsMax();
  
  /// 分数行高
  static Widget rowsFr(List<Widget> children) => children.autoRowsFr();
  
  /// 固定行高
  static Widget rowsFixed(List<Widget> children, double height) =>
      children.autoRowsFixed(height);
  
  /// 自定义行高
  static Widget rowsCustom(List<Widget> children, List<double> heights) =>
      children.autoRowsCustom(heights);
  
  /// 自适应行高
  static Widget rowsAdaptive(
    List<Widget> children, {
    double minHeight = 100.0,
    double maxHeight = 300.0,
  }) => children.autoRowsAdaptive(minHeight: minHeight, maxHeight: maxHeight);
}
