import 'package:flutter/material.dart';

/// Tailwind CSS Columns utilities for Flutter
/// Utilities for controlling the number of columns within an element.
extension ColumnsExt on Widget {
  
  // === columns-<number> utilities ===
  /// columns-1 -> columns: 1;
  Widget columns1() => _wrapWithColumns(1);
  
  /// columns-2 -> columns: 2;
  Widget columns2() => _wrapWithColumns(2);
  
  /// columns-3 -> columns: 3;
  Widget columns3() => _wrapWithColumns(3);
  
  /// columns-4 -> columns: 4;
  Widget columns4() => _wrapWithColumns(4);
  
  /// columns-5 -> columns: 5;
  Widget columns5() => _wrapWithColumns(5);
  
  /// columns-6 -> columns: 6;
  Widget columns6() => _wrapWithColumns(6);
  
  /// columns-7 -> columns: 7;
  Widget columns7() => _wrapWithColumns(7);
  
  /// columns-8 -> columns: 8;
  Widget columns8() => _wrapWithColumns(8);
  
  /// columns-9 -> columns: 9;
  Widget columns9() => _wrapWithColumns(9);
  
  /// columns-10 -> columns: 10;
  Widget columns10() => _wrapWithColumns(10);
  
  /// columns-11 -> columns: 11;
  Widget columns11() => _wrapWithColumns(11);
  
  /// columns-12 -> columns: 12;
  Widget columns12() => _wrapWithColumns(12);

  // === Container scale utilities ===
  /// columns-3xs -> columns: 256px (16rem);
  Widget columns3xs() => _wrapWithColumns(null, columnWidth: 256);
  
  /// columns-2xs -> columns: 288px (18rem);
  Widget columns2xs() => _wrapWithColumns(null, columnWidth: 288);
  
  /// columns-xs -> columns: 320px (20rem);
  Widget columnsXs() => _wrapWithColumns(null, columnWidth: 320);
  
  /// columns-sm -> columns: 384px (24rem);
  Widget columnsSm() => _wrapWithColumns(null, columnWidth: 384);
  
  /// columns-md -> columns: 448px (28rem);
  Widget columnsMd() => _wrapWithColumns(null, columnWidth: 448);
  
  /// columns-lg -> columns: 512px (32rem);
  Widget columnsLg() => _wrapWithColumns(null, columnWidth: 512);
  
  /// columns-xl -> columns: 576px (36rem);
  Widget columnsXl() => _wrapWithColumns(null, columnWidth: 576);
  
  /// columns-2xl -> columns: 672px (42rem);
  Widget columns2xl() => _wrapWithColumns(null, columnWidth: 672);
  
  /// columns-3xl -> columns: 768px (48rem);
  Widget columns3xl() => _wrapWithColumns(null, columnWidth: 768);
  
  /// columns-4xl -> columns: 896px (56rem);
  Widget columns4xl() => _wrapWithColumns(null, columnWidth: 896);
  
  /// columns-5xl -> columns: 1024px (64rem);
  Widget columns5xl() => _wrapWithColumns(null, columnWidth: 1024);
  
  /// columns-6xl -> columns: 1152px (72rem);
  Widget columns6xl() => _wrapWithColumns(null, columnWidth: 1152);
  
  /// columns-7xl -> columns: 1280px (80rem);
  Widget columns7xl() => _wrapWithColumns(null, columnWidth: 1280);

  // === Special utilities ===
  /// columns-auto -> columns: auto;
  Widget columnsAuto() => this;

  // === Custom columns utilities ===
  /// columns(int count) -> columns: <count>; (自定义列数)
  Widget columns(int count) => _wrapWithColumns(count);
  
  /// columnsWidth(double width) -> columns: <width>; (自定义列宽)
  Widget columnsWidth(double width) => _wrapWithColumns(null, columnWidth: width);
  
  /// columnsCustom(int? count, double? width) -> columns: <value>; (完全自定义)
  Widget columnsCustom({int? count, double? columnWidth}) => _wrapWithColumns(count, columnWidth: columnWidth);

  // === 内部辅助方法 ===
  Widget _wrapWithColumns(int? columnCount, {double? columnWidth}) {
    // 在Flutter中，我们使用GridView来模拟CSS的columns属性
    if (columnCount != null) {
      return GridView.count(
        crossAxisCount: columnCount,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [this],
      );
    } else if (columnWidth != null) {
      return LayoutBuilder(
        builder: (context, constraints) {
          final availableWidth = constraints.maxWidth.isFinite 
              ? constraints.maxWidth 
              : MediaQuery.of(context).size.width;
          final columnCount = (availableWidth / columnWidth).floor().clamp(1, 12);
          return GridView.count(
            crossAxisCount: columnCount,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [this],
          );
        },
      );
    }
    return this;
  }
}

/// 用于多个Widget的columns扩展
extension ColumnsListExt on List<Widget> {
  
  /// 创建指定列数的网格布局
  Widget columns(int columnCount, {
    double spacing = 0.0,
    double runSpacing = 0.0,
    double? childAspectRatio,
  }) {
    return GridView.count(
      crossAxisCount: columnCount,
      mainAxisSpacing: runSpacing,
      crossAxisSpacing: spacing,
      childAspectRatio: childAspectRatio ?? 1.0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: this,
    );
  }
  
  /// 创建指定列宽的网格布局
  Widget columnsWidth(double columnWidth, {
    double spacing = 0.0,
    double runSpacing = 0.0,
    double? childAspectRatio,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        final columnCount = (availableWidth / columnWidth).floor().clamp(1, 12);
        return GridView.count(
          crossAxisCount: columnCount,
          mainAxisSpacing: runSpacing,
          crossAxisSpacing: spacing,
          childAspectRatio: childAspectRatio ?? 1.0,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: this,
        );
      },
    );
  }
  
  /// 创建自适应列的StaggeredGrid布局（类似CSS的masonry布局）
  Widget columnsStaggered(int columnCount, {
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    // 简化版的瀑布流布局
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
}

/// Columns工具类
class Columns {
  /// 创建指定列数的网格
  static Widget count(List<Widget> children, int columnCount, {double spacing = 0.0}) {
    return children.columns(columnCount, spacing: spacing);
  }
  
  /// 创建指定列宽的网格
  static Widget width(List<Widget> children, double columnWidth, {double spacing = 0.0}) {
    return children.columnsWidth(columnWidth, spacing: spacing);
  }
  
  /// 创建自适应的瀑布流布局
  static Widget staggered(List<Widget> children, int columnCount, {double spacing = 0.0}) {
    return children.columnsStaggered(columnCount, spacing: spacing);
  }
}
