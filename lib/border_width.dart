import 'package:flutter/material.dart';

/// Tailwind CSS Border Width utilities for Flutter
/// Utilities for controlling the width of an element's borders.
extension BorderWidthExt on Widget {
  
  // === Basic border width utilities ===
  
  /// border-0 -> border-width: 0px;
  Widget border0() => Container(
    decoration: BoxDecoration(border: Border.all(width: 0)),
    child: this,
  );
  
  /// border-2 -> border-width: 2px;
  Widget border2() => Container(
    decoration: BoxDecoration(border: Border.all(width: 2)),
    child: this,
  );
  
  /// border-4 -> border-width: 4px;
  Widget border4() => Container(
    decoration: BoxDecoration(border: Border.all(width: 4)),
    child: this,
  );
  
  /// border-8 -> border-width: 8px;
  Widget border8() => Container(
    decoration: BoxDecoration(border: Border.all(width: 8)),
    child: this,
  );
  
  /// border (default 1px) -> border-width: 1px;
  Widget border({Color? color, double width = 1.0}) => Container(
    decoration: BoxDecoration(border: Border.all(
      color: color ?? Colors.black,
      width: width,
    )),
    child: this,
  );

  // === Side-specific border width utilities ===
  
  // Top border
  /// border-t-0 -> border-top-width: 0px;
  Widget borderT0() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(width: 0))),
    child: this,
  );
  
  /// border-t-2 -> border-top-width: 2px;
  Widget borderT2() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(width: 2))),
    child: this,
  );
  
  /// border-t-4 -> border-top-width: 4px;
  Widget borderT4() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(width: 4))),
    child: this,
  );
  
  /// border-t-8 -> border-top-width: 8px;
  Widget borderT8() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(width: 8))),
    child: this,
  );
  
  /// border-t (default 1px) -> border-top-width: 1px;
  Widget borderT() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(width: 1))),
    child: this,
  );

  // Right border
  /// border-r-0 -> border-right-width: 0px;
  Widget borderR0() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(width: 0))),
    child: this,
  );
  
  /// border-r-2 -> border-right-width: 2px;
  Widget borderR2() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(width: 2))),
    child: this,
  );
  
  /// border-r-4 -> border-right-width: 4px;
  Widget borderR4() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(width: 4))),
    child: this,
  );
  
  /// border-r-8 -> border-right-width: 8px;
  Widget borderR8() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(width: 8))),
    child: this,
  );
  
  /// border-r (default 1px) -> border-right-width: 1px;
  Widget borderR() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(width: 1))),
    child: this,
  );

  // Bottom border
  /// border-b-0 -> border-bottom-width: 0px;
  Widget borderB0() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0))),
    child: this,
  );
  
  /// border-b-2 -> border-bottom-width: 2px;
  Widget borderB2() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 2))),
    child: this,
  );
  
  /// border-b-4 -> border-bottom-width: 4px;
  Widget borderB4() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 4))),
    child: this,
  );
  
  /// border-b-8 -> border-bottom-width: 8px;
  Widget borderB8() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 8))),
    child: this,
  );
  
  /// border-b (default 1px) -> border-bottom-width: 1px;
  Widget borderB() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
    child: this,
  );

  // Left border
  /// border-l-0 -> border-left-width: 0px;
  Widget borderL0() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(width: 0))),
    child: this,
  );
  
  /// border-l-2 -> border-left-width: 2px;
  Widget borderL2() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(width: 2))),
    child: this,
  );
  
  /// border-l-4 -> border-left-width: 4px;
  Widget borderL4() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(width: 4))),
    child: this,
  );
  
  /// border-l-8 -> border-left-width: 8px;
  Widget borderL8() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(width: 8))),
    child: this,
  );
  
  /// border-l (default 1px) -> border-left-width: 1px;
  Widget borderL() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(width: 1))),
    child: this,
  );

  // === Logical property border width utilities ===
  // 这些工具类根据文本方向自动映射到合适的物理属性
  // LTR: start=left, end=right
  // RTL: start=right, end=left
  
  // Start side (start = left in LTR, right in RTL)
  /// border-s-0 -> border-l-0 in LTR, border-r-0 in RTL
  Widget borderS0() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderR0() : borderL0();
      },
    );
  }
  
  /// border-s-2 -> border-l-2 in LTR, border-r-2 in RTL
  Widget borderS2() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderR2() : borderL2();
      },
    );
  }
  
  /// border-s-4 -> border-l-4 in LTR, border-r-4 in RTL
  Widget borderS4() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderR4() : borderL4();
      },
    );
  }
  
  /// border-s-8 -> border-l-8 in LTR, border-r-8 in RTL
  Widget borderS8() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderR8() : borderL8();
      },
    );
  }
  
  /// border-s (default 1px) -> border-l in LTR, border-r in RTL
  Widget borderS() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderR() : borderL();
      },
    );
  }

  // End side (end = right in LTR, left in RTL)
  /// border-e-0 -> border-r-0 in LTR, border-l-0 in RTL
  Widget borderE0() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderL0() : borderR0();
      },
    );
  }
  
  /// border-e-2 -> border-r-2 in LTR, border-l-2 in RTL
  Widget borderE2() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderL2() : borderR2();
      },
    );
  }
  
  /// border-e-4 -> border-r-4 in LTR, border-l-4 in RTL
  Widget borderE4() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderL4() : borderR4();
      },
    );
  }
  
  /// border-e-8 -> border-r-8 in LTR, border-l-8 in RTL
  Widget borderE8() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderL8() : borderR8();
      },
    );
  }
  
  /// border-e (default 1px) -> border-r in LTR, border-l in RTL
  Widget borderE() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderL() : borderR();
      },
    );
  }

  // === Custom border width utilities ===
  
  /// border-[<value>] -> border-width: <value>; (自定义边框宽度)
  Widget borderCustom(double width, {Color? color}) => Container(
    decoration: BoxDecoration(border: Border.all(width: width, color: color ?? Colors.black)),
    child: this,
  );
  
  /// 自定义各边的边框宽度
  Widget borderCustomEach({
    double? top,
    double? right,
    double? bottom,
    double? left,
    Color? color,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: top != null ? BorderSide(width: top, color: color ?? Colors.black) : BorderSide.none,
          right: right != null ? BorderSide(width: right, color: color ?? Colors.black) : BorderSide.none,
          bottom: bottom != null ? BorderSide(width: bottom, color: color ?? Colors.black) : BorderSide.none,
          left: left != null ? BorderSide(width: left, color: color ?? Colors.black) : BorderSide.none,
        ),
      ),
      child: this,
    );
  }
  
  // === Shorthand utilities (简化版本，常用的组合) ===
  
  /// bw(double width) -> border-width: <width>; (最简洁的自定义边框宽度)
  Widget bw(double width, {Color? color}) => Container(
    decoration: BoxDecoration(border: Border.all(width: width, color: color ?? Colors.black)),
    child: this,
  );
  
  /// bwOnly -> 只设置指定边的边框宽度，其他为0
  Widget bwOnly({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
    Color? color,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: top > 0 ? BorderSide(width: top, color: color ?? Colors.black) : BorderSide.none,
          right: right > 0 ? BorderSide(width: right, color: color ?? Colors.black) : BorderSide.none,
          bottom: bottom > 0 ? BorderSide(width: bottom, color: color ?? Colors.black) : BorderSide.none,
          left: left > 0 ? BorderSide(width: left, color: color ?? Colors.black) : BorderSide.none,
        ),
      ),
      child: this,
    );
  }
  
  /// bwTop(double width) -> 只设置上边框宽度
  Widget bwTop(double width, {Color? color}) => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(width: width, color: color ?? Colors.black))),
    child: this,
  );
  
  /// bwBottom(double width) -> 只设置下边框宽度
  Widget bwBottom(double width, {Color? color}) => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: width, color: color ?? Colors.black))),
    child: this,
  );
  
  /// bwLeft(double width) -> 只设置左边框宽度
  Widget bwLeft(double width, {Color? color}) => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(width: width, color: color ?? Colors.black))),
    child: this,
  );
  
  /// bwRight(double width) -> 只设置右边框宽度
  Widget bwRight(double width, {Color? color}) => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(width: width, color: color ?? Colors.black))),
    child: this,
  );

  // === Commonly used border width values (常用的边框宽度值) ===
  
  /// bw1() -> border-width: 1px;
  Widget bw1({Color? color}) => Container(
    decoration: BoxDecoration(border: Border.all(width: 1, color: color ?? Colors.black)),
    child: this,
  );
  
  /// bw2() -> border-width: 2px;
  Widget bw2({Color? color}) => Container(
    decoration: BoxDecoration(border: Border.all(width: 2, color: color ?? Colors.black)),
    child: this,
  );
  
  /// bw3() -> border-width: 3px;
  Widget bw3({Color? color}) => Container(
    decoration: BoxDecoration(border: Border.all(width: 3, color: color ?? Colors.black)),
    child: this,
  );
  
  /// bw4() -> border-width: 4px;
  Widget bw4({Color? color}) => Container(
    decoration: BoxDecoration(border: Border.all(width: 4, color: color ?? Colors.black)),
    child: this,
  );
  
  /// bw5() -> border-width: 5px;
  Widget bw5({Color? color}) => Container(
    decoration: BoxDecoration(border: Border.all(width: 5, color: color ?? Colors.black)),
    child: this,
  );
  
  /// bw8() -> border-width: 8px;
  Widget bw8({Color? color}) => Container(
    decoration: BoxDecoration(border: Border.all(width: 8, color: color ?? Colors.black)),
    child: this,
  );
}
