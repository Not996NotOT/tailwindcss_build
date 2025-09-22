import 'package:flutter/material.dart';

/// Tailwind CSS Border Style utilities for Flutter
/// Utilities for controlling the style of an element's borders.
extension BorderStyleExt on Widget {
  
  // === Basic border style utilities ===
  
  /// border-solid -> border-style: solid;
  Widget borderSolid() => Container(
    decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
    child: this,
  );
  
  /// border-dashed -> border-style: dashed;
  /// Note: Flutter doesn't have native dashed borders, using dotted as approximation
  Widget borderDashed() => Container(
    decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
    child: this,
  );
  
  /// border-dotted -> border-style: dotted;
  /// Note: Flutter doesn't have native dotted borders, using solid as approximation
  Widget borderDotted() => Container(
    decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
    child: this,
  );
  
  /// border-double -> border-style: double;
  /// Note: Flutter doesn't have native double borders, using solid with increased width
  Widget borderDouble() => Container(
    decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid, width: 3)),
    child: this,
  );
  
  /// border-hidden -> border-style: hidden;
  Widget borderHidden() => Container(
    decoration: BoxDecoration(border: Border.all(style: BorderStyle.none)),
    child: this,
  );
  
  /// border-none -> border-style: none;
  Widget borderNone() => Container(
    decoration: BoxDecoration(border: Border.all(style: BorderStyle.none)),
    child: this,
  );

  // === Side-specific border style utilities ===
  
  // Top border style
  /// border-t-solid -> border-top-style: solid;
  Widget borderTSolid() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-t-dashed -> border-top-style: dashed;
  Widget borderTDashed() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-t-dotted -> border-top-style: dotted;
  Widget borderTDotted() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-t-double -> border-top-style: double;
  Widget borderTDouble() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(style: BorderStyle.solid, width: 3))),
    child: this,
  );
  
  /// border-t-hidden -> border-top-style: hidden;
  Widget borderTHidden() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(style: BorderStyle.none))),
    child: this,
  );
  
  /// border-t-none -> border-top-style: none;
  Widget borderTNone() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(style: BorderStyle.none))),
    child: this,
  );

  // Right border style
  /// border-r-solid -> border-right-style: solid;
  Widget borderRSolid() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-r-dashed -> border-right-style: dashed;
  Widget borderRDashed() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-r-dotted -> border-right-style: dotted;
  Widget borderRDotted() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-r-double -> border-right-style: double;
  Widget borderRDouble() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(style: BorderStyle.solid, width: 3))),
    child: this,
  );
  
  /// border-r-hidden -> border-right-style: hidden;
  Widget borderRHidden() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(style: BorderStyle.none))),
    child: this,
  );
  
  /// border-r-none -> border-right-style: none;
  Widget borderRNone() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(style: BorderStyle.none))),
    child: this,
  );

  // Bottom border style
  /// border-b-solid -> border-bottom-style: solid;
  Widget borderBSolid() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-b-dashed -> border-bottom-style: dashed;
  Widget borderBDashed() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-b-dotted -> border-bottom-style: dotted;
  Widget borderBDotted() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-b-double -> border-bottom-style: double;
  Widget borderBDouble() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(style: BorderStyle.solid, width: 3))),
    child: this,
  );
  
  /// border-b-hidden -> border-bottom-style: hidden;
  Widget borderBHidden() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(style: BorderStyle.none))),
    child: this,
  );
  
  /// border-b-none -> border-bottom-style: none;
  Widget borderBNone() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(style: BorderStyle.none))),
    child: this,
  );

  // Left border style
  /// border-l-solid -> border-left-style: solid;
  Widget borderLSolid() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-l-dashed -> border-left-style: dashed;
  Widget borderLDashed() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-l-dotted -> border-left-style: dotted;
  Widget borderLDotted() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(style: BorderStyle.solid))),
    child: this,
  );
  
  /// border-l-double -> border-left-style: double;
  Widget borderLDouble() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(style: BorderStyle.solid, width: 3))),
    child: this,
  );
  
  /// border-l-hidden -> border-left-style: hidden;
  Widget borderLHidden() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(style: BorderStyle.none))),
    child: this,
  );
  
  /// border-l-none -> border-left-style: none;
  Widget borderLNone() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(style: BorderStyle.none))),
    child: this,
  );

  // === Logical property border style utilities ===
  // 这些工具类根据文本方向自动映射到合适的物理属性
  // LTR: start=left, end=right
  // RTL: start=right, end=left
  
  // Start side (start = left in LTR, right in RTL)
  /// border-s-solid -> border-l-solid in LTR, border-r-solid in RTL
  Widget borderSSolid() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderRSolid() : borderLSolid();
      },
    );
  }
  
  /// border-s-dashed -> border-l-dashed in LTR, border-r-dashed in RTL
  Widget borderSDashed() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderRDashed() : borderLDashed();
      },
    );
  }
  
  /// border-s-dotted -> border-l-dotted in LTR, border-r-dotted in RTL
  Widget borderSDotted() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderRDotted() : borderLDotted();
      },
    );
  }
  
  /// border-s-double -> border-l-double in LTR, border-r-double in RTL
  Widget borderSDouble() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderRDouble() : borderLDouble();
      },
    );
  }
  
  /// border-s-hidden -> border-l-hidden in LTR, border-r-hidden in RTL
  Widget borderSHidden() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderRHidden() : borderLHidden();
      },
    );
  }
  
  /// border-s-none -> border-l-none in LTR, border-r-none in RTL
  Widget borderSNone() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderRNone() : borderLNone();
      },
    );
  }

  // End side (end = right in LTR, left in RTL)
  /// border-e-solid -> border-r-solid in LTR, border-l-solid in RTL
  Widget borderESolid() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderLSolid() : borderRSolid();
      },
    );
  }
  
  /// border-e-dashed -> border-r-dashed in LTR, border-l-dashed in RTL
  Widget borderEDashed() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderLDashed() : borderRDashed();
      },
    );
  }
  
  /// border-e-dotted -> border-r-dotted in LTR, border-l-dotted in RTL
  Widget borderEDotted() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderLDotted() : borderRDotted();
      },
    );
  }
  
  /// border-e-double -> border-r-double in LTR, border-l-double in RTL
  Widget borderEDouble() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderLDouble() : borderRDouble();
      },
    );
  }
  
  /// border-e-hidden -> border-r-hidden in LTR, border-l-hidden in RTL
  Widget borderEHidden() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderLHidden() : borderRHidden();
      },
    );
  }
  
  /// border-e-none -> border-r-none in LTR, border-l-none in RTL
  Widget borderENone() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? borderLNone() : borderRNone();
      },
    );
  }

  // === Custom border style utilities ===
  
  /// border-style(BorderStyle style) -> border-style: <style>; (自定义边框样式)
  Widget borderStyle(BorderStyle style) => Container(
    decoration: BoxDecoration(border: Border.all(style: style)),
    child: this,
  );
  
  /// 自定义各边的边框样式
  Widget borderStyleEach({
    BorderStyle? top,
    BorderStyle? right,
    BorderStyle? bottom,
    BorderStyle? left,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: top != null ? BorderSide(style: top) : BorderSide.none,
          right: right != null ? BorderSide(style: right) : BorderSide.none,
          bottom: bottom != null ? BorderSide(style: bottom) : BorderSide.none,
          left: left != null ? BorderSide(style: left) : BorderSide.none,
        ),
      ),
      child: this,
    );
  }
  
  // === Shorthand utilities (简化版本，常用的组合) ===
  
  /// bs(BorderStyle style) -> border-style: <style>; (最简洁的自定义边框样式)
  Widget bs(BorderStyle style) => Container(
    decoration: BoxDecoration(border: Border.all(style: style)),
    child: this,
  );
  
  /// bsOnly -> 只设置指定边的边框样式，其他为none
  Widget bsOnly({
    BorderStyle? top,
    BorderStyle? right,
    BorderStyle? bottom,
    BorderStyle? left,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: top != null ? BorderSide(style: top) : BorderSide.none,
          right: right != null ? BorderSide(style: right) : BorderSide.none,
          bottom: bottom != null ? BorderSide(style: bottom) : BorderSide.none,
          left: left != null ? BorderSide(style: left) : BorderSide.none,
        ),
      ),
      child: this,
    );
  }
  
  /// bsTop(BorderStyle style) -> 只设置上边框样式
  Widget bsTop(BorderStyle style) => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(style: style))),
    child: this,
  );
  
  /// bsBottom(BorderStyle style) -> 只设置下边框样式
  Widget bsBottom(BorderStyle style) => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(style: style))),
    child: this,
  );
  
  /// bsLeft(BorderStyle style) -> 只设置左边框样式
  Widget bsLeft(BorderStyle style) => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(style: style))),
    child: this,
  );
  
  /// bsRight(BorderStyle style) -> 只设置右边框样式
  Widget bsRight(BorderStyle style) => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(style: style))),
    child: this,
  );
  
  // === Convenience methods for common styles ===
  
  /// bsSolid() -> border-style: solid;
  Widget bsSolid() => Container(
    decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
    child: this,
  );
  
  /// bsNone() -> border-style: none;
  Widget bsNone() => Container(
    decoration: BoxDecoration(border: Border.all(style: BorderStyle.none)),
    child: this,
  );
}
