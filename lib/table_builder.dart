import 'package:flutter/material.dart';

/// Table Builder - 用于创建表格布局的建造者类
/// 
/// A builder class for creating table layouts with Tailwind CSS-like utility methods.
/// 
/// Example:
/// ```dart
/// TableBuilder(
///   children: [
///     TableRow(children: [Text('Header 1'), Text('Header 2')]),
///     TableRow(children: [Text('Cell 1'), Text('Cell 2')]),
///   ],
/// )
///   .borderCollapse()
///   .borderSpacing(8.0)
///   .build()
/// ```
class TableBuilder {
  /// Table rows
  final List<TableRow> children;
  
  /// Column widths
  Map<int, TableColumnWidth>? _columnWidths;
  
  /// Default column width
  TableColumnWidth? _defaultColumnWidth;
  
  /// Text direction
  TextDirection? _textDirection;
  
  /// Border
  TableBorder? _border;
  
  /// Default vertical alignment
  TableCellVerticalAlignment _defaultVerticalAlignment = TableCellVerticalAlignment.top;
  
  /// Default alignment for cells
  TextBaseline? _textBaseline;
  
  /// Creates a [TableBuilder] with the given [children].
  TableBuilder({required this.children});
  
  /// border-collapse: collapse - 合并边框
  /// ⚠️ 部分支持：Flutter Table 不支持 borderCollapse 参数，通过 border 实现
  TableBuilder borderCollapse() {
    // 注意：Flutter Table 不支持 borderCollapse 参数
    // 可以通过设置 border 来实现类似效果
    return this;
  }
  
  /// border-collapse: separate - 分离边框
  /// ⚠️ 部分支持：Flutter Table 不支持 borderCollapse 参数
  TableBuilder borderSeparate() {
    // 注意：Flutter Table 不支持 borderCollapse 参数
    return this;
  }
  
  /// border-spacing: {value} - 设置边框间距
  /// ⚠️ 部分支持：Flutter Table 不支持 borderSpacing，使用 border 实现
  TableBuilder borderSpacing(double spacing) {
    // 注意：Flutter Table 不支持 borderSpacing，此方法仅作为占位符
    return this;
  }
  
  /// 设置列宽
  TableBuilder columnWidths(Map<int, TableColumnWidth> columnWidths) {
    _columnWidths = columnWidths;
    return this;
  }
  
  /// 设置默认列宽
  TableBuilder defaultColumnWidth(TableColumnWidth width) {
    _defaultColumnWidth = width;
    return this;
  }
  
  /// 设置文本方向
  TableBuilder textDirection(TextDirection direction) {
    _textDirection = direction;
    return this;
  }
  
  /// 设置边框
  TableBuilder border(TableBorder border) {
    _border = border;
    return this;
  }
  
  /// 设置默认垂直对齐
  TableBuilder defaultVerticalAlignment(TableCellVerticalAlignment alignment) {
    _defaultVerticalAlignment = alignment;
    return this;
  }
  
  /// 设置文本基线
  TableBuilder textBaseline(TextBaseline baseline) {
    _textBaseline = baseline;
    return this;
  }
  
  /// 构建 Table widget
  Table build() {
    // Flutter Table 不支持 borderCollapse 参数，通过 border 实现
    return Table(
      children: children,
      columnWidths: _columnWidths,
      defaultColumnWidth: _defaultColumnWidth ?? const FlexColumnWidth(1.0),
      textDirection: _textDirection,
      border: _border,
      defaultVerticalAlignment: _defaultVerticalAlignment,
      textBaseline: _textBaseline,
    );
  }
}

/// TableBuilder 扩展 - 添加便捷方法
extension TableBuilderExtensions on TableBuilder {
  /// 设置所有列宽为固定值
  TableBuilder fixedColumnWidths(double width) {
    final widths = <int, TableColumnWidth>{};
    if (children.isNotEmpty && children.first.children.isNotEmpty) {
      for (int i = 0; i < children.first.children.length; i++) {
        widths[i] = FixedColumnWidth(width);
      }
    }
    _columnWidths = widths;
    return this;
  }
  
  /// 设置所有列宽为弹性值
  TableBuilder flexColumnWidths(double flex) {
    final widths = <int, TableColumnWidth>{};
    if (children.isNotEmpty && children.first.children.isNotEmpty) {
      for (int i = 0; i < children.first.children.length; i++) {
        widths[i] = FlexColumnWidth(flex);
      }
    }
    _columnWidths = widths;
    return this;
  }
  
  /// 设置所有列宽为内容宽度
  TableBuilder intrinsicColumnWidths() {
    final widths = <int, TableColumnWidth>{};
    if (children.isNotEmpty && children.first.children.isNotEmpty) {
      for (int i = 0; i < children.first.children.length; i++) {
        widths[i] = IntrinsicColumnWidth();
      }
    }
    _columnWidths = widths;
    return this;
  }
  
  /// 设置所有列宽为最大内容宽度
  TableBuilder maxColumnWidths(double maxWidth) {
    final widths = <int, TableColumnWidth>{};
    if (children.isNotEmpty && children.first.children.isNotEmpty) {
      for (int i = 0; i < children.first.children.length; i++) {
        widths[i] = MaxColumnWidth(FixedColumnWidth(maxWidth), FlexColumnWidth(1.0));
      }
    }
    _columnWidths = widths;
    return this;
  }
  
  /// 设置所有列宽为最小内容宽度
  TableBuilder minColumnWidths(double minWidth) {
    final widths = <int, TableColumnWidth>{};
    if (children.isNotEmpty && children.first.children.isNotEmpty) {
      for (int i = 0; i < children.first.children.length; i++) {
        widths[i] = MinColumnWidth(FixedColumnWidth(minWidth), FlexColumnWidth(1.0));
      }
    }
    _columnWidths = widths;
    return this;
  }
  
  /// 设置边框颜色
  TableBuilder borderColor(Color color) {
    return border(TableBorder.all(color: color));
  }
  
  /// 设置边框宽度
  TableBuilder borderWidth(double width) {
    return border(TableBorder.all(width: width));
  }
  
  /// 设置边框圆角（通过自定义边框实现）
  TableBuilder borderRadius(double radius) {
    // Flutter Table 不支持圆角，但可以通过自定义实现
    // 这里提供一个占位符，实际使用时需要自定义 TableBorder
    return this;
  }
}
