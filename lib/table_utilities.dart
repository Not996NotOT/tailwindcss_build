import 'package:flutter/material.dart';

/// Tailwind CSS Table utilities for Flutter
/// Utilities for styling tables.
extension TableUtilitiesExt on Widget {
  
  // === Border Collapse ===
  
  /// border-collapse -> border-collapse: collapse;
  /// 表格边框合并
  Widget borderCollapse() {
    if (this is Table) {
      final table = this as Table;
      return Table(
        border: table.border != null ? TableBorder(
          top: table.border!.top,
          right: table.border!.right,
          bottom: table.border!.bottom,
          left: table.border!.left,
          horizontalInside: BorderSide.none,
          verticalInside: BorderSide.none,
        ) : null,
        children: table.children,
        columnWidths: table.columnWidths,
        defaultColumnWidth: table.defaultColumnWidth,
        textDirection: table.textDirection,
        defaultVerticalAlignment: table.defaultVerticalAlignment,
        textBaseline: table.textBaseline,
      );
    }
    return this;
  }
  
  /// border-separate -> border-collapse: separate;
  /// 表格边框分离（默认）
  Widget borderSeparate() => this;

  // === Border Spacing ===
  
  /// border-spacing-0 -> border-spacing: 0px;
  Widget borderSpacing0() => _tableWithBorderSpacing(0);
  
  /// border-spacing-px -> border-spacing: 1px;
  Widget borderSpacingPx() => _tableWithBorderSpacing(1);
  
  /// border-spacing-0.5 -> border-spacing: 0.125rem; (2px)
  Widget borderSpacing05() => _tableWithBorderSpacing(2);
  
  /// border-spacing-1 -> border-spacing: 0.25rem; (4px)
  Widget borderSpacing1() => _tableWithBorderSpacing(4);
  
  /// border-spacing-1.5 -> border-spacing: 0.375rem; (6px)
  Widget borderSpacing15() => _tableWithBorderSpacing(6);
  
  /// border-spacing-2 -> border-spacing: 0.5rem; (8px)
  Widget borderSpacing2() => _tableWithBorderSpacing(8);
  
  /// border-spacing-2.5 -> border-spacing: 0.625rem; (10px)
  Widget borderSpacing25() => _tableWithBorderSpacing(10);
  
  /// border-spacing-3 -> border-spacing: 0.75rem; (12px)
  Widget borderSpacing3() => _tableWithBorderSpacing(12);
  
  /// border-spacing-3.5 -> border-spacing: 0.875rem; (14px)
  Widget borderSpacing35() => _tableWithBorderSpacing(14);
  
  /// border-spacing-4 -> border-spacing: 1rem; (16px)
  Widget borderSpacing4() => _tableWithBorderSpacing(16);
  
  /// border-spacing-5 -> border-spacing: 1.25rem; (20px)
  Widget borderSpacing5() => _tableWithBorderSpacing(20);
  
  /// border-spacing-6 -> border-spacing: 1.5rem; (24px)
  Widget borderSpacing6() => _tableWithBorderSpacing(24);
  
  /// border-spacing-8 -> border-spacing: 2rem; (32px)
  Widget borderSpacing8() => _tableWithBorderSpacing(32);
  
  /// border-spacing-10 -> border-spacing: 2.5rem; (40px)
  Widget borderSpacing10() => _tableWithBorderSpacing(40);
  
  /// border-spacing-12 -> border-spacing: 3rem; (48px)
  Widget borderSpacing12() => _tableWithBorderSpacing(48);
  
  /// border-spacing-16 -> border-spacing: 4rem; (64px)
  Widget borderSpacing16() => _tableWithBorderSpacing(64);
  
  /// border-spacing-20 -> border-spacing: 5rem; (80px)
  Widget borderSpacing20() => _tableWithBorderSpacing(80);
  
  /// border-spacing-24 -> border-spacing: 6rem; (96px)
  Widget borderSpacing24() => _tableWithBorderSpacing(96);

  // === Table Layout ===
  
  /// table-auto -> table-layout: auto;
  /// 自动表格布局（默认）
  Widget tableAuto() => this;
  
  /// table-fixed -> table-layout: fixed;
  /// 固定表格布局
  Widget tableFixed() {
    if (this is Table) {
      final table = this as Table;
      return Table(
        columnWidths: table.columnWidths ?? {
          for (int i = 0; i < (table.children.isNotEmpty ? table.children.first.children.length : 0); i++)
            i: const FlexColumnWidth(1.0),
        },
        defaultColumnWidth: const FlexColumnWidth(1.0),
        border: table.border,
        children: table.children,
        textDirection: table.textDirection,
        defaultVerticalAlignment: table.defaultVerticalAlignment,
        textBaseline: table.textBaseline,
      );
    }
    return this;
  }

  // === Caption Side ===
  
  /// caption-top -> caption-side: top;
  /// 表格标题在顶部
  Widget captionTop() => this;
  
  /// caption-bottom -> caption-side: bottom;
  /// 表格标题在底部
  Widget captionBottom() => this;

  // === Custom table utilities ===
  
  /// 自定义边框间距
  Widget customBorderSpacing(double spacing) => _tableWithBorderSpacing(spacing);
  
  /// 自定义表格边框
  Widget tableWithBorder({
    BorderSide? top,
    BorderSide? right,
    BorderSide? bottom,
    BorderSide? left,
    BorderSide? horizontalInside,
    BorderSide? verticalInside,
  }) {
    if (this is Table) {
      final table = this as Table;
      return Table(
        border: TableBorder(
          top: top ?? table.border?.top ?? BorderSide.none,
          right: right ?? table.border?.right ?? BorderSide.none,
          bottom: bottom ?? table.border?.bottom ?? BorderSide.none,
          left: left ?? table.border?.left ?? BorderSide.none,
          horizontalInside: horizontalInside ?? table.border?.horizontalInside ?? BorderSide.none,
          verticalInside: verticalInside ?? table.border?.verticalInside ?? BorderSide.none,
        ),
        children: table.children,
        columnWidths: table.columnWidths,
        defaultColumnWidth: table.defaultColumnWidth,
        textDirection: table.textDirection,
        defaultVerticalAlignment: table.defaultVerticalAlignment,
        textBaseline: table.textBaseline,
      );
    }
    return this;
  }

  // === Table styling shortcuts ===
  
  /// 完整边框表格
  Widget tableWithFullBorder({
    Color color = Colors.grey,
    double width = 1.0,
  }) => tableWithBorder(
    top: BorderSide(color: color, width: width),
    right: BorderSide(color: color, width: width),
    bottom: BorderSide(color: color, width: width),
    left: BorderSide(color: color, width: width),
    horizontalInside: BorderSide(color: color, width: width),
    verticalInside: BorderSide(color: color, width: width),
  );
  
  /// 外边框表格
  Widget tableWithOuterBorder({
    Color color = Colors.grey,
    double width = 1.0,
  }) => tableWithBorder(
    top: BorderSide(color: color, width: width),
    right: BorderSide(color: color, width: width),
    bottom: BorderSide(color: color, width: width),
    left: BorderSide(color: color, width: width),
  );
  
  /// 水平分隔线表格
  Widget tableWithHorizontalBorders({
    Color color = Colors.grey,
    double width = 1.0,
  }) => tableWithBorder(
    horizontalInside: BorderSide(color: color, width: width),
  );
  
  /// 垂直分隔线表格
  Widget tableWithVerticalBorders({
    Color color = Colors.grey,
    double width = 1.0,
  }) => tableWithBorder(
    verticalInside: BorderSide(color: color, width: width),
  );

  // === Helper method ===
  
  Widget _tableWithBorderSpacing(double spacing) {
    if (this is Table) {
      final table = this as Table;
      return Padding(
        padding: EdgeInsets.all(spacing / 2),
        child: Table(
          border: table.border,
          children: table.children.map((row) {
            return TableRow(
              children: row.children.map((cell) {
                return Padding(
                  padding: EdgeInsets.all(spacing / 2),
                  child: cell,
                );
              }).toList(),
            );
          }).toList(),
          columnWidths: table.columnWidths,
          defaultColumnWidth: table.defaultColumnWidth,
          textDirection: table.textDirection,
          defaultVerticalAlignment: table.defaultVerticalAlignment,
          textBaseline: table.textBaseline,
        ),
      );
    }
    return this;
  }
}

/// TableCell扩展，用于表格单元格样式
extension TableCellExt on Widget {
  
  /// 表格单元格样式
  Widget tableCell({
    TableCellVerticalAlignment? verticalAlignment,
  }) => TableCell(
    verticalAlignment: verticalAlignment ?? TableCellVerticalAlignment.middle,
    child: this,
  );
  
  /// 表格头部单元格
  Widget tableHeaderCell({
    Color? backgroundColor,
    FontWeight fontWeight = FontWeight.bold,
    TextAlign textAlign = TextAlign.center,
  }) => TableCell(
    child: Container(
      color: backgroundColor,
      padding: EdgeInsets.all(8),
      child: DefaultTextStyle(
        style: TextStyle(
          fontWeight: fontWeight,
        ),
        textAlign: textAlign,
        child: this,
      ),
    ),
  );
  
  /// 表格数据单元格
  Widget tableDataCell({
    Color? backgroundColor,
    TextAlign textAlign = TextAlign.left,
    EdgeInsets padding = const EdgeInsets.all(8),
  }) => TableCell(
    child: Container(
      color: backgroundColor,
      padding: padding,
      child: DefaultTextStyle(
        textAlign: textAlign,
        style: TextStyle(),
        child: this,
      ),
    ),
  );
}

/// 表格构建器帮助类
class TableBuilder {
  final List<TableRow> _rows = [];
  TableBorder? _border;
  Map<int, TableColumnWidth>? _columnWidths;
  TableColumnWidth _defaultColumnWidth = const FlexColumnWidth(1.0);
  
  /// 添加表格行
  TableBuilder addRow(List<Widget> cells) {
    _rows.add(TableRow(children: cells));
    return this;
  }
  
  /// 添加表格头部行
  TableBuilder addHeaderRow(List<String> headers, {
    Color? backgroundColor,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    final headerCells = headers.map((header) => 
      Text(header).tableHeaderCell(
        backgroundColor: backgroundColor,
        fontWeight: fontWeight,
      )
    ).toList();
    _rows.add(TableRow(children: headerCells));
    return this;
  }
  
  /// 添加数据行
  TableBuilder addDataRow(List<Widget> cells, {
    Color? backgroundColor,
    EdgeInsets padding = const EdgeInsets.all(8),
  }) {
    final dataCells = cells.map((cell) => 
      cell.tableDataCell(
        backgroundColor: backgroundColor,
        padding: padding,
      )
    ).toList();
    _rows.add(TableRow(children: dataCells));
    return this;
  }
  
  /// 设置边框
  TableBuilder withBorder(TableBorder border) {
    _border = border;
    return this;
  }
  
  /// 设置列宽
  TableBuilder withColumnWidths(Map<int, TableColumnWidth> columnWidths) {
    _columnWidths = columnWidths;
    return this;
  }
  
  /// 设置默认列宽
  TableBuilder withDefaultColumnWidth(TableColumnWidth columnWidth) {
    _defaultColumnWidth = columnWidth;
    return this;
  }
  
  /// 构建表格
  Table build() {
    return Table(
      border: _border,
      children: _rows,
      columnWidths: _columnWidths,
      defaultColumnWidth: _defaultColumnWidth,
    );
  }
}
