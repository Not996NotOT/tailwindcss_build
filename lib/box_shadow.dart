import 'package:flutter/material.dart';

/// Tailwind CSS Box Shadow utilities for Flutter
/// Utilities for controlling the box shadow of an element.
extension BoxShadowExt on Widget {
  
  // === Basic box shadow utilities ===
  
  /// shadow-sm -> box-shadow: 0 1px 2px 0 rgb(0 0 0 / 0.05);
  Widget shadowSm() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 2,
          offset: Offset(0, 1),
        ),
      ],
    ),
    child: this,
  );
  
  /// shadow -> box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
  Widget shadow() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 3,
          offset: Offset(0, 1),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 2,
          offset: Offset(0, 1),
          spreadRadius: -1,
        ),
      ],
    ),
    child: this,
  );
  
  /// shadow-md -> box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
  Widget shadowMd() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 6,
          offset: Offset(0, 4),
          spreadRadius: -1,
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 4,
          offset: Offset(0, 2),
          spreadRadius: -2,
        ),
      ],
    ),
    child: this,
  );
  
  /// shadow-lg -> box-shadow: 0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1);
  Widget shadowLg() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 15,
          offset: Offset(0, 10),
          spreadRadius: -3,
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 6,
          offset: Offset(0, 4),
          spreadRadius: -4,
        ),
      ],
    ),
    child: this,
  );
  
  /// shadow-xl -> box-shadow: 0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1);
  Widget shadowXl() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 25,
          offset: Offset(0, 20),
          spreadRadius: -5,
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 10,
          offset: Offset(0, 8),
          spreadRadius: -6,
        ),
      ],
    ),
    child: this,
  );
  
  /// shadow-2xl -> box-shadow: 0 25px 50px -12px rgb(0 0 0 / 0.25);
  Widget shadow2xl() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.25),
          blurRadius: 50,
          offset: Offset(0, 25),
          spreadRadius: -12,
        ),
      ],
    ),
    child: this,
  );
  
  /// shadow-inner -> box-shadow: inset 0 2px 4px 0 rgb(0 0 0 / 0.05);
  /// Note: Flutter doesn't support inset shadows directly, using workaround
  Widget shadowInner() => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black.withValues(alpha: 0.05),
          Colors.transparent,
          Colors.transparent,
        ],
        stops: [0.0, 0.1, 1.0],
      ),
    ),
    child: this,
  );
  
  /// shadow-none -> box-shadow: 0 0 #0000;
  Widget shadowNone() => this;

  // === Colored box shadows ===
  
  /// shadow-black -> box-shadow with black color
  Widget shadowBlack() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.5),
          blurRadius: 6,
          offset: Offset(0, 4),
          spreadRadius: -1,
        ),
      ],
    ),
    child: this,
  );
  
  /// shadow-white -> box-shadow with white color
  Widget shadowWhite() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.white.withValues(alpha: 0.5),
          blurRadius: 6,
          offset: Offset(0, 4),
          spreadRadius: -1,
        ),
      ],
    ),
    child: this,
  );
  
  /// shadow-gray-500 -> box-shadow with gray color
  Widget shadowGray500() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff6b7280).withValues(alpha: 0.5),
          blurRadius: 6,
          offset: Offset(0, 4),
          spreadRadius: -1,
        ),
      ],
    ),
    child: this,
  );
  
  /// shadow-red-500 -> box-shadow with red color
  Widget shadowRed500() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffef4444).withValues(alpha: 0.5),
          blurRadius: 6,
          offset: Offset(0, 4),
          spreadRadius: -1,
        ),
      ],
    ),
    child: this,
  );
  
  /// shadow-blue-500 -> box-shadow with blue color
  Widget shadowBlue500() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff3b82f6).withValues(alpha: 0.5),
          blurRadius: 6,
          offset: Offset(0, 4),
          spreadRadius: -1,
        ),
      ],
    ),
    child: this,
  );
  
  /// shadow-green-500 -> box-shadow with green color
  Widget shadowGreen500() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff22c55e).withValues(alpha: 0.5),
          blurRadius: 6,
          offset: Offset(0, 4),
          spreadRadius: -1,
        ),
      ],
    ),
    child: this,
  );

  // === Custom box shadow utilities ===
  
  /// shadow-[<value>] -> box-shadow: <value>; (自定义阴影)
  Widget shadowCustom({
    required Color color,
    double blurRadius = 6,
    Offset offset = const Offset(0, 4),
    double spreadRadius = -1,
    double opacity = 0.5,
  }) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color.withValues(alpha: opacity),
          blurRadius: blurRadius,
          offset: offset,
          spreadRadius: spreadRadius,
        ),
      ],
    ),
    child: this,
  );
  
  /// 多重阴影效果
  Widget shadowMultiple(List<BoxShadow> shadows) => Container(
    decoration: BoxDecoration(boxShadow: shadows),
    child: this,
  );
  
  // === Shorthand utilities (简化版本，常用的组合) ===
  
  /// bs(params) -> box-shadow: <params>; (最简洁的自定义阴影)
  Widget bs({
    Color? color,
    double blurRadius = 6,
    Offset offset = const Offset(0, 4),
    double spreadRadius = 0,
    double opacity = 0.1,
  }) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.black).withValues(alpha: opacity),
          blurRadius: blurRadius,
          offset: offset,
          spreadRadius: spreadRadius,
        ),
      ],
    ),
    child: this,
  );

  // === Elevation-style shadows (Material Design风格) ===
  
  /// elevation1 -> Material Design elevation 1
  Widget elevation1() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.12),
          blurRadius: 2,
          offset: Offset(0, 1),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.24),
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ],
    ),
    child: this,
  );
  
  /// elevation2 -> Material Design elevation 2
  Widget elevation2() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.16),
          blurRadius: 3,
          offset: Offset(0, 1),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.23),
          blurRadius: 3,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: this,
  );
  
  /// elevation4 -> Material Design elevation 4
  Widget elevation4() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.19),
          blurRadius: 10,
          offset: Offset(0, 2),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.23),
          blurRadius: 6,
          offset: Offset(0, 6),
        ),
      ],
    ),
    child: this,
  );
  
  /// elevation8 -> Material Design elevation 8
  Widget elevation8() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.19),
          blurRadius: 20,
          offset: Offset(0, 5),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.23),
          blurRadius: 16,
          offset: Offset(0, 8),
        ),
      ],
    ),
    child: this,
  );
  
  /// elevation16 -> Material Design elevation 16
  Widget elevation16() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.19),
          blurRadius: 40,
          offset: Offset(0, 10),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.23),
          blurRadius: 32,
          offset: Offset(0, 16),
        ),
      ],
    ),
    child: this,
  );
  
  /// elevation24 -> Material Design elevation 24
  Widget elevation24() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.19),
          blurRadius: 60,
          offset: Offset(0, 15),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.23),
          blurRadius: 48,
          offset: Offset(0, 24),
        ),
      ],
    ),
    child: this,
  );

  // === Drop shadow utilities (投影效果) ===
  
  /// dropShadow -> 标准投影效果
  Widget dropShadow({
    Color? color,
    double blurRadius = 8,
    Offset offset = const Offset(2, 2),
    double opacity = 0.3,
  }) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.black).withValues(alpha: opacity),
          blurRadius: blurRadius,
          offset: offset,
        ),
      ],
    ),
    child: this,
  );
  
  /// dropShadowSoft -> 柔和投影效果
  Widget dropShadowSoft({
    Color? color,
    double blurRadius = 16,
    Offset offset = const Offset(0, 4),
    double opacity = 0.15,
  }) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.black).withValues(alpha: opacity),
          blurRadius: blurRadius,
          offset: offset,
        ),
      ],
    ),
    child: this,
  );
  
  /// dropShadowHard -> 硬朗投影效果
  Widget dropShadowHard({
    Color? color,
    double blurRadius = 0,
    Offset offset = const Offset(4, 4),
    double opacity = 0.8,
  }) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.black).withValues(alpha: opacity),
          blurRadius: blurRadius,
          offset: offset,
        ),
      ],
    ),
    child: this,
  );

  // === Glow effects (发光效果) ===
  
  /// glow -> 基础发光效果
  Widget glow({
    Color? color,
    double blurRadius = 12,
    double opacity = 0.6,
  }) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: opacity),
          blurRadius: blurRadius,
          offset: Offset(0, 0),
          spreadRadius: 2,
        ),
      ],
    ),
    child: this,
  );
  
  /// glowSoft -> 柔和发光效果
  Widget glowSoft({
    Color? color,
    double blurRadius = 20,
    double opacity = 0.4,
  }) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: opacity),
          blurRadius: blurRadius,
          offset: Offset(0, 0),
          spreadRadius: 4,
        ),
      ],
    ),
    child: this,
  );
  
  /// glowStrong -> 强烈发光效果
  Widget glowStrong({
    Color? color,
    double blurRadius = 16,
    double opacity = 0.8,
  }) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: opacity),
          blurRadius: blurRadius,
          offset: Offset(0, 0),
          spreadRadius: 6,
        ),
      ],
    ),
    child: this,
  );
}
