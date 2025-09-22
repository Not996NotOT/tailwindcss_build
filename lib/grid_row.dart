import 'package:flutter/material.dart';

/// Tailwind CSS Grid Row utilities for Flutter
/// Utilities for controlling how elements are sized and placed across grid rows.
extension GridRowExt on Widget {
  
  // === Grid Row Span utilities ===
  
  /// row-auto -> grid-row: auto;
  Widget rowAuto() => _GridRowWrapper(
    rowStart: null,
    rowEnd: null,
    span: null,
    child: this,
  );
  
  /// row-span-1 -> grid-row: span 1 / span 1;
  Widget rowSpan1() => _GridRowWrapper(span: 1, child: this);
  
  /// row-span-2 -> grid-row: span 2 / span 2;
  Widget rowSpan2() => _GridRowWrapper(span: 2, child: this);
  
  /// row-span-3 -> grid-row: span 3 / span 3;
  Widget rowSpan3() => _GridRowWrapper(span: 3, child: this);
  
  /// row-span-4 -> grid-row: span 4 / span 4;
  Widget rowSpan4() => _GridRowWrapper(span: 4, child: this);
  
  /// row-span-5 -> grid-row: span 5 / span 5;
  Widget rowSpan5() => _GridRowWrapper(span: 5, child: this);
  
  /// row-span-6 -> grid-row: span 6 / span 6;
  Widget rowSpan6() => _GridRowWrapper(span: 6, child: this);
  
  /// row-span-full -> grid-row: 1 / -1;
  Widget rowSpanFull() => _GridRowWrapper(
    rowStart: 1,
    rowEnd: -1,
    child: this,
  );
  
  // === Grid Row Start utilities ===
  
  /// row-start-1 -> grid-row-start: 1;
  Widget rowStart1() => _GridRowWrapper(rowStart: 1, child: this);
  
  /// row-start-2 -> grid-row-start: 2;
  Widget rowStart2() => _GridRowWrapper(rowStart: 2, child: this);
  
  /// row-start-3 -> grid-row-start: 3;
  Widget rowStart3() => _GridRowWrapper(rowStart: 3, child: this);
  
  /// row-start-4 -> grid-row-start: 4;
  Widget rowStart4() => _GridRowWrapper(rowStart: 4, child: this);
  
  /// row-start-5 -> grid-row-start: 5;
  Widget rowStart5() => _GridRowWrapper(rowStart: 5, child: this);
  
  /// row-start-6 -> grid-row-start: 6;
  Widget rowStart6() => _GridRowWrapper(rowStart: 6, child: this);
  
  /// row-start-7 -> grid-row-start: 7;
  Widget rowStart7() => _GridRowWrapper(rowStart: 7, child: this);
  
  /// row-start-auto -> grid-row-start: auto;
  Widget rowStartAuto() => _GridRowWrapper(rowStart: null, child: this);
  
  // === Grid Row End utilities ===
  
  /// row-end-1 -> grid-row-end: 1;
  Widget rowEnd1() => _GridRowWrapper(rowEnd: 1, child: this);
  
  /// row-end-2 -> grid-row-end: 2;
  Widget rowEnd2() => _GridRowWrapper(rowEnd: 2, child: this);
  
  /// row-end-3 -> grid-row-end: 3;
  Widget rowEnd3() => _GridRowWrapper(rowEnd: 3, child: this);
  
  /// row-end-4 -> grid-row-end: 4;
  Widget rowEnd4() => _GridRowWrapper(rowEnd: 4, child: this);
  
  /// row-end-5 -> grid-row-end: 5;
  Widget rowEnd5() => _GridRowWrapper(rowEnd: 5, child: this);
  
  /// row-end-6 -> grid-row-end: 6;
  Widget rowEnd6() => _GridRowWrapper(rowEnd: 6, child: this);
  
  /// row-end-7 -> grid-row-end: 7;
  Widget rowEnd7() => _GridRowWrapper(rowEnd: 7, child: this);
  
  /// row-end-auto -> grid-row-end: auto;
  Widget rowEndAuto() => _GridRowWrapper(rowEnd: null, child: this);
  
  // === 自定义方法 ===
  
  /// 自定义行跨度
  Widget rowSpan(int span) => _GridRowWrapper(span: span, child: this);
  
  /// 自定义行开始位置
  Widget rowStart(int start) => _GridRowWrapper(rowStart: start, child: this);
  
  /// 自定义行结束位置
  Widget rowEnd(int end) => _GridRowWrapper(rowEnd: end, child: this);
  
  /// 完全自定义行位置
  Widget rowCustom({int? start, int? end, int? span}) => _GridRowWrapper(
    rowStart: start,
    rowEnd: end,
    span: span,
    child: this,
  );
}

/// Grid Row包装器，用于标记行信息
class _GridRowWrapper extends StatelessWidget {
  final int? rowStart;
  final int? rowEnd;
  final int? span;
  final Widget child;
  
  const _GridRowWrapper({
    this.rowStart,
    this.rowEnd,
    this.span,
    required this.child,
  });
  
  @override
  Widget build(BuildContext context) {
    return child;
  }
}

/// Grid Row工具类
class GridRow {
  /// 自动行
  static Widget auto(Widget child) => child.rowAuto();
  
  /// 跨度1行
  static Widget span1(Widget child) => child.rowSpan1();
  
  /// 跨度2行
  static Widget span2(Widget child) => child.rowSpan2();
  
  /// 跨度3行
  static Widget span3(Widget child) => child.rowSpan3();
  
  /// 跨度全部行
  static Widget spanFull(Widget child) => child.rowSpanFull();
  
  /// 自定义跨度
  static Widget span(Widget child, int span) => child.rowSpan(span);
  
  /// 行开始位置1
  static Widget start1(Widget child) => child.rowStart1();
  
  /// 自定义行开始位置
  static Widget start(Widget child, int start) => child.rowStart(start);
  
  /// 行结束位置1
  static Widget end1(Widget child) => child.rowEnd1();
  
  /// 自定义行结束位置
  static Widget end(Widget child, int end) => child.rowEnd(end);
  
  /// 完全自定义
  static Widget custom(
    Widget child, {
    int? start,
    int? end,
    int? span,
  }) => child.rowCustom(start: start, end: end, span: span);
}
