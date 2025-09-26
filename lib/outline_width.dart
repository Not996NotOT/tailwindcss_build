import 'package:flutter/material.dart';

/// Tailwind CSS Outline Width utilities for Flutter
/// Utilities for controlling the width of an element's outline.
/// 
/// Note: Flutter doesn't have native outline support, so these utilities 
/// simulate outline effects using additional Container decorations or shadows.
extension OutlineWidthExt on Widget {
  
  // === Basic outline width utilities ===
  
  /// outline-0 -> outline-width: 0px;
  Widget outline0() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.transparent,
          spreadRadius: 0,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-1 -> outline-width: 1px;
  Widget outline1({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: 1,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-2 -> outline-width: 2px;
  Widget outline2({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: 2,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-4 -> outline-width: 4px;
  Widget outline4({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: 4,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-8 -> outline-width: 8px;
  Widget outline8({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: 8,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline (default 2px) -> outline-width: 2px;
  Widget outline({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: 2,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Alternative implementation using border-based outline ===
  // 使用多层Container来模拟outline效果
  
  /// outlineBorder0 -> outline-width: 0px; (使用border实现)
  Widget outlineBorder0() => this;
  
  /// outlineBorder1 -> outline-width: 1px; (使用border实现)
  Widget outlineBorder1({Color? color}) => Container(
    padding: EdgeInsets.all(1),
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: color ?? Colors.blue.withValues(alpha: 0.5)),
    ),
    child: this,
  );
  
  /// outlineBorder2 -> outline-width: 2px; (使用border实现)
  Widget outlineBorder2({Color? color}) => Container(
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
      border: Border.all(width: 2, color: color ?? Colors.blue.withValues(alpha: 0.5)),
    ),
    child: this,
  );
  
  /// outlineBorder4 -> outline-width: 4px; (使用border实现)
  Widget outlineBorder4({Color? color}) => Container(
    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(
      border: Border.all(width: 4, color: color ?? Colors.blue.withValues(alpha: 0.5)),
    ),
    child: this,
  );
  
  /// outlineBorder8 -> outline-width: 8px; (使用border实现)
  Widget outlineBorder8({Color? color}) => Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      border: Border.all(width: 8, color: color ?? Colors.blue.withValues(alpha: 0.5)),
    ),
    child: this,
  );

  // === Focus outline utilities ===
  // 专门用于焦点状态的outline效果
  
  /// outlineFocus -> 模拟focus时的outline效果
  Widget outlineFocus({Color? color, double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.6),
          spreadRadius: width,
          blurRadius: 1,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outlineFocusVisible -> 模拟focus-visible时的outline效果
  Widget outlineFocusVisible({Color? color, double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Custom outline width utilities ===
  
  /// outline-[<value>] -> outline-width: <value>; (自定义轮廓宽度)
  Widget outlineCustom(double width, {Color? color, double blur = 0}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: width,
          blurRadius: blur,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// 使用border方式的自定义outline
  Widget outlineBorderCustom(double width, {Color? color}) => Container(
    padding: EdgeInsets.all(width),
    decoration: BoxDecoration(
      border: Border.all(width: width, color: color ?? Colors.blue.withValues(alpha: 0.5)),
    ),
    child: this,
  );
  
  // === Shorthand utilities (简化版本，常用的组合) ===
  
  /// ow(double width) -> outline-width: <width>; (最简洁的自定义轮廓宽度)
  Widget ow(double width, {Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// owBorder(double width) -> 使用border方式的简洁轮廓宽度
  Widget owBorder(double width, {Color? color}) => Container(
    padding: EdgeInsets.all(width),
    decoration: BoxDecoration(
      border: Border.all(width: width, color: color ?? Colors.blue.withValues(alpha: 0.5)),
    ),
    child: this,
  );

  // === Commonly used outline width values (常用的轮廓宽度值) ===
  
  /// ow1() -> outline-width: 1px;
  Widget ow1({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: 1,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ow2() -> outline-width: 2px;
  Widget ow2({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: 2,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ow3() -> outline-width: 3px;
  Widget ow3({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: 3,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ow4() -> outline-width: 4px;
  Widget ow4({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: 4,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ow5() -> outline-width: 5px;
  Widget ow5({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: 5,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ow8() -> outline-width: 8px;
  Widget ow8({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color ?? Colors.blue.withValues(alpha: 0.5),
          spreadRadius: 8,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Ring utilities (模拟Tailwind的ring效果) ===
  // Ring是Tailwind中常用的outline效果的现代化替代
  
  /// ring-0 -> 无ring效果
  Widget ring0() => this;
  
  /// ring-1 -> ring-width: 1px;
  Widget ring1({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: 1,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ring-2 -> ring-width: 2px;
  Widget ring2({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: 2,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ring-4 -> ring-width: 4px;
  Widget ring4({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: 4,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ring-8 -> ring-width: 8px;
  Widget ring8({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: 8,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ring (default 3px) -> ring-width: 3px;
  Widget ring({Color? color}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: 3,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
}
