import 'package:flutter/material.dart';

/// Tailwind CSS Border Color utilities for Flutter
/// Utilities for controlling the color of an element's borders.
extension BorderColorExt on Widget {
  
  // === Basic border color utilities ===
  
  /// border-inherit -> border-color: inherit;
  Widget borderInherit() => Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.transparent)),
    child: this,
  );
  
  /// border-current -> border-color: currentColor;
  Widget borderCurrent() => Builder(
    builder: (context) => Container(
      decoration: BoxDecoration(border: Border.all(color: Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black)),
      child: this,
    ),
  );
  
  /// border-transparent -> border-color: transparent;
  Widget borderTransparent() => Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.transparent)),
    child: this,
  );

  // === Basic colors ===
  
  /// border-black -> border-color: #000000;
  Widget borderBlack() => Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.black)),
    child: this,
  );
  
  /// border-white -> border-color: #ffffff;
  Widget borderWhite() => Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.white)),
    child: this,
  );

  // === Gray colors ===
  
  /// border-gray-50 -> border-color: #f9fafb;
  Widget borderGray50() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xfff9fafb))),
    child: this,
  );
  
  /// border-gray-100 -> border-color: #f3f4f6;
  Widget borderGray100() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xfff3f4f6))),
    child: this,
  );
  
  /// border-gray-200 -> border-color: #e5e7eb;
  Widget borderGray200() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xffe5e7eb))),
    child: this,
  );
  
  /// border-gray-300 -> border-color: #d1d5db;
  Widget borderGray300() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xffd1d5db))),
    child: this,
  );
  
  /// border-gray-400 -> border-color: #9ca3af;
  Widget borderGray400() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff9ca3af))),
    child: this,
  );
  
  /// border-gray-500 -> border-color: #6b7280;
  Widget borderGray500() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff6b7280))),
    child: this,
  );
  
  /// border-gray-600 -> border-color: #4b5563;
  Widget borderGray600() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff4b5563))),
    child: this,
  );
  
  /// border-gray-700 -> border-color: #374151;
  Widget borderGray700() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff374151))),
    child: this,
  );
  
  /// border-gray-800 -> border-color: #1f2937;
  Widget borderGray800() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff1f2937))),
    child: this,
  );
  
  /// border-gray-900 -> border-color: #111827;
  Widget borderGray900() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff111827))),
    child: this,
  );

  // === Red colors ===
  
  /// border-red-50 -> border-color: #fef2f2;
  Widget borderRed50() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xfffef2f2))),
    child: this,
  );
  
  /// border-red-100 -> border-color: #fee2e2;
  Widget borderRed100() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xfffee2e2))),
    child: this,
  );
  
  /// border-red-200 -> border-color: #fecaca;
  Widget borderRed200() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xfffecaca))),
    child: this,
  );
  
  /// border-red-300 -> border-color: #fca5a5;
  Widget borderRed300() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xfffca5a5))),
    child: this,
  );
  
  /// border-red-400 -> border-color: #f87171;
  Widget borderRed400() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xfff87171))),
    child: this,
  );
  
  /// border-red-500 -> border-color: #ef4444;
  Widget borderRed500() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xffef4444))),
    child: this,
  );
  
  /// border-red-600 -> border-color: #dc2626;
  Widget borderRed600() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xffdc2626))),
    child: this,
  );
  
  /// border-red-700 -> border-color: #b91c1c;
  Widget borderRed700() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xffb91c1c))),
    child: this,
  );
  
  /// border-red-800 -> border-color: #991b1b;
  Widget borderRed800() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff991b1b))),
    child: this,
  );
  
  /// border-red-900 -> border-color: #7f1d1d;
  Widget borderRed900() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff7f1d1d))),
    child: this,
  );

  // === Blue colors ===
  
  /// border-blue-50 -> border-color: #eff6ff;
  Widget borderBlue50() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xffeff6ff))),
    child: this,
  );
  
  /// border-blue-100 -> border-color: #dbeafe;
  Widget borderBlue100() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xffdbeafe))),
    child: this,
  );
  
  /// border-blue-200 -> border-color: #bfdbfe;
  Widget borderBlue200() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xffbfdbfe))),
    child: this,
  );
  
  /// border-blue-300 -> border-color: #93c5fd;
  Widget borderBlue300() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff93c5fd))),
    child: this,
  );
  
  /// border-blue-400 -> border-color: #60a5fa;
  Widget borderBlue400() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff60a5fa))),
    child: this,
  );
  
  /// border-blue-500 -> border-color: #3b82f6;
  Widget borderBlue500() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff3b82f6))),
    child: this,
  );
  
  /// border-blue-600 -> border-color: #2563eb;
  Widget borderBlue600() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff2563eb))),
    child: this,
  );
  
  /// border-blue-700 -> border-color: #1d4ed8;
  Widget borderBlue700() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff1d4ed8))),
    child: this,
  );
  
  /// border-blue-800 -> border-color: #1e40af;
  Widget borderBlue800() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff1e40af))),
    child: this,
  );
  
  /// border-blue-900 -> border-color: #1e3a8a;
  Widget borderBlue900() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff1e3a8a))),
    child: this,
  );

  // === Green colors ===
  
  /// border-green-50 -> border-color: #f0fdf4;
  Widget borderGreen50() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xfff0fdf4))),
    child: this,
  );
  
  /// border-green-100 -> border-color: #dcfce7;
  Widget borderGreen100() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xffdcfce7))),
    child: this,
  );
  
  /// border-green-200 -> border-color: #bbf7d0;
  Widget borderGreen200() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xffbbf7d0))),
    child: this,
  );
  
  /// border-green-300 -> border-color: #86efac;
  Widget borderGreen300() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff86efac))),
    child: this,
  );
  
  /// border-green-400 -> border-color: #4ade80;
  Widget borderGreen400() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff4ade80))),
    child: this,
  );
  
  /// border-green-500 -> border-color: #22c55e;
  Widget borderGreen500() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff22c55e))),
    child: this,
  );
  
  /// border-green-600 -> border-color: #16a34a;
  Widget borderGreen600() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff16a34a))),
    child: this,
  );
  
  /// border-green-700 -> border-color: #15803d;
  Widget borderGreen700() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff15803d))),
    child: this,
  );
  
  /// border-green-800 -> border-color: #166534;
  Widget borderGreen800() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff166534))),
    child: this,
  );
  
  /// border-green-900 -> border-color: #14532d;
  Widget borderGreen900() => Container(
    decoration: BoxDecoration(border: Border.all(color: Color(0xff14532d))),
    child: this,
  );

  // === Side-specific border color utilities ===
  
  // Top border color
  /// border-t-gray-500 -> border-top-color: #6b7280;
  Widget borderTGray500() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(color: Color(0xff6b7280)))),
    child: this,
  );
  
  /// border-t-red-500 -> border-top-color: #ef4444;
  Widget borderTRed500() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(color: Color(0xffef4444)))),
    child: this,
  );
  
  /// border-t-blue-500 -> border-top-color: #3b82f6;
  Widget borderTBlue500() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(color: Color(0xff3b82f6)))),
    child: this,
  );
  
  /// border-t-green-500 -> border-top-color: #22c55e;
  Widget borderTGreen500() => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(color: Color(0xff22c55e)))),
    child: this,
  );

  // Right border color
  /// border-r-gray-500 -> border-right-color: #6b7280;
  Widget borderRGray500() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xff6b7280)))),
    child: this,
  );
  
  /// border-r-red-500 -> border-right-color: #ef4444;
  Widget borderRRed500() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xffef4444)))),
    child: this,
  );
  
  /// border-r-blue-500 -> border-right-color: #3b82f6;
  Widget borderRBlue500() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xff3b82f6)))),
    child: this,
  );
  
  /// border-r-green-500 -> border-right-color: #22c55e;
  Widget borderRGreen500() => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xff22c55e)))),
    child: this,
  );

  // Bottom border color
  /// border-b-gray-500 -> border-bottom-color: #6b7280;
  Widget borderBGray500() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xff6b7280)))),
    child: this,
  );
  
  /// border-b-red-500 -> border-bottom-color: #ef4444;
  Widget borderBRed500() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xffef4444)))),
    child: this,
  );
  
  /// border-b-blue-500 -> border-bottom-color: #3b82f6;
  Widget borderBBlue500() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xff3b82f6)))),
    child: this,
  );
  
  /// border-b-green-500 -> border-bottom-color: #22c55e;
  Widget borderBGreen500() => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xff22c55e)))),
    child: this,
  );

  // Left border color
  /// border-l-gray-500 -> border-left-color: #6b7280;
  Widget borderLGray500() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(color: Color(0xff6b7280)))),
    child: this,
  );
  
  /// border-l-red-500 -> border-left-color: #ef4444;
  Widget borderLRed500() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(color: Color(0xffef4444)))),
    child: this,
  );
  
  /// border-l-blue-500 -> border-left-color: #3b82f6;
  Widget borderLBlue500() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(color: Color(0xff3b82f6)))),
    child: this,
  );
  
  /// border-l-green-500 -> border-left-color: #22c55e;
  Widget borderLGreen500() => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(color: Color(0xff22c55e)))),
    child: this,
  );

  // === Custom border color utilities ===
  
  /// border-[<color>] -> border-color: <color>; (自定义边框颜色)
  Widget borderColor(Color color) => Container(
    decoration: BoxDecoration(border: Border.all(color: color)),
    child: this,
  );
  
  /// 自定义各边的边框颜色
  Widget borderColorEach({
    Color? top,
    Color? right,
    Color? bottom,
    Color? left,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: top != null ? BorderSide(color: top) : BorderSide.none,
          right: right != null ? BorderSide(color: right) : BorderSide.none,
          bottom: bottom != null ? BorderSide(color: bottom) : BorderSide.none,
          left: left != null ? BorderSide(color: left) : BorderSide.none,
        ),
      ),
      child: this,
    );
  }
  
  // === Shorthand utilities (简化版本，常用的组合) ===
  
  /// bc(Color color) -> border-color: <color>; (最简洁的自定义边框颜色)
  Widget bc(Color color) => Container(
    decoration: BoxDecoration(border: Border.all(color: color)),
    child: this,
  );
  
  /// bcOnly -> 只设置指定边的边框颜色，其他为透明
  Widget bcOnly({
    Color? top,
    Color? right,
    Color? bottom,
    Color? left,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: top != null ? BorderSide(color: top) : BorderSide.none,
          right: right != null ? BorderSide(color: right) : BorderSide.none,
          bottom: bottom != null ? BorderSide(color: bottom) : BorderSide.none,
          left: left != null ? BorderSide(color: left) : BorderSide.none,
        ),
      ),
      child: this,
    );
  }
  
  /// bcTop(Color color) -> 只设置上边框颜色
  Widget bcTop(Color color) => Container(
    decoration: BoxDecoration(border: Border(top: BorderSide(color: color))),
    child: this,
  );
  
  /// bcBottom(Color color) -> 只设置下边框颜色
  Widget bcBottom(Color color) => Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: color))),
    child: this,
  );
  
  /// bcLeft(Color color) -> 只设置左边框颜色
  Widget bcLeft(Color color) => Container(
    decoration: BoxDecoration(border: Border(left: BorderSide(color: color))),
    child: this,
  );
  
  /// bcRight(Color color) -> 只设置右边框颜色
  Widget bcRight(Color color) => Container(
    decoration: BoxDecoration(border: Border(right: BorderSide(color: color))),
    child: this,
  );
}
