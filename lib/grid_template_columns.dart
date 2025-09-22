import 'package:flutter/material.dart';

/// Tailwind CSS Grid Template Columns utilities for Flutter
/// Utilities for specifying the columns in a grid layout.
extension GridTemplateColumnsExt on List<Widget> {
  
  // === Grid Template Columns utilities ===
  
  /// grid-cols-1 -> grid-template-columns: repeat(1, minmax(0, 1fr));
  Widget gridCols1() => _createGrid(1);
  
  /// grid-cols-2 -> grid-template-columns: repeat(2, minmax(0, 1fr));
  Widget gridCols2() => _createGrid(2);
  
  /// grid-cols-3 -> grid-template-columns: repeat(3, minmax(0, 1fr));
  Widget gridCols3() => _createGrid(3);
  
  /// grid-cols-4 -> grid-template-columns: repeat(4, minmax(0, 1fr));
  Widget gridCols4() => _createGrid(4);
  
  /// grid-cols-5 -> grid-template-columns: repeat(5, minmax(0, 1fr));
  Widget gridCols5() => _createGrid(5);
  
  /// grid-cols-6 -> grid-template-columns: repeat(6, minmax(0, 1fr));
  Widget gridCols6() => _createGrid(6);
  
  /// grid-cols-7 -> grid-template-columns: repeat(7, minmax(0, 1fr));
  Widget gridCols7() => _createGrid(7);
  
  /// grid-cols-8 -> grid-template-columns: repeat(8, minmax(0, 1fr));
  Widget gridCols8() => _createGrid(8);
  
  /// grid-cols-9 -> grid-template-columns: repeat(9, minmax(0, 1fr));
  Widget gridCols9() => _createGrid(9);
  
  /// grid-cols-10 -> grid-template-columns: repeat(10, minmax(0, 1fr));
  Widget gridCols10() => _createGrid(10);
  
  /// grid-cols-11 -> grid-template-columns: repeat(11, minmax(0, 1fr));
  Widget gridCols11() => _createGrid(11);
  
  /// grid-cols-12 -> grid-template-columns: repeat(12, minmax(0, 1fr));
  Widget gridCols12() => _createGrid(12);
  
  /// grid-cols-none -> grid-template-columns: none;
  Widget gridColsNone() => Column(children: this);
  
  /// grid-cols-subgrid -> grid-template-columns: subgrid;
  Widget gridColsSubgrid() => _createGrid(null);
  
  /// 自定义列数
  Widget gridCols(int columnCount) => _createGrid(columnCount);
  
  /// 内部方法：创建Grid布局
  Widget _createGrid(int? columnCount) {
    if (columnCount == null) {
      // subgrid行为，使用默认的GridView
      return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: this,
      );
    }
    
    return GridView.count(
      crossAxisCount: columnCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: this,
    );
  }
}

/// 高级Grid布局扩展
extension AdvancedGridExt on List<Widget> {
  
  /// 创建自适应列的Grid
  Widget gridAdaptive({
    double minWidth = 200.0,
    double spacing = 0.0,
    double runSpacing = 0.0,
    double? childAspectRatio,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final columnCount = (screenWidth / minWidth).floor().clamp(1, 12);
        
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
  
  /// 创建响应式Grid布局
  Widget gridResponsive({
    int mobile = 1,
    int tablet = 2,
    int desktop = 3,
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int columnCount;
        final screenWidth = constraints.maxWidth;
        
        if (screenWidth < 768) {
          columnCount = mobile;
        } else if (screenWidth < 1024) {
          columnCount = tablet;
        } else {
          columnCount = desktop;
        }
        
        return GridView.count(
          crossAxisCount: columnCount,
          mainAxisSpacing: runSpacing,
          crossAxisSpacing: spacing,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: this,
        );
      },
    );
  }
  
  /// 创建瀑布流Grid布局
  Widget gridStaggered({
    int columnCount = 2,
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
  
  /// 创建等高Grid布局
  Widget gridEqualHeight({
    int columnCount = 2,
    double spacing = 0.0,
    double aspectRatio = 1.0,
  }) {
    return GridView.count(
      crossAxisCount: columnCount,
      crossAxisSpacing: spacing,
      mainAxisSpacing: spacing,
      childAspectRatio: aspectRatio,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: this,
    );
  }
}

/// Grid Template Columns工具类
class GridTemplateCols {
  /// 创建1列Grid
  static Widget cols1(List<Widget> children) => children.gridCols1();
  
  /// 创建2列Grid
  static Widget cols2(List<Widget> children) => children.gridCols2();
  
  /// 创建3列Grid
  static Widget cols3(List<Widget> children) => children.gridCols3();
  
  /// 创建4列Grid
  static Widget cols4(List<Widget> children) => children.gridCols4();
  
  /// 创建5列Grid
  static Widget cols5(List<Widget> children) => children.gridCols5();
  
  /// 创建6列Grid
  static Widget cols6(List<Widget> children) => children.gridCols6();
  
  /// 创建7列Grid
  static Widget cols7(List<Widget> children) => children.gridCols7();
  
  /// 创建8列Grid
  static Widget cols8(List<Widget> children) => children.gridCols8();
  
  /// 创建9列Grid
  static Widget cols9(List<Widget> children) => children.gridCols9();
  
  /// 创建10列Grid
  static Widget cols10(List<Widget> children) => children.gridCols10();
  
  /// 创建11列Grid
  static Widget cols11(List<Widget> children) => children.gridCols11();
  
  /// 创建12列Grid
  static Widget cols12(List<Widget> children) => children.gridCols12();
  
  /// 无Grid列
  static Widget none(List<Widget> children) => children.gridColsNone();
  
  /// Subgrid
  static Widget subgrid(List<Widget> children) => children.gridColsSubgrid();
  
  /// 自定义列数
  static Widget custom(List<Widget> children, int columnCount) => 
      children.gridCols(columnCount);
  
  /// 自适应列
  static Widget adaptive(List<Widget> children, {double minWidth = 200.0}) =>
      children.gridAdaptive(minWidth: minWidth);
  
  /// 响应式Grid
  static Widget responsive(
    List<Widget> children, {
    int mobile = 1,
    int tablet = 2,
    int desktop = 3,
  }) => children.gridResponsive(
    mobile: mobile,
    tablet: tablet,
    desktop: desktop,
  );
  
  /// 瀑布流Grid
  static Widget staggered(List<Widget> children, {int columnCount = 2}) =>
      children.gridStaggered(columnCount: columnCount);
  
  /// 等高Grid
  static Widget equalHeight(
    List<Widget> children, {
    int columnCount = 2,
    double aspectRatio = 1.0,
  }) => children.gridEqualHeight(
    columnCount: columnCount,
    aspectRatio: aspectRatio,
  );
}
