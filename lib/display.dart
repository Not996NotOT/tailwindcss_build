import 'package:flutter/material.dart';

/// Tailwind CSS Display utilities for Flutter
/// Utilities for controlling the display box type of an element.
extension DisplayExt on Widget {
  
  // === Display utilities ===
  
  /// block -> display: block;
  /// 在Flutter中，大多数Widget默认为块级显示
  Widget block() => this;
  
  /// inline-block -> display: inline-block;
  /// 在Flutter中通过IntrinsicWidth来模拟
  Widget inlineBlock() => IntrinsicWidth(child: this);
  
  /// inline -> display: inline;
  /// 在Flutter中通过Text的内联样式来模拟
  Widget inline() => IntrinsicWidth(child: this);
  
  /// flex -> display: flex;
  /// 在Flutter中使用Flex容器 (重命名为displayFlex避免冲突)
  Widget displayFlex() => Flex(
    direction: Axis.horizontal,
    children: [this],
  );
  
  /// inline-flex -> display: inline-flex;
  /// 在Flutter中使用内联的Flex容器
  Widget inlineFlex() => IntrinsicWidth(
    child: Flex(
      direction: Axis.horizontal,
      children: [this],
    ),
  );
  
  /// table -> display: table;
  /// 在Flutter中使用Table布局
  Widget table() => Table(
    children: [
      TableRow(children: [this]),
    ],
  );
  
  /// inline-table -> display: inline-table;
  /// 在Flutter中使用内联的Table布局
  Widget inlineTable() => IntrinsicWidth(
    child: Table(
      children: [
        TableRow(children: [this]),
      ],
    ),
  );
  
  /// table-caption -> display: table-caption;
  Widget tableCaption() => this;
  
  /// table-cell -> display: table-cell;
  Widget tableCell() => TableCell(child: this);
  
  /// table-column -> display: table-column;
  Widget tableColumn() => this;
  
  /// table-column-group -> display: table-column-group;
  Widget tableColumnGroup() => this;
  
  /// table-footer-group -> display: table-footer-group;
  Widget tableFooterGroup() => this;
  
  /// table-header-group -> display: table-header-group;
  Widget tableHeaderGroup() => this;
  
  /// table-row-group -> display: table-row-group;
  Widget tableRowGroup() => this;
  
  /// table-row -> display: table-row;
  Widget tableRow() => Table(
    children: [TableRow(children: [this])],
  );
  
  /// flow-root -> display: flow-root;
  /// 在Flutter中创建新的格式化上下文
  Widget flowRoot() => Container(child: this);
  
  /// grid -> display: grid;
  /// 在Flutter中使用GridView
  Widget grid() => GridView.count(
    crossAxisCount: 1,
    shrinkWrap: true,
    children: [this],
  );
  
  /// inline-grid -> display: inline-grid;
  /// 在Flutter中使用内联的GridView
  Widget inlineGrid() => IntrinsicWidth(
    child: GridView.count(
      crossAxisCount: 1,
      shrinkWrap: true,
      children: [this],
    ),
  );
  
  /// contents -> display: contents;
  /// 在Flutter中直接返回子内容
  Widget contents() => this;
  
  /// list-item -> display: list-item;
  /// 在Flutter中使用ListTile
  Widget listItem() => ListTile(
    title: this,
  );
  
  /// hidden -> display: none;
  /// 在Flutter中使用Visibility或Offstage
  Widget hidden() => const SizedBox.shrink();
  
  /// invisible -> visibility: hidden; (占位但不可见)
  Widget invisible() => Visibility(
    visible: false,
    maintainSize: true,
    maintainAnimation: true,
    maintainState: true,
    child: this,
  );
  
  /// visible -> visibility: visible;
  Widget visible() => Visibility(
    visible: true,
    child: this,
  );
}

/// 用于多个Widget的display扩展
extension DisplayListExt on List<Widget> {
  
  /// 创建flex容器（水平）
  Widget displayFlex({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: this,
    );
  }
  
  /// 创建flex容器（垂直）
  Widget displayFlexColumn({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: this,
    );
  }
  
  /// 创建grid容器
  Widget displayGrid({
    int crossAxisCount = 2,
    double spacing = 0.0,
  }) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: this,
    );
  }
  
  /// 创建table容器
  Widget displayTable({
    int? columnWidths,
    TableBorder? border,
  }) {
    // 将widgets转换为table rows
    final rows = <TableRow>[];
    for (var i = 0; i < length; i += (columnWidths ?? length)) {
      final rowWidgets = take(columnWidths ?? length).toList();
      rows.add(TableRow(children: rowWidgets));
    }
    
    return Table(
      border: border,
      children: rows,
    );
  }
  
  /// 创建list容器
  Widget displayList() {
    return Column(
      children: map((widget) => widget.listItem()).toList(),
    );
  }
}

/// Display工具类
class Display {
  /// 隐藏元素
  static Widget hidden() => const SizedBox.shrink();
  
  /// 元素不可见但占位
  static Widget invisible(Widget child) => child.invisible();
  
  /// 元素可见
  static Widget visible(Widget child) => child.visible();
  
  /// 创建flex容器
  static Widget flex(List<Widget> children, {Axis direction = Axis.horizontal}) {
    return Flex(
      direction: direction,
      children: children,
    );
  }
  
  /// 创建grid容器
  static Widget grid(List<Widget> children, {int crossAxisCount = 2}) {
    return children.displayGrid(crossAxisCount: crossAxisCount);
  }
  
  /// 创建table容器
  static Widget table(List<Widget> children, {int? columns}) {
    return children.displayTable(columnWidths: columns);
  }
  
  /// 创建内联容器
  static Widget inline(Widget child) => child.inlineBlock();
  
  /// 创建块级容器
  static Widget block(Widget child) => child.block();
}
