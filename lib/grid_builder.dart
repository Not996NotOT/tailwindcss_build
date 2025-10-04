import 'package:flutter/material.dart';

import 'container_builder.dart';

/// Grid Item扩展，用于为子组件添加grid相关属性
extension WidgetGridExtension on Widget {
  /// 设置grid列跨度
  GridItemWidget colSpan(int span) {
    return GridItemWidget(colSpan: span, child: this);
  }
  
  /// 设置grid列开始位置
  GridItemWidget colStart(int start) {
    return GridItemWidget(colStart: start, child: this);
  }
  
  /// 设置grid列结束位置
  GridItemWidget colEnd(int end) {
    return GridItemWidget(colEnd: end, child: this);
  }
  
  /// 设置grid行跨度
  GridItemWidget rowSpan(int span) {
    return GridItemWidget(rowSpan: span, child: this);
  }
  
  /// 设置grid行开始位置
  GridItemWidget rowStart(int start) {
    return GridItemWidget(rowStart: start, child: this);
  }
  
  /// 设置grid行结束位置
  GridItemWidget rowEnd(int end) {
    return GridItemWidget(rowEnd: end, child: this);
  }
  
  /// 设置grid区域
  GridItemWidget gridArea({
    int? colStart,
    int? colEnd,
    int? rowStart,
    int? rowEnd,
    int? colSpan,
    int? rowSpan,
  }) {
    return GridItemWidget(
      colStart: colStart,
      colEnd: colEnd,
      rowStart: rowStart,
      rowEnd: rowEnd,
      colSpan: colSpan,
      rowSpan: rowSpan,
      child: this,
    );
  }
}

/// 包装Widget并携带grid item信息的容器
class GridItemWidget extends StatelessWidget {
  final Widget child;
  final int? colSpan;
  final int? colStart;
  final int? colEnd;
  final int? rowSpan;
  final int? rowStart;
  final int? rowEnd;
  
  const GridItemWidget({
    super.key,
    this.colSpan,
    this.colStart,
    this.colEnd,
    this.rowSpan,
    this.rowStart,
    this.rowEnd,
    required this.child,
  });
  
  @override
  Widget build(BuildContext context) {
    return child;
  }
}

/// 内部辅助类，用于处理grid item的位置信息
class _GridItemInfo {
  final Widget widget;
  final int? colSpan;
  final int? colStart;
  final int? colEnd;
  final int? rowSpan;
  final int? rowStart;
  final int? rowEnd;
  final int originalIndex;
  
  _GridItemInfo({
    required this.widget,
    this.colSpan,
    this.colStart,
    this.colEnd,
    this.rowSpan,
    this.rowStart,
    this.rowEnd,
    required this.originalIndex,
  });
}

/// Grid 建造者 - 负责Grid布局属性
class GridBuilder {
  final List<Widget> children;
  
  // Grid布局属性
  int? _templateColumns;
  int? _templateRows;
  // String? _customTemplateColumns; // 保留用于未来扩展
  // String? _customTemplateRows;    // 保留用于未来扩展
  // Axis? _autoFlow;                // 保留用于未来扩展
  // double? _autoColumns;           // 保留用于未来扩展
  // double? _autoRows;              // 保留用于未来扩展
  double? _gap;
  double? _columnGap;
  double? _rowGap;
  
  // 对齐属性
  MainAxisAlignment _justifyContent = MainAxisAlignment.start;
  CrossAxisAlignment _alignContent = CrossAxisAlignment.start;
  MainAxisAlignment _justifyItems = MainAxisAlignment.start;
  CrossAxisAlignment _alignItems = CrossAxisAlignment.start;
  
  GridBuilder(this.children);
  
  // === Grid Template Columns ===
  
  /// 设置grid列数 - grid-cols-1 到 grid-cols-12
  GridBuilder gridCols1() => gridCols(1);
  GridBuilder gridCols2() => gridCols(2);
  GridBuilder gridCols3() => gridCols(3);
  GridBuilder gridCols4() => gridCols(4);
  GridBuilder gridCols5() => gridCols(5);
  GridBuilder gridCols6() => gridCols(6);
  GridBuilder gridCols7() => gridCols(7);
  GridBuilder gridCols8() => gridCols(8);
  GridBuilder gridCols9() => gridCols(9);
  GridBuilder gridCols10() => gridCols(10);
  GridBuilder gridCols11() => gridCols(11);
  GridBuilder gridCols12() => gridCols(12);
  
  /// 设置自定义grid列数
  GridBuilder gridCols(int columns) {
    _templateColumns = columns;
    return this;
  }
  
  /// 设置grid列为none
  GridBuilder gridColsNone() {
    _templateColumns = null;
    return this;
  }
  
  /// 设置grid列为subgrid
  GridBuilder gridColsSubgrid() {
    _templateColumns = null;
    return this;
  }
  
  /// 设置自定义grid模板列
  GridBuilder gridTemplateColumns(String template) {
    _templateColumns = null;
    // 未来版本将支持自定义模板
    return this;
  }
  
  // === Grid Template Rows ===
  
  /// 设置grid行数 - grid-rows-1 到 grid-rows-12
  GridBuilder gridRows1() => gridRows(1);
  GridBuilder gridRows2() => gridRows(2);
  GridBuilder gridRows3() => gridRows(3);
  GridBuilder gridRows4() => gridRows(4);
  GridBuilder gridRows5() => gridRows(5);
  GridBuilder gridRows6() => gridRows(6);
  GridBuilder gridRows7() => gridRows(7);
  GridBuilder gridRows8() => gridRows(8);
  GridBuilder gridRows9() => gridRows(9);
  GridBuilder gridRows10() => gridRows(10);
  GridBuilder gridRows11() => gridRows(11);
  GridBuilder gridRows12() => gridRows(12);
  
  /// 设置自定义grid行数
  GridBuilder gridRows(int rows) {
    _templateRows = rows;
    return this;
  }
  
  /// 设置grid行为none
  GridBuilder gridRowsNone() {
    _templateRows = null;
    return this;
  }
  
  /// 设置grid行为subgrid
  GridBuilder gridRowsSubgrid() {
    _templateRows = null;
    return this;
  }
  
  /// 设置自定义grid模板行
  GridBuilder gridTemplateRows(String template) {
    _templateRows = null;
    // 未来版本将支持自定义模板
    return this;
  }
  
  // === Grid Auto Flow ===
  
  /// 设置grid自动流向为行
  GridBuilder gridFlowRow() {
    // 未来版本将支持auto flow
    return this;
  }
  
  /// 设置grid自动流向为列
  GridBuilder gridFlowCol() {
    // 未来版本将支持auto flow
    return this;
  }
  
  /// 设置grid自动流向为行密集
  GridBuilder gridFlowRowDense() {
    // 未来版本将支持auto flow dense
    return this;
  }
  
  /// 设置grid自动流向为列密集
  GridBuilder gridFlowColDense() {
    // 未来版本将支持auto flow dense
    return this;
  }
  
  // === Grid Auto Columns ===
  
  /// 设置自动列宽为auto
  GridBuilder autoColsAuto() {
    // 未来版本将支持auto columns
    return this;
  }
  
  /// 设置自动列宽为min
  GridBuilder autoColsMin() {
    // 未来版本将支持auto columns
    return this;
  }
  
  /// 设置自动列宽为max
  GridBuilder autoColsMax() {
    // 未来版本将支持auto columns
    return this;
  }
  
  /// 设置自动列宽为fr
  GridBuilder autoColsFr() {
    // 未来版本将支持auto columns
    return this;
  }
  
  /// 设置自定义自动列宽
  GridBuilder autoCols(double width) {
    // 未来版本将支持auto columns
    return this;
  }
  
  // === Grid Auto Rows ===
  
  /// 设置自动行高为auto
  GridBuilder autoRowsAuto() {
    // 未来版本将支持auto rows
    return this;
  }
  
  /// 设置自动行高为min
  GridBuilder autoRowsMin() {
    // 未来版本将支持auto rows
    return this;
  }
  
  /// 设置自动行高为max
  GridBuilder autoRowsMax() {
    // 未来版本将支持auto rows
    return this;
  }
  
  /// 设置自动行高为fr
  GridBuilder autoRowsFr() {
    // 未来版本将支持auto rows
    return this;
  }
  
  /// 设置自定义自动行高
  GridBuilder autoRows(double height) {
    // 未来版本将支持auto rows
    return this;
  }
  
  // === Gap 间距 ===
  
  /// 设置grid间距
  GridBuilder gap(double gap) {
    _gap = gap;
    return this;
  }
  
  /// 设置grid列间距
  GridBuilder gapX(double gap) {
    _columnGap = gap;
    return this;
  }
  
  /// 设置grid行间距
  GridBuilder gapY(double gap) {
    _rowGap = gap;
    return this;
  }
  
  // 常用gap尺寸 - 基于4的倍数（Tailwind标准）
  GridBuilder gap0() => gap(0);
  GridBuilder gap1() => gap(4.0);   // gap-1 = 4px
  GridBuilder gap2() => gap(8.0);   // gap-2 = 8px  
  GridBuilder gap3() => gap(12.0);  // gap-3 = 12px
  GridBuilder gap4() => gap(16.0);  // gap-4 = 16px
  GridBuilder gap5() => gap(20.0);  // gap-5 = 20px
  GridBuilder gap6() => gap(24.0);  // gap-6 = 24px
  GridBuilder gap8() => gap(32.0);  // gap-8 = 32px
  GridBuilder gap10() => gap(40.0); // gap-10 = 40px
  GridBuilder gap12() => gap(48.0); // gap-12 = 48px
  GridBuilder gap16() => gap(64.0); // gap-16 = 64px
  GridBuilder gap20() => gap(80.0); // gap-20 = 80px
  GridBuilder gap24() => gap(96.0); // gap-24 = 96px
  GridBuilder gap32() => gap(128.0); // gap-32 = 128px
  
  // 常用gapX尺寸
  GridBuilder gapX0() => gapX(0);
  GridBuilder gapX1() => gapX(4.0);
  GridBuilder gapX2() => gapX(8.0);
  GridBuilder gapX3() => gapX(12.0);
  GridBuilder gapX4() => gapX(16.0);
  GridBuilder gapX5() => gapX(20.0);
  GridBuilder gapX6() => gapX(24.0);
  GridBuilder gapX8() => gapX(32.0);
  
  // 常用gapY尺寸
  GridBuilder gapY0() => gapY(0);
  GridBuilder gapY1() => gapY(4.0);
  GridBuilder gapY2() => gapY(8.0);
  GridBuilder gapY3() => gapY(12.0);
  GridBuilder gapY4() => gapY(16.0);
  GridBuilder gapY5() => gapY(20.0);
  GridBuilder gapY6() => gapY(24.0);
  GridBuilder gapY8() => gapY(32.0);
  
  // === Justify Content (主轴对齐) ===
  
  GridBuilder justifyStart() {
    _justifyContent = MainAxisAlignment.start;
    return this;
  }
  
  GridBuilder justifyEnd() {
    _justifyContent = MainAxisAlignment.end;
    return this;
  }
  
  GridBuilder justifyCenter() {
    _justifyContent = MainAxisAlignment.center;
    return this;
  }
  
  GridBuilder justifyBetween() {
    _justifyContent = MainAxisAlignment.spaceBetween;
    return this;
  }
  
  GridBuilder justifyAround() {
    _justifyContent = MainAxisAlignment.spaceAround;
    return this;
  }
  
  GridBuilder justifyEvenly() {
    _justifyContent = MainAxisAlignment.spaceEvenly;
    return this;
  }
  
  // === Align Content (交叉轴对齐) ===
  
  GridBuilder contentStart() {
    _alignContent = CrossAxisAlignment.start;
    return this;
  }
  
  GridBuilder contentEnd() {
    _alignContent = CrossAxisAlignment.end;
    return this;
  }
  
  GridBuilder contentCenter() {
    _alignContent = CrossAxisAlignment.center;
    return this;
  }
  
  GridBuilder contentStretch() {
    _alignContent = CrossAxisAlignment.stretch;
    return this;
  }
  
  // === Justify Items (grid items主轴对齐) ===
  
  GridBuilder justifyItemsStart() {
    _justifyItems = MainAxisAlignment.start;
    return this;
  }
  
  GridBuilder justifyItemsEnd() {
    _justifyItems = MainAxisAlignment.end;
    return this;
  }
  
  GridBuilder justifyItemsCenter() {
    _justifyItems = MainAxisAlignment.center;
    return this;
  }
  
  GridBuilder justifyItemsStretch() {
    _justifyItems = MainAxisAlignment.spaceBetween; // 用作stretch的替代
    return this;
  }
  
  // === Align Items (grid items交叉轴对齐) ===
  
  GridBuilder alignItemsStart() {
    _alignItems = CrossAxisAlignment.start;
    return this;
  }
  
  GridBuilder alignItemsEnd() {
    _alignItems = CrossAxisAlignment.end;
    return this;
  }
  
  GridBuilder alignItemsCenter() {
    _alignItems = CrossAxisAlignment.center;
    return this;
  }
  
  GridBuilder alignItemsStretch() {
    _alignItems = CrossAxisAlignment.stretch;
    return this;
  }
  
  // === Place Content (justify-content + align-content 简写) ===
  
  GridBuilder placeContentStart() {
    return justifyStart().contentStart();
  }
  
  GridBuilder placeContentEnd() {
    return justifyEnd().contentEnd();
  }
  
  GridBuilder placeContentCenter() {
    return justifyCenter().contentCenter();
  }
  
  GridBuilder placeContentBetween() {
    return justifyBetween().contentStart();
  }
  
  GridBuilder placeContentAround() {
    return justifyAround().contentStart();
  }
  
  GridBuilder placeContentEvenly() {
    return justifyEvenly().contentStart();
  }
  
  GridBuilder placeContentStretch() {
    return justifyStart().contentStretch();
  }
  
  // === Place Items (justify-items + align-items 简写) ===
  
  GridBuilder placeItemsStart() {
    return justifyItemsStart().alignItemsStart();
  }
  
  GridBuilder placeItemsEnd() {
    return justifyItemsEnd().alignItemsEnd();
  }
  
  GridBuilder placeItemsCenter() {
    return justifyItemsCenter().alignItemsCenter();
  }
  
  GridBuilder placeItemsStretch() {
    return justifyItemsStretch().alignItemsStretch();
  }
  
  /// 构建Grid组件
  Widget build() {
    // 处理grid items的位置信息
    List<_GridItemInfo> gridItems = _buildGridItems();
    
    // 计算实际的列数
    int actualColumns = _calculateColumns(gridItems);
    
    // 使用Wrap或者简单的GridView来实现基础grid功能
    if (_hasComplexGridPositioning(gridItems)) {
      // 对于复杂的grid定位，使用Stack + Positioned
      return _buildComplexGrid(gridItems, actualColumns);
    } else {
      // 对于简单的grid，使用GridView
      return _buildSimpleGrid(gridItems, actualColumns);
    }
  }
  
  /// 检查是否有复杂的grid定位
  bool _hasComplexGridPositioning(List<_GridItemInfo> items) {
    return items.any((item) => 
      item.colStart != null || 
      item.colEnd != null || 
      item.rowStart != null || 
      item.rowEnd != null ||
      (item.colSpan != null && item.colSpan! > 1) ||
      (item.rowSpan != null && item.rowSpan! > 1)
    );
  }
  
  /// 构建简单Grid
  Widget _buildSimpleGrid(List<_GridItemInfo> gridItems, int actualColumns) {
    return GridView.count(
      crossAxisCount: actualColumns,
      mainAxisSpacing: _getMainAxisSpacing(),
      crossAxisSpacing: _getCrossAxisSpacing(),
      childAspectRatio: 1.0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: gridItems.map((item) => _buildGridItem(item)).toList(),
    );
  }
  
  /// 构建复杂Grid（使用Column + Row组合）
  Widget _buildComplexGrid(List<_GridItemInfo> gridItems, int actualColumns) {
    // 创建grid矩阵
    List<List<Widget?>> gridMatrix = _createGridMatrix(gridItems, actualColumns);
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: _getCrossAxisAlignment(),
      mainAxisAlignment: _getMainAxisAlignment(),
      children: gridMatrix.map((row) => _buildGridRow(row)).toList(),
    );
  }
  
  /// 创建grid矩阵
  List<List<Widget?>> _createGridMatrix(List<_GridItemInfo> gridItems, int columns) {
    // 计算需要的行数
    int maxRow = _calculateRows(gridItems);
    
    // 初始化矩阵
    List<List<Widget?>> matrix = List.generate(
      maxRow, 
      (index) => List.filled(columns, null),
    );
    
    // 填充矩阵
    for (var item in gridItems) {
      _placeItemInMatrix(matrix, item, columns);
    }
    
    return matrix;
  }
  
  /// 在矩阵中放置item
  void _placeItemInMatrix(List<List<Widget?>> matrix, _GridItemInfo item, int columns) {
    int startRow = (item.rowStart ?? 1) - 1;
    int startCol = (item.colStart ?? 1) - 1;
    int rowSpan = item.rowSpan ?? 1;
    int colSpan = item.colSpan ?? 1;
    
    // 确保不超出边界
    startRow = startRow.clamp(0, matrix.length - 1);
    startCol = startCol.clamp(0, columns - 1);
    
    // 如果没有指定位置，找第一个空位置
    if (item.rowStart == null && item.colStart == null) {
      bool placed = false;
      for (int r = 0; r < matrix.length && !placed; r++) {
        for (int c = 0; c < columns && !placed; c++) {
          if (matrix[r][c] == null) {
            startRow = r;
            startCol = c;
            placed = true;
          }
        }
      }
    }
    
    // 放置item（考虑span）
    for (int r = startRow; r < startRow + rowSpan && r < matrix.length; r++) {
      for (int c = startCol; c < startCol + colSpan && c < columns; c++) {
        if (r == startRow && c == startCol) {
          // 主要位置放置实际widget
          matrix[r][c] = _buildGridItem(item);
        } else {
          // 其他位置放置占位符
          matrix[r][c] = const SizedBox.shrink();
        }
      }
    }
  }
  
  /// 构建grid行
  Widget _buildGridRow(List<Widget?> row) {
    return Padding(
      padding: EdgeInsets.only(bottom: _getMainAxisSpacing()),
      child: Row(
        mainAxisAlignment: _getRowMainAxisAlignment(),
        crossAxisAlignment: _getRowCrossAxisAlignment(),
        children: row.map((widget) {
          if (widget == null) {
            return Expanded(child: Container());
          }
          return Expanded(child: widget);
        }).toList(),
      ),
    );
  }
  
  /// 获取主轴对齐方式
  MainAxisAlignment _getMainAxisAlignment() {
    switch (_alignContent) {
      case CrossAxisAlignment.start:
        return MainAxisAlignment.start;
      case CrossAxisAlignment.end:
        return MainAxisAlignment.end;
      case CrossAxisAlignment.center:
        return MainAxisAlignment.center;
      case CrossAxisAlignment.stretch:
        return MainAxisAlignment.spaceBetween;
      default:
        return MainAxisAlignment.start;
    }
  }
  
  /// 获取交叉轴对齐方式
  CrossAxisAlignment _getCrossAxisAlignment() {
    switch (_justifyContent) {
      case MainAxisAlignment.start:
        return CrossAxisAlignment.start;
      case MainAxisAlignment.end:
        return CrossAxisAlignment.end;
      case MainAxisAlignment.center:
        return CrossAxisAlignment.center;
      case MainAxisAlignment.spaceBetween:
        return CrossAxisAlignment.stretch;
      default:
        return CrossAxisAlignment.start;
    }
  }
  
  /// 获取行的主轴对齐方式
  MainAxisAlignment _getRowMainAxisAlignment() {
    return _justifyContent;
  }
  
  /// 获取行的交叉轴对齐方式
  CrossAxisAlignment _getRowCrossAxisAlignment() {
    return _alignItems;
  }
  
  /// 处理grid items的位置信息
  List<_GridItemInfo> _buildGridItems() {
    List<_GridItemInfo> items = [];
    
    for (int i = 0; i < children.length; i++) {
      Widget child = children[i];
      
      if (child is GridItemWidget) {
        items.add(_GridItemInfo(
          widget: child.child,
          colSpan: child.colSpan,
          colStart: child.colStart,
          colEnd: child.colEnd,
          rowSpan: child.rowSpan,
          rowStart: child.rowStart,
          rowEnd: child.rowEnd,
          originalIndex: i,
        ));
      } else {
        items.add(_GridItemInfo(
          widget: child,
          originalIndex: i,
        ));
      }
    }
    
    return items;
  }
  
  /// 计算实际列数
  int _calculateColumns(List<_GridItemInfo> items) {
    if (_templateColumns != null) {
      return _templateColumns!;
    }
    
    // 根据grid items计算需要的列数
    int maxColumns = 1;
    for (var item in items) {
      if (item.colEnd != null) {
        maxColumns = maxColumns > item.colEnd! ? maxColumns : item.colEnd!;
      } else if (item.colStart != null && item.colSpan != null) {
        int endCol = item.colStart! + item.colSpan! - 1;
        maxColumns = maxColumns > endCol ? maxColumns : endCol;
      } else if (item.colSpan != null) {
        maxColumns = maxColumns > item.colSpan! ? maxColumns : item.colSpan!;
      }
    }
    
    return maxColumns > 12 ? 12 : maxColumns; // 限制最大12列
  }
  
  /// 计算实际行数
  int _calculateRows(List<_GridItemInfo> items) {
    if (_templateRows != null) {
      return _templateRows!;
    }
    
    // 根据grid items计算需要的行数
    int maxRows = 1;
    for (var item in items) {
      if (item.rowEnd != null) {
        maxRows = maxRows > item.rowEnd! ? maxRows : item.rowEnd!;
      } else if (item.rowStart != null && item.rowSpan != null) {
        int endRow = item.rowStart! + item.rowSpan! - 1;
        maxRows = maxRows > endRow ? maxRows : endRow;
      } else if (item.rowSpan != null) {
        maxRows = maxRows > item.rowSpan! ? maxRows : item.rowSpan!;
      }
    }
    
    return maxRows;
  }
  
  /// 获取主轴间距
  double _getMainAxisSpacing() {
    if (_rowGap != null) return _rowGap!;
    if (_gap != null) return _gap!;
    return 0.0;
  }
  
  /// 获取交叉轴间距
  double _getCrossAxisSpacing() {
    if (_columnGap != null) return _columnGap!;
    if (_gap != null) return _gap!;
    return 0.0;
  }
  
  /// 构建单个grid item
  Widget _buildGridItem(_GridItemInfo item) {
    Widget child = item.widget;
    
    // 应用对齐方式
    if (_alignItems != CrossAxisAlignment.start || _justifyItems != MainAxisAlignment.start) {
      child = Align(
        alignment: _getItemAlignment(),
        child: child,
      );
    }
    
    return child;
  }
  
  /// 获取item对齐方式
  Alignment _getItemAlignment() {
    double x = 0.0; // 默认左对齐
    double y = 0.0; // 默认顶对齐
    
    // 水平对齐
    switch (_justifyItems) {
      case MainAxisAlignment.start:
        x = -1.0;
        break;
      case MainAxisAlignment.center:
        x = 0.0;
        break;
      case MainAxisAlignment.end:
        x = 1.0;
        break;
      default:
        x = -1.0;
    }
    
    // 垂直对齐
    switch (_alignItems) {
      case CrossAxisAlignment.start:
        y = -1.0;
        break;
      case CrossAxisAlignment.center:
        y = 0.0;
        break;
      case CrossAxisAlignment.end:
        y = 1.0;
        break;
      default:
        y = -1.0;
    }
    
    return Alignment(x, y);
  }
  
  /// 转换为ContainerBuilder，添加视觉样式
  ContainerBuilder asContainer() {
    return ContainerBuilder(build());
  }
}

/// List&lt;Widget&gt; 到 GridBuilder 的转换扩展
extension ListWidgetToGridBuilder on List<Widget> {
  /// 将 List&lt;Widget&gt; 转换为 GridBuilder，开始Grid布局链式调用
  GridBuilder asGrid() {
    return GridBuilder(this);
  }
}

/// 为 GridBuilder 添加交互扩展
extension GridBuilderInteraction on GridBuilder {
  /// 添加点击事件，自动构建 Grid 并包装 GestureDetector
  Widget onTap(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: build(), // 自动调用build()
    );
  }
}
