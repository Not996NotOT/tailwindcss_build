import 'package:flutter/material.dart';

/// Tailwind CSS Gap utilities for Flutter
/// Utilities for controlling gutters between grid and flexbox items.
extension GapExt on List<Widget> {
  
  // === gap-<number> utilities (spacing scale) ===
  /// gap-0 -> gap: 0;
  Widget gap0() => _wrapWithGap(0.0);
  
  /// gap-px -> gap: 1px;
  Widget gapPx() => _wrapWithGap(1.0);
  
  /// gap-0.5 -> gap: 2px;
  Widget gap0_5() => _wrapWithGap(2.0);
  
  /// gap-1 -> gap: 4px;
  Widget gap1() => _wrapWithGap(4.0);
  
  /// gap-1.5 -> gap: 6px;
  Widget gap1_5() => _wrapWithGap(6.0);
  
  /// gap-2 -> gap: 8px;
  Widget gap2() => _wrapWithGap(8.0);
  
  /// gap-2.5 -> gap: 10px;
  Widget gap2_5() => _wrapWithGap(10.0);
  
  /// gap-3 -> gap: 12px;
  Widget gap3() => _wrapWithGap(12.0);
  
  /// gap-3.5 -> gap: 14px;
  Widget gap3_5() => _wrapWithGap(14.0);
  
  /// gap-4 -> gap: 16px;
  Widget gap4() => _wrapWithGap(16.0);
  
  /// gap-5 -> gap: 20px;
  Widget gap5() => _wrapWithGap(20.0);
  
  /// gap-6 -> gap: 24px;
  Widget gap6() => _wrapWithGap(24.0);
  
  /// gap-7 -> gap: 28px;
  Widget gap7() => _wrapWithGap(28.0);
  
  /// gap-8 -> gap: 32px;
  Widget gap8() => _wrapWithGap(32.0);
  
  /// gap-9 -> gap: 36px;
  Widget gap9() => _wrapWithGap(36.0);
  
  /// gap-10 -> gap: 40px;
  Widget gap10() => _wrapWithGap(40.0);
  
  /// gap-11 -> gap: 44px;
  Widget gap11() => _wrapWithGap(44.0);
  
  /// gap-12 -> gap: 48px;
  Widget gap12() => _wrapWithGap(48.0);
  
  /// gap-14 -> gap: 56px;
  Widget gap14() => _wrapWithGap(56.0);
  
  /// gap-16 -> gap: 64px;
  Widget gap16() => _wrapWithGap(64.0);
  
  /// gap-20 -> gap: 80px;
  Widget gap20() => _wrapWithGap(80.0);
  
  /// gap-24 -> gap: 96px;
  Widget gap24() => _wrapWithGap(96.0);
  
  /// gap-28 -> gap: 112px;
  Widget gap28() => _wrapWithGap(112.0);
  
  /// gap-32 -> gap: 128px;
  Widget gap32() => _wrapWithGap(128.0);
  
  /// gap-36 -> gap: 144px;
  Widget gap36() => _wrapWithGap(144.0);
  
  /// gap-40 -> gap: 160px;
  Widget gap40() => _wrapWithGap(160.0);
  
  /// gap-44 -> gap: 176px;
  Widget gap44() => _wrapWithGap(176.0);
  
  /// gap-48 -> gap: 192px;
  Widget gap48() => _wrapWithGap(192.0);
  
  /// gap-52 -> gap: 208px;
  Widget gap52() => _wrapWithGap(208.0);
  
  /// gap-56 -> gap: 224px;
  Widget gap56() => _wrapWithGap(224.0);
  
  /// gap-60 -> gap: 240px;
  Widget gap60() => _wrapWithGap(240.0);
  
  /// gap-64 -> gap: 256px;
  Widget gap64() => _wrapWithGap(256.0);
  
  /// gap-72 -> gap: 288px;
  Widget gap72() => _wrapWithGap(288.0);
  
  /// gap-80 -> gap: 320px;
  Widget gap80() => _wrapWithGap(320.0);
  
  /// gap-96 -> gap: 384px;
  Widget gap96() => _wrapWithGap(384.0);

  // === gap-x-<number> utilities (column gap) ===
  /// gap-x-0 -> column-gap: 0;
  Widget gapX0() => _wrapWithColumnGap(0.0);
  
  /// gap-x-px -> column-gap: 1px;
  Widget gapXPx() => _wrapWithColumnGap(1.0);
  
  /// gap-x-1 -> column-gap: 4px;
  Widget gapX1() => _wrapWithColumnGap(4.0);
  
  /// gap-x-2 -> column-gap: 8px;
  Widget gapX2() => _wrapWithColumnGap(8.0);
  
  /// gap-x-3 -> column-gap: 12px;
  Widget gapX3() => _wrapWithColumnGap(12.0);
  
  /// gap-x-4 -> column-gap: 16px;
  Widget gapX4() => _wrapWithColumnGap(16.0);
  
  /// gap-x-5 -> column-gap: 20px;
  Widget gapX5() => _wrapWithColumnGap(20.0);
  
  /// gap-x-6 -> column-gap: 24px;
  Widget gapX6() => _wrapWithColumnGap(24.0);
  
  /// gap-x-8 -> column-gap: 32px;
  Widget gapX8() => _wrapWithColumnGap(32.0);
  
  /// gap-x-10 -> column-gap: 40px;
  Widget gapX10() => _wrapWithColumnGap(40.0);
  
  /// gap-x-12 -> column-gap: 48px;
  Widget gapX12() => _wrapWithColumnGap(48.0);
  
  /// gap-x-16 -> column-gap: 64px;
  Widget gapX16() => _wrapWithColumnGap(64.0);
  
  /// gap-x-20 -> column-gap: 80px;
  Widget gapX20() => _wrapWithColumnGap(80.0);
  
  /// gap-x-24 -> column-gap: 96px;
  Widget gapX24() => _wrapWithColumnGap(96.0);

  // === gap-y-<number> utilities (row gap) ===
  /// gap-y-0 -> row-gap: 0;
  Widget gapY0() => _wrapWithRowGap(0.0);
  
  /// gap-y-px -> row-gap: 1px;
  Widget gapYPx() => _wrapWithRowGap(1.0);
  
  /// gap-y-1 -> row-gap: 4px;
  Widget gapY1() => _wrapWithRowGap(4.0);
  
  /// gap-y-2 -> row-gap: 8px;
  Widget gapY2() => _wrapWithRowGap(8.0);
  
  /// gap-y-3 -> row-gap: 12px;
  Widget gapY3() => _wrapWithRowGap(12.0);
  
  /// gap-y-4 -> row-gap: 16px;
  Widget gapY4() => _wrapWithRowGap(16.0);
  
  /// gap-y-5 -> row-gap: 20px;
  Widget gapY5() => _wrapWithRowGap(20.0);
  
  /// gap-y-6 -> row-gap: 24px;
  Widget gapY6() => _wrapWithRowGap(24.0);
  
  /// gap-y-8 -> row-gap: 32px;
  Widget gapY8() => _wrapWithRowGap(32.0);
  
  /// gap-y-10 -> row-gap: 40px;
  Widget gapY10() => _wrapWithRowGap(40.0);
  
  /// gap-y-12 -> row-gap: 48px;
  Widget gapY12() => _wrapWithRowGap(48.0);
  
  /// gap-y-16 -> row-gap: 64px;
  Widget gapY16() => _wrapWithRowGap(64.0);
  
  /// gap-y-20 -> row-gap: 80px;
  Widget gapY20() => _wrapWithRowGap(80.0);
  
  /// gap-y-24 -> row-gap: 96px;
  Widget gapY24() => _wrapWithRowGap(96.0);

  // === 自定义gap工具类 ===
  /// gap(double spacing) -> gap: <value>; (自定义间距 - 简洁版)
  Widget gap(double spacing) => _wrapWithGap(spacing);
  
  /// gapX(double spacing) -> column-gap: <value>; (自定义列间距)
  Widget gapX(double spacing) => _wrapWithColumnGap(spacing);
  
  /// gapY(double spacing) -> row-gap: <value>; (自定义行间距)
  Widget gapY(double spacing) => _wrapWithRowGap(spacing);
  
  /// gapCustom(double spacing, double? rowSpacing) -> gap: <value>; (完全自定义)
  Widget gapCustom(double spacing, [double? rowSpacing]) {
    return _wrapWithCustomGap(spacing, rowSpacing ?? spacing);
  }

  // === 内部辅助方法 ===
  Widget _wrapWithGap(double spacing) {
    return Wrap(
      spacing: spacing,
      runSpacing: spacing,
      children: this,
    );
  }
  
  Widget _wrapWithColumnGap(double spacing) {
    return Wrap(
      spacing: spacing,
      runSpacing: 0.0,
      children: this,
    );
  }
  
  Widget _wrapWithRowGap(double spacing) {
    return Wrap(
      spacing: 0.0,
      runSpacing: spacing,
      children: this,
    );
  }
  
  Widget _wrapWithCustomGap(double columnSpacing, double rowSpacing) {
    return Wrap(
      spacing: columnSpacing,
      runSpacing: rowSpacing,
      children: this,
    );
  }
}

/// 用于Row和Column的Gap扩展
extension RowColumnGapExt on List<Widget> {
  
  /// 为Row添加间距
  Widget rowWithGap(double spacing, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    final List<Widget> spacedChildren = [];
    for (int i = 0; i < length; i++) {
      spacedChildren.add(this[i]);
      if (i < length - 1) {
        spacedChildren.add(SizedBox(width: spacing));
      }
    }
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: spacedChildren,
    );
  }
  
  /// 为Column添加间距
  Widget columnWithGap(double spacing, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    final List<Widget> spacedChildren = [];
    for (int i = 0; i < length; i++) {
      spacedChildren.add(this[i]);
      if (i < length - 1) {
        spacedChildren.add(SizedBox(height: spacing));
      }
    }
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: spacedChildren,
    );
  }
}

/// Gap工具类
class Gap {
  /// 创建一个带gap的Wrap容器
  static Widget wrap(List<Widget> children, double spacing, [double? runSpacing]) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing ?? spacing,
      children: children,
    );
  }
  
  /// 创建一个带gap的Row容器
  static Widget row(List<Widget> children, double spacing) {
    return children.rowWithGap(spacing);
  }
  
  /// 创建一个带gap的Column容器
  static Widget column(List<Widget> children, double spacing) {
    return children.columnWithGap(spacing);
  }
}
