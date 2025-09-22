import 'package:flutter/material.dart';

/// Tailwind CSS Grid Column utilities for Flutter
/// Utilities for controlling how elements are sized and placed across grid columns.
extension GridColumnExt on Widget {
  
  // === Grid Column Start/End utilities ===
  
  /// col-auto -> grid-column: auto;
  Widget colAuto() => _GridColumnWrapper(
    columnStart: null,
    columnEnd: null,
    span: null,
    child: this,
  );
  
  /// col-span-1 -> grid-column: span 1 / span 1;
  Widget colSpan1() => _GridColumnWrapper(span: 1, child: this);
  
  /// col-span-2 -> grid-column: span 2 / span 2;
  Widget colSpan2() => _GridColumnWrapper(span: 2, child: this);
  
  /// col-span-3 -> grid-column: span 3 / span 3;
  Widget colSpan3() => _GridColumnWrapper(span: 3, child: this);
  
  /// col-span-4 -> grid-column: span 4 / span 4;
  Widget colSpan4() => _GridColumnWrapper(span: 4, child: this);
  
  /// col-span-5 -> grid-column: span 5 / span 5;
  Widget colSpan5() => _GridColumnWrapper(span: 5, child: this);
  
  /// col-span-6 -> grid-column: span 6 / span 6;
  Widget colSpan6() => _GridColumnWrapper(span: 6, child: this);
  
  /// col-span-7 -> grid-column: span 7 / span 7;
  Widget colSpan7() => _GridColumnWrapper(span: 7, child: this);
  
  /// col-span-8 -> grid-column: span 8 / span 8;
  Widget colSpan8() => _GridColumnWrapper(span: 8, child: this);
  
  /// col-span-9 -> grid-column: span 9 / span 9;
  Widget colSpan9() => _GridColumnWrapper(span: 9, child: this);
  
  /// col-span-10 -> grid-column: span 10 / span 10;
  Widget colSpan10() => _GridColumnWrapper(span: 10, child: this);
  
  /// col-span-11 -> grid-column: span 11 / span 11;
  Widget colSpan11() => _GridColumnWrapper(span: 11, child: this);
  
  /// col-span-12 -> grid-column: span 12 / span 12;
  Widget colSpan12() => _GridColumnWrapper(span: 12, child: this);
  
  /// col-span-full -> grid-column: 1 / -1;
  Widget colSpanFull() => _GridColumnWrapper(
    columnStart: 1,
    columnEnd: -1,
    child: this,
  );
  
  // === Grid Column Start utilities ===
  
  /// col-start-1 -> grid-column-start: 1;
  Widget colStart1() => _GridColumnWrapper(columnStart: 1, child: this);
  
  /// col-start-2 -> grid-column-start: 2;
  Widget colStart2() => _GridColumnWrapper(columnStart: 2, child: this);
  
  /// col-start-3 -> grid-column-start: 3;
  Widget colStart3() => _GridColumnWrapper(columnStart: 3, child: this);
  
  /// col-start-4 -> grid-column-start: 4;
  Widget colStart4() => _GridColumnWrapper(columnStart: 4, child: this);
  
  /// col-start-5 -> grid-column-start: 5;
  Widget colStart5() => _GridColumnWrapper(columnStart: 5, child: this);
  
  /// col-start-6 -> grid-column-start: 6;
  Widget colStart6() => _GridColumnWrapper(columnStart: 6, child: this);
  
  /// col-start-7 -> grid-column-start: 7;
  Widget colStart7() => _GridColumnWrapper(columnStart: 7, child: this);
  
  /// col-start-8 -> grid-column-start: 8;
  Widget colStart8() => _GridColumnWrapper(columnStart: 8, child: this);
  
  /// col-start-9 -> grid-column-start: 9;
  Widget colStart9() => _GridColumnWrapper(columnStart: 9, child: this);
  
  /// col-start-10 -> grid-column-start: 10;
  Widget colStart10() => _GridColumnWrapper(columnStart: 10, child: this);
  
  /// col-start-11 -> grid-column-start: 11;
  Widget colStart11() => _GridColumnWrapper(columnStart: 11, child: this);
  
  /// col-start-12 -> grid-column-start: 12;
  Widget colStart12() => _GridColumnWrapper(columnStart: 12, child: this);
  
  /// col-start-13 -> grid-column-start: 13;
  Widget colStart13() => _GridColumnWrapper(columnStart: 13, child: this);
  
  /// col-start-auto -> grid-column-start: auto;
  Widget colStartAuto() => _GridColumnWrapper(columnStart: null, child: this);
  
  // === Grid Column End utilities ===
  
  /// col-end-1 -> grid-column-end: 1;
  Widget colEnd1() => _GridColumnWrapper(columnEnd: 1, child: this);
  
  /// col-end-2 -> grid-column-end: 2;
  Widget colEnd2() => _GridColumnWrapper(columnEnd: 2, child: this);
  
  /// col-end-3 -> grid-column-end: 3;
  Widget colEnd3() => _GridColumnWrapper(columnEnd: 3, child: this);
  
  /// col-end-4 -> grid-column-end: 4;
  Widget colEnd4() => _GridColumnWrapper(columnEnd: 4, child: this);
  
  /// col-end-5 -> grid-column-end: 5;
  Widget colEnd5() => _GridColumnWrapper(columnEnd: 5, child: this);
  
  /// col-end-6 -> grid-column-end: 6;
  Widget colEnd6() => _GridColumnWrapper(columnEnd: 6, child: this);
  
  /// col-end-7 -> grid-column-end: 7;
  Widget colEnd7() => _GridColumnWrapper(columnEnd: 7, child: this);
  
  /// col-end-8 -> grid-column-end: 8;
  Widget colEnd8() => _GridColumnWrapper(columnEnd: 8, child: this);
  
  /// col-end-9 -> grid-column-end: 9;
  Widget colEnd9() => _GridColumnWrapper(columnEnd: 9, child: this);
  
  /// col-end-10 -> grid-column-end: 10;
  Widget colEnd10() => _GridColumnWrapper(columnEnd: 10, child: this);
  
  /// col-end-11 -> grid-column-end: 11;
  Widget colEnd11() => _GridColumnWrapper(columnEnd: 11, child: this);
  
  /// col-end-12 -> grid-column-end: 12;
  Widget colEnd12() => _GridColumnWrapper(columnEnd: 12, child: this);
  
  /// col-end-13 -> grid-column-end: 13;
  Widget colEnd13() => _GridColumnWrapper(columnEnd: 13, child: this);
  
  /// col-end-auto -> grid-column-end: auto;
  Widget colEndAuto() => _GridColumnWrapper(columnEnd: null, child: this);
  
  // === 自定义方法 ===
  
  /// 自定义列跨度
  Widget colSpan(int span) => _GridColumnWrapper(span: span, child: this);
  
  /// 自定义列开始位置
  Widget colStart(int start) => _GridColumnWrapper(columnStart: start, child: this);
  
  /// 自定义列结束位置
  Widget colEnd(int end) => _GridColumnWrapper(columnEnd: end, child: this);
  
  /// 完全自定义列位置
  Widget colCustom({int? start, int? end, int? span}) => _GridColumnWrapper(
    columnStart: start,
    columnEnd: end,
    span: span,
    child: this,
  );
}

/// Grid Column包装器，用于标记列信息
class _GridColumnWrapper extends StatelessWidget {
  final int? columnStart;
  final int? columnEnd;
  final int? span;
  final Widget child;
  
  const _GridColumnWrapper({
    this.columnStart,
    this.columnEnd,
    this.span,
    required this.child,
  });
  
  @override
  Widget build(BuildContext context) {
    // 在实际的Grid容器中，这些信息会被用来调整Widget的位置
    return child;
  }
}

/// Grid Column工具类
class GridColumn {
  /// 自动列
  static Widget auto(Widget child) => child.colAuto();
  
  /// 跨度1列
  static Widget span1(Widget child) => child.colSpan1();
  
  /// 跨度2列
  static Widget span2(Widget child) => child.colSpan2();
  
  /// 跨度3列
  static Widget span3(Widget child) => child.colSpan3();
  
  /// 跨度4列
  static Widget span4(Widget child) => child.colSpan4();
  
  /// 跨度5列
  static Widget span5(Widget child) => child.colSpan5();
  
  /// 跨度6列
  static Widget span6(Widget child) => child.colSpan6();
  
  /// 跨度全部列
  static Widget spanFull(Widget child) => child.colSpanFull();
  
  /// 自定义跨度
  static Widget span(Widget child, int span) => child.colSpan(span);
  
  /// 列开始位置1
  static Widget start1(Widget child) => child.colStart1();
  
  /// 列开始位置2
  static Widget start2(Widget child) => child.colStart2();
  
  /// 列开始位置3
  static Widget start3(Widget child) => child.colStart3();
  
  /// 自定义列开始位置
  static Widget start(Widget child, int start) => child.colStart(start);
  
  /// 列结束位置1
  static Widget end1(Widget child) => child.colEnd1();
  
  /// 列结束位置2
  static Widget end2(Widget child) => child.colEnd2();
  
  /// 列结束位置3
  static Widget end3(Widget child) => child.colEnd3();
  
  /// 自定义列结束位置
  static Widget end(Widget child, int end) => child.colEnd(end);
  
  /// 完全自定义
  static Widget custom(
    Widget child, {
    int? start,
    int? end,
    int? span,
  }) => child.colCustom(start: start, end: end, span: span);
}
