import 'package:flutter/material.dart';

/// Tailwind CSS Outline Offset utilities for Flutter
/// Utilities for controlling the offset of an element's outline.
/// 
/// Note: Flutter doesn't have native outline-offset support, so these utilities 
/// simulate outline offset effects using positioned shadows or padding/margin combinations.
extension OutlineOffsetExt on Widget {
  
  // === Basic outline offset utilities ===
  
  /// outline-offset-0 -> outline-offset: 0px;
  Widget outlineOffset0({Color? color, double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-offset-1 -> outline-offset: 1px;
  Widget outlineOffset1({Color? color, double width = 2}) => Container(
    margin: EdgeInsets.all(1),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 1,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-offset-2 -> outline-offset: 2px;
  Widget outlineOffset2({Color? color, double width = 2}) => Container(
    margin: EdgeInsets.all(2),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 2,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-offset-4 -> outline-offset: 4px;
  Widget outlineOffset4({Color? color, double width = 2}) => Container(
    margin: EdgeInsets.all(4),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 4,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-offset-8 -> outline-offset: 8px;
  Widget outlineOffset8({Color? color, double width = 2}) => Container(
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 8,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Alternative implementation using positioned Container ===
  // 使用定位Container来实现更精确的offset效果
  
  /// outlineOffsetPositioned0 -> outline-offset: 0px; (使用定位实现)
  Widget outlineOffsetPositioned0({Color? color, double width = 2}) => Stack(
    children: [
      this,
      Positioned.fill(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: (color ?? Colors.blue).withValues(alpha: 0.5),
              width: width,
            ),
          ),
        ),
      ),
    ],
  );
  
  /// outlineOffsetPositioned1 -> outline-offset: 1px; (使用定位实现)
  Widget outlineOffsetPositioned1({Color? color, double width = 2}) => Stack(
    children: [
      Container(
        margin: EdgeInsets.all(1 + width),
        child: this,
      ),
      Positioned.fill(
        child: Container(
          margin: EdgeInsets.all(1),
          decoration: BoxDecoration(
            border: Border.all(
              color: (color ?? Colors.blue).withValues(alpha: 0.5),
              width: width,
            ),
          ),
        ),
      ),
    ],
  );
  
  /// outlineOffsetPositioned2 -> outline-offset: 2px; (使用定位实现)
  Widget outlineOffsetPositioned2({Color? color, double width = 2}) => Stack(
    children: [
      Container(
        margin: EdgeInsets.all(2 + width),
        child: this,
      ),
      Positioned.fill(
        child: Container(
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
            border: Border.all(
              color: (color ?? Colors.blue).withValues(alpha: 0.5),
              width: width,
            ),
          ),
        ),
      ),
    ],
  );
  
  /// outlineOffsetPositioned4 -> outline-offset: 4px; (使用定位实现)
  Widget outlineOffsetPositioned4({Color? color, double width = 2}) => Stack(
    children: [
      Container(
        margin: EdgeInsets.all(4 + width),
        child: this,
      ),
      Positioned.fill(
        child: Container(
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
            border: Border.all(
              color: (color ?? Colors.blue).withValues(alpha: 0.5),
              width: width,
            ),
          ),
        ),
      ),
    ],
  );
  
  /// outlineOffsetPositioned8 -> outline-offset: 8px; (使用定位实现)
  Widget outlineOffsetPositioned8({Color? color, double width = 2}) => Stack(
    children: [
      Container(
        margin: EdgeInsets.all(8 + width),
        child: this,
      ),
      Positioned.fill(
        child: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              color: (color ?? Colors.blue).withValues(alpha: 0.5),
              width: width,
            ),
          ),
        ),
      ),
    ],
  );

  // === Focus outline offset utilities ===
  // 专门用于焦点状态的outline offset效果
  
  /// outlineFocusOffset -> 焦点状态的轮廓偏移
  Widget outlineFocusOffset({
    Color? color,
    double width = 2,
    double offset = 2,
    double blur = 0,
  }) => Container(
    margin: EdgeInsets.all(offset),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.6),
          spreadRadius: width + offset,
          blurRadius: blur,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outlineFocusOffsetGlow -> 带发光效果的焦点轮廓偏移
  Widget outlineFocusOffsetGlow({
    Color? color,
    double width = 2,
    double offset = 2,
    double blur = 4,
  }) => Container(
    margin: EdgeInsets.all(offset),
    decoration: BoxDecoration(
      boxShadow: [
        // 内层轮廓
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.8),
          spreadRadius: width + offset,
          blurRadius: blur * 0.5,
          offset: Offset(0, 0),
        ),
        // 外层发光
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.4),
          spreadRadius: width + offset + 2,
          blurRadius: blur,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Custom outline offset utilities ===
  
  /// outlineOffset -> 自定义轮廓偏移
  Widget outlineOffset(
    double offset, {
    Color? color,
    double width = 2,
    double blur = 0,
  }) => Container(
    margin: EdgeInsets.all(offset),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + offset,
          blurRadius: blur,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outlineOffsetDirectional -> 方向性轮廓偏移
  Widget outlineOffsetDirectional({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
    Color? color,
    double width = 2,
  }) => Container(
    margin: EdgeInsets.only(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
    ),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outlineOffsetAsymmetric -> 非对称轮廓偏移
  Widget outlineOffsetAsymmetric({
    required EdgeInsets offsets,
    Color? color,
    double width = 2,
    double blur = 0,
  }) => Container(
    margin: offsets,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width,
          blurRadius: blur,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  // === Shorthand utilities (简化版本，常用的组合) ===
  
  /// oo(double offset) -> outline-offset: <offset>; (最简洁的自定义轮廓偏移)
  Widget oo(double offset, {Color? color, double width = 2}) => Container(
    margin: EdgeInsets.all(offset),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + offset,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ooPositioned(double offset) -> 使用定位方式的简洁轮廓偏移
  Widget ooPositioned(double offset, {Color? color, double width = 2}) => Stack(
    children: [
      Container(
        margin: EdgeInsets.all(offset + width),
        child: this,
      ),
      Positioned.fill(
        child: Container(
          margin: EdgeInsets.all(offset),
          decoration: BoxDecoration(
            border: Border.all(
              color: (color ?? Colors.blue).withValues(alpha: 0.5),
              width: width,
            ),
          ),
        ),
      ),
    ],
  );

  // === Ring offset utilities (模拟Tailwind的ring offset效果) ===
  
  /// ringOffset0 -> ring-offset-width: 0px;
  Widget ringOffset0({Color? color, double width = 3}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ringOffset1 -> ring-offset-width: 1px;
  Widget ringOffset1({Color? color, double width = 3}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        // Ring offset (白色或透明)
        BoxShadow(
          color: Colors.white,
          spreadRadius: 1,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
        // Ring
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 1,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ringOffset2 -> ring-offset-width: 2px;
  Widget ringOffset2({Color? color, double width = 3}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        // Ring offset (白色或透明)
        BoxShadow(
          color: Colors.white,
          spreadRadius: 2,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
        // Ring
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 2,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ringOffset4 -> ring-offset-width: 4px;
  Widget ringOffset4({Color? color, double width = 3}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        // Ring offset (白色或透明)
        BoxShadow(
          color: Colors.white,
          spreadRadius: 4,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
        // Ring
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 4,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ringOffset8 -> ring-offset-width: 8px;
  Widget ringOffset8({Color? color, double width = 3}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        // Ring offset (白色或透明)
        BoxShadow(
          color: Colors.white,
          spreadRadius: 8,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
        // Ring
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 8,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ringOffsetCustom -> 自定义ring offset
  Widget ringOffsetCustom({
    required double offset,
    Color? ringColor,
    Color? offsetColor,
    double width = 3,
  }) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        // Ring offset
        BoxShadow(
          color: offsetColor ?? Colors.white,
          spreadRadius: offset,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
        // Ring
        BoxShadow(
          color: (ringColor ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + offset,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Commonly used outline offset values (常用的轮廓偏移值) ===
  
  /// oo1() -> outline-offset: 1px;
  Widget oo1({Color? color, double width = 2}) => Container(
    margin: EdgeInsets.all(1),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 1,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// oo2() -> outline-offset: 2px;
  Widget oo2({Color? color, double width = 2}) => Container(
    margin: EdgeInsets.all(2),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 2,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// oo3() -> outline-offset: 3px;
  Widget oo3({Color? color, double width = 2}) => Container(
    margin: EdgeInsets.all(3),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 3,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// oo4() -> outline-offset: 4px;
  Widget oo4({Color? color, double width = 2}) => Container(
    margin: EdgeInsets.all(4),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 4,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// oo8() -> outline-offset: 8px;
  Widget oo8({Color? color, double width = 2}) => Container(
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 8,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
}
