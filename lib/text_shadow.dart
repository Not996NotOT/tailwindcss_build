import 'package:flutter/material.dart';

/// Tailwind CSS Text Shadow utilities for Flutter
/// Utilities for controlling the text shadow of an element.
extension TextShadowExt on Widget {
  
  // === Basic text shadow utilities ===
  
  /// text-shadow-sm -> text-shadow: 0 1px 2px rgb(0 0 0 / 0.05);
  Widget textShadowSm() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// text-shadow -> text-shadow: 0 1px 3px rgb(0 0 0 / 0.1), 0 1px 2px rgb(0 0 0 / 0.1);
  Widget textShadow() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 3,
              offset: Offset(0, 1),
            ),
            Shadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// text-shadow-md -> text-shadow: 0 4px 6px rgb(0 0 0 / 0.1), 0 2px 4px rgb(0 0 0 / 0.1);
  Widget textShadowMd() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: Offset(0, 4),
            ),
            Shadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// text-shadow-lg -> text-shadow: 0 10px 15px rgb(0 0 0 / 0.1), 0 4px 6px rgb(0 0 0 / 0.1);
  Widget textShadowLg() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 15,
              offset: Offset(0, 10),
            ),
            Shadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: Offset(0, 4),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// text-shadow-xl -> text-shadow: 0 20px 25px rgb(0 0 0 / 0.1), 0 8px 10px rgb(0 0 0 / 0.1);
  Widget textShadowXl() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 25,
              offset: Offset(0, 20),
            ),
            Shadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 8),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// text-shadow-2xl -> text-shadow: 0 25px 50px rgb(0 0 0 / 0.25);
  Widget textShadow2xl() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 50,
              offset: Offset(0, 25),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// text-shadow-none -> text-shadow: none;
  Widget textShadowNone() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(shadows: null),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }

  // === Colored text shadows ===
  
  /// text-shadow-black -> text-shadow with black color
  Widget textShadowBlack() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// text-shadow-white -> text-shadow with white color
  Widget textShadowWhite() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Colors.white.withOpacity(0.8),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// text-shadow-gray-500 -> text-shadow with gray color
  Widget textShadowGray500() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Color(0xff6b7280).withOpacity(0.5),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// text-shadow-red-500 -> text-shadow with red color
  Widget textShadowRed500() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Color(0xffef4444).withOpacity(0.5),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// text-shadow-blue-500 -> text-shadow with blue color
  Widget textShadowBlue500() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Color(0xff3b82f6).withOpacity(0.5),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// text-shadow-green-500 -> text-shadow with green color
  Widget textShadowGreen500() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: Color(0xff22c55e).withOpacity(0.5),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }

  // === Custom text shadow utilities ===
  
  /// textShadowCustom -> 自定义文字阴影
  Widget textShadowCustom({
    required Color color,
    double blurRadius = 4,
    Offset offset = const Offset(0, 2),
    double opacity = 0.5,
  }) {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: color.withOpacity(opacity),
              blurRadius: blurRadius,
              offset: offset,
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// textShadowMultiple -> 多重文字阴影
  Widget textShadowMultiple(List<Shadow> shadows) {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(shadows: shadows),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  // === Shorthand utilities (简化版本，常用的组合) ===
  
  /// ts(params) -> text-shadow: <params>; (最简洁的自定义文字阴影)
  Widget ts({
    Color? color,
    double blurRadius = 4,
    Offset offset = const Offset(0, 2),
    double opacity = 0.3,
  }) {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: (color ?? Colors.black).withOpacity(opacity),
              blurRadius: blurRadius,
              offset: offset,
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }

  // === Special text shadow effects ===
  
  /// textGlow -> 文字发光效果
  Widget textGlow({
    Color? color,
    double blurRadius = 8,
    double opacity = 0.6,
  }) {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: (color ?? Colors.blue).withOpacity(opacity),
              blurRadius: blurRadius,
              offset: Offset(0, 0),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// textOutline -> 文字轮廓效果
  Widget textOutline({
    Color? color,
    double blurRadius = 1,
    double opacity = 1.0,
  }) {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            // 创建四个方向的阴影来模拟轮廓
            Shadow(
              color: (color ?? Colors.black).withOpacity(opacity),
              blurRadius: blurRadius,
              offset: Offset(-1, -1),
            ),
            Shadow(
              color: (color ?? Colors.black).withOpacity(opacity),
              blurRadius: blurRadius,
              offset: Offset(1, -1),
            ),
            Shadow(
              color: (color ?? Colors.black).withOpacity(opacity),
              blurRadius: blurRadius,
              offset: Offset(-1, 1),
            ),
            Shadow(
              color: (color ?? Colors.black).withOpacity(opacity),
              blurRadius: blurRadius,
              offset: Offset(1, 1),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// textEmboss -> 文字浮雕效果
  Widget textEmboss({
    Color? highlightColor,
    Color? shadowColor,
    double blurRadius = 1,
    double opacity = 0.5,
  }) {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            // 高光
            Shadow(
              color: (highlightColor ?? Colors.white).withOpacity(opacity),
              blurRadius: blurRadius,
              offset: Offset(0, -1),
            ),
            // 阴影
            Shadow(
              color: (shadowColor ?? Colors.black).withOpacity(opacity * 0.6),
              blurRadius: blurRadius,
              offset: Offset(0, 1),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
  
  /// textEngraved -> 文字雕刻效果
  Widget textEngraved({
    Color? highlightColor,
    Color? shadowColor,
    double blurRadius = 1,
    double opacity = 0.5,
  }) {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: (text.style ?? TextStyle()).copyWith(
          shadows: [
            // 阴影（上方）
            Shadow(
              color: (shadowColor ?? Colors.black).withOpacity(opacity * 0.6),
              blurRadius: blurRadius,
              offset: Offset(0, -1),
            ),
            // 高光（下方）
            Shadow(
              color: (highlightColor ?? Colors.white).withOpacity(opacity),
              blurRadius: blurRadius,
              offset: Offset(0, 1),
            ),
          ],
        ),
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return this;
  }
}
