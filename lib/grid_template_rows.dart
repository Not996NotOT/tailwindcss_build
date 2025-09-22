import 'package:flutter/material.dart';

/// Tailwind CSS Grid Template Rows utilities for Flutter
/// Utilities for specifying the rows in a grid layout.
extension GridTemplateRowsExt on List<Widget> {
  
  // === Grid Template Rows utilities ===
  
  /// grid-rows-1 -> grid-template-rows: repeat(1, minmax(0, 1fr));
  Widget gridRows1() => _createRowGrid(1);
  
  /// grid-rows-2 -> grid-template-rows: repeat(2, minmax(0, 1fr));
  Widget gridRows2() => _createRowGrid(2);
  
  /// grid-rows-3 -> grid-template-rows: repeat(3, minmax(0, 1fr));
  Widget gridRows3() => _createRowGrid(3);
  
  /// grid-rows-4 -> grid-template-rows: repeat(4, minmax(0, 1fr));
  Widget gridRows4() => _createRowGrid(4);
  
  /// grid-rows-5 -> grid-template-rows: repeat(5, minmax(0, 1fr));
  Widget gridRows5() => _createRowGrid(5);
  
  /// grid-rows-6 -> grid-template-rows: repeat(6, minmax(0, 1fr));
  Widget gridRows6() => _createRowGrid(6);
  
  /// grid-rows-none -> grid-template-rows: none;
  Widget gridRowsNone() => Row(children: this);
  
  /// grid-rows-subgrid -> grid-template-rows: subgrid;
  Widget gridRowsSubgrid() => _createRowGrid(null);
  
  /// 自定义行数
  Widget gridRows(int rowCount) => _createRowGrid(rowCount);
  
  /// 内部方法：创建行Grid布局
  Widget _createRowGrid(int? rowCount) {
    if (rowCount == null) {
      // subgrid行为
      return Column(children: this);
    }
    
    // 在Flutter中，通过分组的方式模拟行网格
    final rowChildren = <Widget>[];
    for (int i = 0; i < length; i += rowCount) {
      final rowWidgets = skip(i).take(rowCount).toList();
      rowChildren.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: rowWidgets.map((w) => Expanded(child: w)).toList(),
        ),
      );
    }
    
    return Column(children: rowChildren);
  }
}

/// 行高度控制扩展
extension GridRowHeightExt on List<Widget> {
  
  /// 创建等高行Grid
  Widget gridRowsEqualHeight({
    int rowCount = 2,
    double rowHeight = 100.0,
    double spacing = 0.0,
  }) {
    final rowChildren = <Widget>[];
    
    for (int i = 0; i < length; i += rowCount) {
      final rowWidgets = skip(i).take(rowCount).toList();
      rowChildren.add(
        SizedBox(
          height: rowHeight,
          child: Row(
            children: rowWidgets.map((w) => Expanded(child: w)).toList(),
          ),
        ),
      );
      
      if (i + rowCount < length && spacing > 0) {
        rowChildren.add(SizedBox(height: spacing));
      }
    }
    
    return Column(children: rowChildren);
  }
  
  /// 创建自适应高度行Grid
  Widget gridRowsAdaptive({
    double minHeight = 100.0,
    double spacing = 0.0,
  }) {
    return Column(
      children: map((widget) => Container(
        constraints: BoxConstraints(minHeight: minHeight),
        child: widget,
      )).toList(),
    );
  }
  
  /// 创建响应式行Grid
  Widget gridRowsResponsive({
    int mobile = 1,
    int tablet = 2,
    int desktop = 3,
    double spacing = 0.0,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int itemsPerRow;
        final screenWidth = constraints.maxWidth;
        
        if (screenWidth < 768) {
          itemsPerRow = mobile;
        } else if (screenWidth < 1024) {
          itemsPerRow = tablet;
        } else {
          itemsPerRow = desktop;
        }
        
        final rowChildren = <Widget>[];
        for (int i = 0; i < length; i += itemsPerRow) {
          final rowWidgets = skip(i).take(itemsPerRow).toList();
          rowChildren.add(
            Row(
              children: rowWidgets.map((w) => Expanded(child: w)).toList(),
            ),
          );
          
          if (i + itemsPerRow < length && spacing > 0) {
            rowChildren.add(SizedBox(height: spacing));
          }
        }
        
        return Column(children: rowChildren);
      },
    );
  }
}

/// Grid Template Rows工具类
class GridTemplateRows {
  /// 创建1行Grid
  static Widget rows1(List<Widget> children) => children.gridRows1();
  
  /// 创建2行Grid
  static Widget rows2(List<Widget> children) => children.gridRows2();
  
  /// 创建3行Grid
  static Widget rows3(List<Widget> children) => children.gridRows3();
  
  /// 创建4行Grid
  static Widget rows4(List<Widget> children) => children.gridRows4();
  
  /// 创建5行Grid
  static Widget rows5(List<Widget> children) => children.gridRows5();
  
  /// 创建6行Grid
  static Widget rows6(List<Widget> children) => children.gridRows6();
  
  /// 无Grid行
  static Widget none(List<Widget> children) => children.gridRowsNone();
  
  /// Subgrid
  static Widget subgrid(List<Widget> children) => children.gridRowsSubgrid();
  
  /// 自定义行数
  static Widget custom(List<Widget> children, int rowCount) => 
      children.gridRows(rowCount);
  
  /// 等高行Grid
  static Widget equalHeight(
    List<Widget> children, {
    int rowCount = 2,
    double rowHeight = 100.0,
  }) => children.gridRowsEqualHeight(
    rowCount: rowCount,
    rowHeight: rowHeight,
  );
  
  /// 自适应高度行Grid
  static Widget adaptive(List<Widget> children, {double minHeight = 100.0}) =>
      children.gridRowsAdaptive(minHeight: minHeight);
  
  /// 响应式行Grid
  static Widget responsive(
    List<Widget> children, {
    int mobile = 1,
    int tablet = 2,
    int desktop = 3,
  }) => children.gridRowsResponsive(
    mobile: mobile,
    tablet: tablet,
    desktop: desktop,
  );
}
