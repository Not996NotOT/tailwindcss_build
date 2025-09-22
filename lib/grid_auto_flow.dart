import 'package:flutter/material.dart';

/// Tailwind CSS Grid Auto Flow utilities for Flutter
/// Utilities for controlling how elements in a grid are auto-placed.
extension GridAutoFlowExt on List<Widget> {
  
  // === Grid Auto Flow utilities ===
  
  /// grid-flow-row -> grid-auto-flow: row;
  /// 优先填充行（默认行为）
  Widget gridFlowRow({
    int crossAxisCount = 2,
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: runSpacing,
      crossAxisSpacing: spacing,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: this,
    );
  }
  
  /// grid-flow-col -> grid-auto-flow: column;
  /// 优先填充列
  Widget gridFlowCol({
    int mainAxisCount = 2,
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    // 在Flutter中，通过转置网格来模拟列优先填充
    return _createColumnFlowGrid(
      mainAxisCount: mainAxisCount,
      spacing: spacing,
      runSpacing: runSpacing,
    );
  }
  
  /// grid-flow-dense -> grid-auto-flow: dense;
  /// 密集填充（尽量填满空隙）
  Widget gridFlowDense({
    int crossAxisCount = 2,
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    // 在Flutter中使用StaggeredGrid来模拟dense填充
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// grid-flow-row-dense -> grid-auto-flow: row dense;
  /// 行优先 + 密集填充
  Widget gridFlowRowDense({
    int crossAxisCount = 2,
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// grid-flow-col-dense -> grid-auto-flow: column dense;
  /// 列优先 + 密集填充
  Widget gridFlowColDense({
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      direction: Axis.vertical,
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// 内部方法：创建列优先Grid
  Widget _createColumnFlowGrid({
    required int mainAxisCount,
    required double spacing,
    required double runSpacing,
  }) {
    // 将items重新排列为列优先
    final columnChildren = <Widget>[];
    final columnCount = (length / mainAxisCount).ceil();
    
    for (int col = 0; col < columnCount; col++) {
      final columnItems = <Widget>[];
      for (int row = 0; row < mainAxisCount; row++) {
        final index = col * mainAxisCount + row;
        if (index < length) {
          columnItems.add(this[index]);
        }
      }
      if (columnItems.isNotEmpty) {
        columnChildren.add(
          Column(
            children: columnItems
                .map((item) => Padding(
                      padding: EdgeInsets.only(bottom: runSpacing),
                      child: item,
                    ))
                .toList(),
          ),
        );
      }
    }
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columnChildren
          .map((col) => Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: spacing),
                  child: col,
                ),
              ))
          .toList(),
    );
  }
}

/// 自定义Grid流动扩展
extension CustomGridFlowExt on List<Widget> {
  
  /// 创建响应式流动Grid
  Widget gridFlowResponsive({
    int mobile = 1,
    int tablet = 2,
    int desktop = 3,
    GridAutoFlow flow = GridAutoFlow.row,
    double spacing = 0.0,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount;
        final screenWidth = constraints.maxWidth;
        
        if (screenWidth < 768) {
          crossAxisCount = mobile;
        } else if (screenWidth < 1024) {
          crossAxisCount = tablet;
        } else {
          crossAxisCount = desktop;
        }
        
        switch (flow) {
          case GridAutoFlow.row:
            return gridFlowRow(crossAxisCount: crossAxisCount, spacing: spacing);
          case GridAutoFlow.column:
            return gridFlowCol(mainAxisCount: crossAxisCount, spacing: spacing);
          case GridAutoFlow.rowDense:
            return gridFlowRowDense(crossAxisCount: crossAxisCount, spacing: spacing);
          case GridAutoFlow.columnDense:
            return gridFlowColDense(spacing: spacing);
        }
      },
    );
  }
  
  /// 创建瀑布流Grid（模拟dense行为）
  Widget gridFlowMasonry({
    int columnCount = 2,
    double spacing = 0.0,
    double runSpacing = 0.0,
  }) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: this,
    );
  }
  
  /// 创建交错Grid
  Widget gridFlowStaggered({
    int crossAxisCount = 2,
    double spacing = 0.0,
    List<double>? heights,
  }) {
    final staggeredChildren = <Widget>[];
    
    for (int i = 0; i < length; i++) {
      final height = heights != null && i < heights.length ? heights[i] : null;
      staggeredChildren.add(
        height != null
            ? SizedBox(height: height, child: this[i])
            : this[i],
      );
    }
    
    return Wrap(
      spacing: spacing,
      runSpacing: spacing,
      children: staggeredChildren,
    );
  }
}

/// Grid Auto Flow枚举
enum GridAutoFlow {
  row,
  column,
  rowDense,
  columnDense,
}

/// Grid Auto Flow工具类
class GridFlow {
  /// 行优先流动
  static Widget row(List<Widget> children, {int crossAxisCount = 2}) =>
      children.gridFlowRow(crossAxisCount: crossAxisCount);
  
  /// 列优先流动
  static Widget col(List<Widget> children, {int mainAxisCount = 2}) =>
      children.gridFlowCol(mainAxisCount: mainAxisCount);
  
  /// 密集填充
  static Widget dense(List<Widget> children, {int crossAxisCount = 2}) =>
      children.gridFlowDense(crossAxisCount: crossAxisCount);
  
  /// 行优先密集填充
  static Widget rowDense(List<Widget> children, {int crossAxisCount = 2}) =>
      children.gridFlowRowDense(crossAxisCount: crossAxisCount);
  
  /// 列优先密集填充
  static Widget colDense(List<Widget> children) =>
      children.gridFlowColDense();
  
  /// 响应式流动
  static Widget responsive(
    List<Widget> children, {
    int mobile = 1,
    int tablet = 2,
    int desktop = 3,
    GridAutoFlow flow = GridAutoFlow.row,
  }) => children.gridFlowResponsive(
    mobile: mobile,
    tablet: tablet,
    desktop: desktop,
    flow: flow,
  );
  
  /// 瀑布流
  static Widget masonry(List<Widget> children, {int columnCount = 2}) =>
      children.gridFlowMasonry(columnCount: columnCount);
  
  /// 交错Grid
  static Widget staggered(
    List<Widget> children, {
    int crossAxisCount = 2,
    List<double>? heights,
  }) => children.gridFlowStaggered(
    crossAxisCount: crossAxisCount,
    heights: heights,
  );
}
