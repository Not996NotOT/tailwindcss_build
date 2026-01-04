import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vm;

import 'colors.dart';

/// Container 建造者 - 收集所有样式属性，最后一次性构建
class ContainerBuilder {
  final Widget child;
  
  // 收集的样式属性
  Color? _backgroundColor;
  EdgeInsetsGeometry? _padding;
  EdgeInsetsGeometry? _margin;
  BorderRadiusGeometry? _borderRadius;
  Border? _border;
  // RTL 支持的边框（通过 BorderDirectional 实现）
  BorderDirectional? _borderDirectional;
  List<BoxShadow>? _boxShadow;
  AlignmentGeometry? _alignment;
  BoxConstraints? _constraints;
  Matrix4? _transform;
  AlignmentGeometry? _transformAlignment;
  Decoration? _foregroundDecoration;
  Gradient? _gradient;
  BlendMode? _backgroundBlendMode;
  final BoxShape _shape = BoxShape.rectangle;
  double? _width;
  double? _height;
  double? _minWidth;
  double? _maxWidth;
  double? _minHeight;
  double? _maxHeight;
  
  // === Z-Index 相关属性 ===
  int? _zIndex;
  
  // === 定位相关属性 ===
  bool _isPositioned = false;
  double? _positionTop;
  double? _positionRight;
  double? _positionBottom;
  double? _positionLeft;
  double? _positionStart; // RTL 支持：start 位置
  double? _positionEnd; // RTL 支持：end 位置
  double? _positionWidth;
  double? _positionHeight;
  
  // === Aspect Ratio 相关属性 ===
  double? _aspectRatio;
  
  // === TextDirection 用于 RTL 支持 ===
  TextDirection? _textDirection;
  
  ContainerBuilder(this.child);
  
  /// 设置 TextDirection（用于 RTL 支持）
  ContainerBuilder textDirection(TextDirection direction) {
    _textDirection = direction;
    return this;
  }
  
  // === Z-Index 方法 ===
  /// 设置 z-index 值
  ContainerBuilder zIndex(int value) {
    _zIndex = value;
    return this;
  }
  
  // === 背景色 ===
  ContainerBuilder backgroundColor(Color color) {
    _backgroundColor = color;
    return this;
  }
  
  // === 内边距 ===
  ContainerBuilder padding(EdgeInsetsGeometry padding) {
    if (_padding == null) {
      _padding = padding;
    } else {
      // 合并内边距
      if (_padding is EdgeInsets && padding is EdgeInsets) {
        final existing = _padding as EdgeInsets;
        final newPadding = padding;
        _padding = EdgeInsets.only(
          left: existing.left + newPadding.left,
          top: existing.top + newPadding.top,
          right: existing.right + newPadding.right,
          bottom: existing.bottom + newPadding.bottom,
        );
      } else if (_padding is EdgeInsetsDirectional && padding is EdgeInsetsDirectional) {
        final existing = _padding as EdgeInsetsDirectional;
        final newPadding = padding;
        _padding = EdgeInsetsDirectional.only(
          start: existing.start + newPadding.start,
          top: existing.top + newPadding.top,
          end: existing.end + newPadding.end,
          bottom: existing.bottom + newPadding.bottom,
        );
      } else {
        _padding = padding; // 如果不是相同类型，直接替换
      }
    }
    return this;
  }
  
  ContainerBuilder paddingHorizontal(double value) {
    return padding(EdgeInsets.symmetric(horizontal: value));
  }
  
  ContainerBuilder paddingVertical(double value) {
    return padding(EdgeInsets.symmetric(vertical: value));
  }
  
  ContainerBuilder paddingAll(double value) {
    return padding(EdgeInsets.all(value));
  }
  
  // === RTL 支持：逻辑属性 ===
  /// padding-start / ps-{size} -> 设置开始方向的内边距（LTR 时为 left，RTL 时为 right）
  ContainerBuilder paddingStart(double value) {
    if (_padding == null) {
      _padding = EdgeInsetsDirectional.only(start: value);
    } else if (_padding is EdgeInsetsDirectional) {
      final existing = _padding as EdgeInsetsDirectional;
      _padding = EdgeInsetsDirectional.only(
        start: existing.start + value,
        top: existing.top,
        end: existing.end,
        bottom: existing.bottom,
      );
    } else if (_padding is EdgeInsets) {
      // 如果之前使用的是 EdgeInsets，转换为 EdgeInsetsDirectional
      final existing = _padding as EdgeInsets;
      _padding = EdgeInsetsDirectional.only(
        start: value,
        top: existing.top,
        end: existing.right,
        bottom: existing.bottom,
      );
    }
    return this;
  }
  
  /// padding-end / pe-{size} -> 设置结束方向的内边距（LTR 时为 right，RTL 时为 left）
  ContainerBuilder paddingEnd(double value) {
    if (_padding == null) {
      _padding = EdgeInsetsDirectional.only(end: value);
    } else if (_padding is EdgeInsetsDirectional) {
      final existing = _padding as EdgeInsetsDirectional;
      _padding = EdgeInsetsDirectional.only(
        start: existing.start,
        top: existing.top,
        end: existing.end + value,
        bottom: existing.bottom,
      );
    } else if (_padding is EdgeInsets) {
      // 如果之前使用的是 EdgeInsets，转换为 EdgeInsetsDirectional
      final existing = _padding as EdgeInsets;
      _padding = EdgeInsetsDirectional.only(
        start: existing.left,
        top: existing.top,
        end: value,
        bottom: existing.bottom,
      );
    }
    return this;
  }
  
  // === 外边距 ===
  ContainerBuilder margin(EdgeInsetsGeometry margin) {
    _margin = margin;
    return this;
  }
  
  /// margin-start / ms-{size} -> 设置开始方向的外边距（LTR 时为 left，RTL 时为 right）
  ContainerBuilder marginStart(double value) {
    if (_margin == null) {
      _margin = EdgeInsetsDirectional.only(start: value);
    } else if (_margin is EdgeInsetsDirectional) {
      final existing = _margin as EdgeInsetsDirectional;
      _margin = EdgeInsetsDirectional.only(
        start: existing.start + value,
        top: existing.top,
        end: existing.end,
        bottom: existing.bottom,
      );
    } else if (_margin is EdgeInsets) {
      // 如果之前使用的是 EdgeInsets，转换为 EdgeInsetsDirectional
      final existing = _margin as EdgeInsets;
      _margin = EdgeInsetsDirectional.only(
        start: value,
        top: existing.top,
        end: existing.right,
        bottom: existing.bottom,
      );
    }
    return this;
  }
  
  /// margin-end / me-{size} -> 设置结束方向的外边距（LTR 时为 right，RTL 时为 left）
  ContainerBuilder marginEnd(double value) {
    if (_margin == null) {
      _margin = EdgeInsetsDirectional.only(end: value);
    } else if (_margin is EdgeInsetsDirectional) {
      final existing = _margin as EdgeInsetsDirectional;
      _margin = EdgeInsetsDirectional.only(
        start: existing.start,
        top: existing.top,
        end: existing.end + value,
        bottom: existing.bottom,
      );
    } else if (_margin is EdgeInsets) {
      // 如果之前使用的是 EdgeInsets，转换为 EdgeInsetsDirectional
      final existing = _margin as EdgeInsets;
      _margin = EdgeInsetsDirectional.only(
        start: existing.left,
        top: existing.top,
        end: value,
        bottom: existing.bottom,
      );
    }
    return this;
  }
  
  // === 边框 ===
  ContainerBuilder setBorder(Border border) {
    _border = border;
    return this;
  }
  
  ContainerBuilder borderAll({Color color = Colors.black, double width = 1.0}) {
    _border = Border.all(color: color, width: width);
    return this;
  }
  
  /// border - TailwindCSS的border类，1px边框
  ContainerBuilder border({double width = 1.0, Color color = const Color(0xFFE5E7EB)}) {
    _border = Border.all(color: color, width: width);
    return this;
  }
  
  // === RTL 支持的边框方法 ===
  /// border-s -> 设置开始方向的边框（LTR 时为 left，RTL 时为 right）
  ContainerBuilder borderS({double width = 1.0, Color color = const Color(0xFFE5E7EB)}) {
    if (_borderDirectional == null) {
      _borderDirectional = BorderDirectional(
        start: BorderSide(color: color, width: width),
      );
    } else {
      final existing = _borderDirectional!;
      _borderDirectional = BorderDirectional(
        start: BorderSide(color: color, width: width),
        end: existing.end,
        top: existing.top,
        bottom: existing.bottom,
      );
    }
    return this;
  }
  
  /// border-e -> 设置结束方向的边框（LTR 时为 right，RTL 时为 left）
  ContainerBuilder borderE({double width = 1.0, Color color = const Color(0xFFE5E7EB)}) {
    if (_borderDirectional == null) {
      _borderDirectional = BorderDirectional(
        end: BorderSide(color: color, width: width),
      );
    } else {
      final existing = _borderDirectional!;
      _borderDirectional = BorderDirectional(
        start: existing.start,
        end: BorderSide(color: color, width: width),
        top: existing.top,
        bottom: existing.bottom,
      );
    }
    return this;
  }
  
  // border-s 快捷方法
  ContainerBuilder borderS0() => borderS(width: 0);
  ContainerBuilder borderS1() => borderS(width: 1);
  ContainerBuilder borderS2() => borderS(width: 2);
  ContainerBuilder borderS4() => borderS(width: 4);
  ContainerBuilder borderS8() => borderS(width: 8);
  
  // border-e 快捷方法
  ContainerBuilder borderE0() => borderE(width: 0);
  ContainerBuilder borderE1() => borderE(width: 1);
  ContainerBuilder borderE2() => borderE(width: 2);
  ContainerBuilder borderE4() => borderE(width: 4);
  ContainerBuilder borderE8() => borderE(width: 8);
  
  // === 圆角 ===
  ContainerBuilder borderRadius(BorderRadiusGeometry borderRadius) {
    _borderRadius = borderRadius;
    return this;
  }
  
  ContainerBuilder borderRadiusCircular(double radius) {
    _borderRadius = BorderRadius.circular(radius);
    return this;
  }
  
  /// borderRadiusDirectional - RTL 支持的圆角
  ContainerBuilder borderRadiusDirectional({
    double? topStart,
    double? topEnd,
    double? bottomStart,
    double? bottomEnd,
  }) {
    _borderRadius = BorderRadiusDirectional.only(
      topStart: topStart != null ? Radius.circular(topStart) : Radius.zero,
      topEnd: topEnd != null ? Radius.circular(topEnd) : Radius.zero,
      bottomStart: bottomStart != null ? Radius.circular(bottomStart) : Radius.zero,
      bottomEnd: bottomEnd != null ? Radius.circular(bottomEnd) : Radius.zero,
    );
    return this;
  }
  
  // === 阴影 ===
  ContainerBuilder boxShadow(List<BoxShadow> boxShadow) {
    if (_boxShadow == null) {
      _boxShadow = boxShadow;
    } else {
      _boxShadow!.addAll(boxShadow);
    }
    return this;
  }
  
  // === 对齐 ===
  ContainerBuilder alignment(AlignmentGeometry alignment) {
    _alignment = alignment;
    return this;
  }
  
  // === 约束 ===
  ContainerBuilder constraints(BoxConstraints constraints) {
    _constraints = constraints;
    return this;
  }
  
  // === 位置 ===
  ContainerBuilder transform(Matrix4 transform) {
    _transform = transform;
    return this;
  }
  
  ContainerBuilder transformAlignment(AlignmentGeometry alignment) {
    _transformAlignment = alignment;
    return this;
  }
  
  // === Aspect Ratio 方法 ===
  /// aspect-ratio: {ratio} -> 设置宽高比
  ContainerBuilder aspectRatio(double ratio) {
    _aspectRatio = ratio;
    return this;
  }
  
  /// aspect-square -> aspect-ratio: 1 / 1
  ContainerBuilder aspectSquare() {
    _aspectRatio = 1.0;
    return this;
  }
  
  /// aspect-video -> aspect-ratio: 16 / 9
  ContainerBuilder aspectVideo() {
    _aspectRatio = 16 / 9;
    return this;
  }
  
  /// aspect-auto -> 移除 aspect ratio 限制
  ContainerBuilder aspectAuto() {
    _aspectRatio = null;
    return this;
  }
  
  // === Height 方法 - 建造者模式 ===
  /// h-0 -->gt; height: 0;
  ContainerBuilder h0() {
    _height = 0;
    return this;
  }
  
  /// h-px -->gt; height: 1px;
  ContainerBuilder hPx() {
    _height = 1;
    return this;
  }
  
  /// h-0.5 -->gt; height: 2px;
  ContainerBuilder h0_5() {
    _height = 2;
    return this;
  }
  
  /// h-1 -->gt; height: 4px;
  ContainerBuilder h1() {
    _height = 4;
    return this;
  }
  
  /// h-1.5 -->gt; height: 6px;
  ContainerBuilder h1_5() {
    _height = 6;
    return this;
  }
  
  /// h-2 -->gt; height: 8px;
  ContainerBuilder h2() {
    _height = 8;
    return this;
  }
  
  /// h-2.5 -->gt; height: 10px;
  ContainerBuilder h2_5() {
    _height = 10;
    return this;
  }
  
  /// h-3 -->gt; height: 12px;
  ContainerBuilder h3() {
    _height = 12;
    return this;
  }
  
  /// h-3.5 -->gt; height: 14px;
  ContainerBuilder h3_5() {
    _height = 14;
    return this;
  }
  
  /// h-4 -->gt; height: 16px;
  ContainerBuilder h4() {
    _height = 16;
    return this;
  }
  
  /// h-5 -->gt; height: 20px;
  ContainerBuilder h5() {
    _height = 20;
    return this;
  }
  
  /// h-6 -->gt; height: 24px;
  ContainerBuilder h6() {
    _height = 24;
    return this;
  }
  
  /// h-7 -->gt; height: 28px;
  ContainerBuilder h7() {
    _height = 28;
    return this;
  }
  
  /// h-8 -->gt; height: 32px;
  ContainerBuilder h8() {
    _height = 32;
    return this;
  }
  
  /// h-9 -->gt; height: 36px;
  ContainerBuilder h9() {
    _height = 36;
    return this;
  }
  
  /// h-10 -->gt; height: 40px;
  ContainerBuilder h10() {
    _height = 40;
    return this;
  }
  
  /// h-11 -->gt; height: 44px;
  ContainerBuilder h11() {
    _height = 44;
    return this;
  }
  
  /// h-12 -->gt; height: 48px;
  ContainerBuilder h12() {
    _height = 48;
    return this;
  }
  
  /// h-14 -->gt; height: 56px;
  ContainerBuilder h14() {
    _height = 56;
    return this;
  }
  
  /// h-16 -->gt; height: 64px;
  ContainerBuilder h16() {
    _height = 64;
    return this;
  }
  
  /// h-20 -->gt; height: 80px;
  ContainerBuilder h20() {
    _height = 80;
    return this;
  }
  
  /// h-24 -->gt; height: 96px;
  ContainerBuilder h24() {
    _height = 96;
    return this;
  }
  
  /// h-28 -->gt; height: 112px;
  ContainerBuilder h28() {
    _height = 112;
    return this;
  }
  
  /// h-32 -->gt; height: 128px;
  ContainerBuilder h32() {
    _height = 128;
    return this;
  }
  
  /// h-36 -->gt; height: 144px;
  ContainerBuilder h36() {
    _height = 144;
    return this;
  }
  
  /// h-40 -->gt; height: 160px;
  ContainerBuilder h40() {
    _height = 160;
    return this;
  }
  
  /// h-44 -->gt; height: 176px;
  ContainerBuilder h44() {
    _height = 176;
    return this;
  }
  
  /// h-48 -->gt; height: 192px;
  ContainerBuilder h48() {
    _height = 192;
    return this;
  }
  
  /// h-52 -->gt; height: 208px;
  ContainerBuilder h52() {
    _height = 208;
    return this;
  }
  
  /// h-56 -->gt; height: 224px;
  ContainerBuilder h56() {
    _height = 224;
    return this;
  }
  
  /// h-60 -->gt; height: 240px;
  ContainerBuilder h60() {
    _height = 240;
    return this;
  }
  
  /// h-64 -->gt; height: 256px;
  ContainerBuilder h64() {
    _height = 256;
    return this;
  }
  
  /// h-72 -->gt; height: 288px;
  ContainerBuilder h72() {
    _height = 288;
    return this;
  }
  
  /// h-80 -->gt; height: 320px;
  ContainerBuilder h80() {
    _height = 320;
    return this;
  }
  
  /// h-96 -->gt; height: 384px;
  ContainerBuilder h96() {
    _height = 384;
    return this;
  }
  
  /// h-auto -->gt; height: auto; (使用内容高度，不设置高度)
  ContainerBuilder hAuto() {
    _height = null;
    return this;
  }
  
  /// h-full -->gt; height: 100%;
  ContainerBuilder hFull() {
    _height = double.infinity;
    return this;
  }
  
  /// h(double height) -->gt; height: value; (自定义高度 - 简洁版)
  ContainerBuilder h(double heightValue) {
    _height = heightValue;
    return this;
  }
  
  /// h-[value] -->gt; height: value; (自定义高度)
  ContainerBuilder hCustom(double heightValue) {
    _height = heightValue;
    return this;
  }
  
  // === Width 方法 - 建造者模式 ===
  /// w-0 -->gt; width: 0;
  ContainerBuilder w0() {
    _width = 0;
    return this;
  }
  
  /// w-px -->gt; width: 1px;
  ContainerBuilder wPx() {
    _width = 1;
    return this;
  }
  
  /// w-0.5 -->gt; width: 2px;
  ContainerBuilder w0_5() {
    _width = 2;
    return this;
  }
  
  /// w-1 -->gt; width: 4px;
  ContainerBuilder w1() {
    _width = 4;
    return this;
  }
  
  /// w-1.5 -->gt; width: 6px;
  ContainerBuilder w1_5() {
    _width = 6;
    return this;
  }
  
  /// w-2 -->gt; width: 8px;
  ContainerBuilder w2() {
    _width = 8;
    return this;
  }
  
  /// w-2.5 -->gt; width: 10px;
  ContainerBuilder w2_5() {
    _width = 10;
    return this;
  }
  
  /// w-3 -->gt; width: 12px;
  ContainerBuilder w3() {
    _width = 12;
    return this;
  }
  
  /// w-3.5 -->gt; width: 14px;
  ContainerBuilder w3_5() {
    _width = 14;
    return this;
  }
  
  /// w-4 -->gt; width: 16px;
  ContainerBuilder w4() {
    _width = 16;
    return this;
  }
  
  /// w-5 -->gt; width: 20px;
  ContainerBuilder w5() {
    _width = 20;
    return this;
  }
  
  /// w-6 -->gt; width: 24px;
  ContainerBuilder w6() {
    _width = 24;
    return this;
  }
  
  /// w-7 -->gt; width: 28px;
  ContainerBuilder w7() {
    _width = 28;
    return this;
  }
  
  /// w-8 -->gt; width: 32px;
  ContainerBuilder w8() {
    _width = 32;
    return this;
  }
  
  /// w-9 -->gt; width: 36px;
  ContainerBuilder w9() {
    _width = 36;
    return this;
  }
  
  /// w-10 -->gt; width: 40px;
  ContainerBuilder w10() {
    _width = 40;
    return this;
  }
  
  /// w-11 -->gt; width: 44px;
  ContainerBuilder w11() {
    _width = 44;
    return this;
  }
  
  /// w-12 -->gt; width: 48px;
  ContainerBuilder w12() {
    _width = 48;
    return this;
  }
  
  /// w-14 -->gt; width: 56px;
  ContainerBuilder w14() {
    _width = 56;
    return this;
  }
  
  /// w-16 -->gt; width: 64px;
  ContainerBuilder w16() {
    _width = 64;
    return this;
  }
  
  /// w-20 -->gt; width: 80px;
  ContainerBuilder w20() {
    _width = 80;
    return this;
  }
  
  /// w-24 -->gt; width: 96px;
  ContainerBuilder w24() {
    _width = 96;
    return this;
  }
  
  /// w-28 -->gt; width: 112px;
  ContainerBuilder w28() {
    _width = 112;
    return this;
  }
  
  /// w-32 -->gt; width: 128px;
  ContainerBuilder w32() {
    _width = 128;
    return this;
  }
  
  /// w-36 -->gt; width: 144px;
  ContainerBuilder w36() {
    _width = 144;
    return this;
  }
  
  /// w-40 -->gt; width: 160px;
  ContainerBuilder w40() {
    _width = 160;
    return this;
  }
  
  /// w-44 -->gt; width: 176px;
  ContainerBuilder w44() {
    _width = 176;
    return this;
  }
  
  /// w-48 -->gt; width: 192px;
  ContainerBuilder w48() {
    _width = 192;
    return this;
  }
  
  /// w-52 -->gt; width: 208px;
  ContainerBuilder w52() {
    _width = 208;
    return this;
  }
  
  /// w-56 -->gt; width: 224px;
  ContainerBuilder w56() {
    _width = 224;
    return this;
  }
  
  /// w-60 -->gt; width: 240px;
  ContainerBuilder w60() {
    _width = 240;
    return this;
  }
  
  /// w-64 -->gt; width: 256px;
  ContainerBuilder w64() {
    _width = 256;
    return this;
  }
  
  /// w-72 -->gt; width: 288px;
  ContainerBuilder w72() {
    _width = 288;
    return this;
  }
  
  /// w-80 -->gt; width: 320px;
  ContainerBuilder w80() {
    _width = 320;
    return this;
  }
  
  /// w-96 -->gt; width: 384px;
  ContainerBuilder w96() {
    _width = 384;
    return this;
  }
  
  /// w-100 -->gt; width: 400px;
  ContainerBuilder w100() {
    _width = 400;
    return this;
  }
  
  /// w-auto -->gt; width: auto; (使用内容宽度，不设置宽度)
  ContainerBuilder wAuto() {
    _width = null;
    return this;
  }
  
  /// w-full -->gt; width: 100%;
  ContainerBuilder wFull() {
    _width = double.infinity;
    return this;
  }
  
  /// w(double width) -->gt; width: value; (自定义宽度 - 简洁版)
  ContainerBuilder w(double widthValue) {
    _width = widthValue;
    return this;
  }
  
  /// w-[value] -->gt; width: value; (自定义宽度)
  ContainerBuilder wCustom(double widthValue) {
    _width = widthValue;
    return this;
  }

  // === Min-Width 方法 - 建造者模式 ===
  /// min-w-0 -->gt; min-width: 0;
  ContainerBuilder minW0() {
    _minWidth = 0;
    return this;
  }
  
  /// min-w-px -->gt; min-width: 1px;
  ContainerBuilder minWPx() {
    _minWidth = 1;
    return this;
  }
  
  /// min-w-0.5 -->gt; min-width: 2px;
  ContainerBuilder minW0_5() {
    _minWidth = 2;
    return this;
  }
  
  /// min-w-1 -->gt; min-width: 4px;
  ContainerBuilder minW1() {
    _minWidth = 4;
    return this;
  }
  
  /// min-w-1.5 -->gt; min-width: 6px;
  ContainerBuilder minW1_5() {
    _minWidth = 6;
    return this;
  }
  
  /// min-w-2 -->gt; min-width: 8px;
  ContainerBuilder minW2() {
    _minWidth = 8;
    return this;
  }
  
  /// min-w-2.5 -->gt; min-width: 10px;
  ContainerBuilder minW2_5() {
    _minWidth = 10;
    return this;
  }
  
  /// min-w-3 -->gt; min-width: 12px;
  ContainerBuilder minW3() {
    _minWidth = 12;
    return this;
  }
  
  /// min-w-3.5 -->gt; min-width: 14px;
  ContainerBuilder minW3_5() {
    _minWidth = 14;
    return this;
  }
  
  /// min-w-4 -->gt; min-width: 16px;
  ContainerBuilder minW4() {
    _minWidth = 16;
    return this;
  }
  
  /// min-w-5 -->gt; min-width: 20px;
  ContainerBuilder minW5() {
    _minWidth = 20;
    return this;
  }
  
  /// min-w-6 -->gt; min-width: 24px;
  ContainerBuilder minW6() {
    _minWidth = 24;
    return this;
  }
  
  /// min-w-7 -->gt; min-width: 28px;
  ContainerBuilder minW7() {
    _minWidth = 28;
    return this;
  }
  
  /// min-w-8 -->gt; min-width: 32px;
  ContainerBuilder minW8() {
    _minWidth = 32;
    return this;
  }
  
  /// min-w-9 -->gt; min-width: 36px;
  ContainerBuilder minW9() {
    _minWidth = 36;
    return this;
  }
  
  /// min-w-10 -->gt; min-width: 40px;
  ContainerBuilder minW10() {
    _minWidth = 40;
    return this;
  }
  
  /// min-w-11 -->gt; min-width: 44px;
  ContainerBuilder minW11() {
    _minWidth = 44;
    return this;
  }
  
  /// min-w-12 -->gt; min-width: 48px;
  ContainerBuilder minW12() {
    _minWidth = 48;
    return this;
  }
  
  /// min-w-14 -->gt; min-width: 56px;
  ContainerBuilder minW14() {
    _minWidth = 56;
    return this;
  }
  
  /// min-w-16 -->gt; min-width: 64px;
  ContainerBuilder minW16() {
    _minWidth = 64;
    return this;
  }
  
  /// min-w-20 -->gt; min-width: 80px;
  ContainerBuilder minW20() {
    _minWidth = 80;
    return this;
  }
  
  /// min-w-24 -->gt; min-width: 96px;
  ContainerBuilder minW24() {
    _minWidth = 96;
    return this;
  }
  
  /// min-w-28 -->gt; min-width: 112px;
  ContainerBuilder minW28() {
    _minWidth = 112;
    return this;
  }
  
  /// min-w-32 -->gt; min-width: 128px;
  ContainerBuilder minW32() {
    _minWidth = 128;
    return this;
  }
  
  /// min-w-36 -->gt; min-width: 144px;
  ContainerBuilder minW36() {
    _minWidth = 144;
    return this;
  }
  
  /// min-w-40 -->gt; min-width: 160px;
  ContainerBuilder minW40() {
    _minWidth = 160;
    return this;
  }
  
  /// min-w-44 -->gt; min-width: 176px;
  ContainerBuilder minW44() {
    _minWidth = 176;
    return this;
  }
  
  /// min-w-48 -->gt; min-width: 192px;
  ContainerBuilder minW48() {
    _minWidth = 192;
    return this;
  }
  
  /// min-w-52 -->gt; min-width: 208px;
  ContainerBuilder minW52() {
    _minWidth = 208;
    return this;
  }
  
  /// min-w-56 -->gt; min-width: 224px;
  ContainerBuilder minW56() {
    _minWidth = 224;
    return this;
  }
  
  /// min-w-60 -->gt; min-width: 240px;
  ContainerBuilder minW60() {
    _minWidth = 240;
    return this;
  }
  
  /// min-w-64 -->gt; min-width: 256px;
  ContainerBuilder minW64() {
    _minWidth = 256;
    return this;
  }
  
  /// min-w-72 -->gt; min-width: 288px;
  ContainerBuilder minW72() {
    _minWidth = 288;
    return this;
  }
  
  /// min-w-80 -->gt; min-width: 320px;
  ContainerBuilder minW80() {
    _minWidth = 320;
    return this;
  }
  
  /// min-w-96 -->gt; min-width: 384px;
  ContainerBuilder minW96() {
    _minWidth = 384;
    return this;
  }
  
  /// min-w-auto -->gt; min-width: auto; (使用内容宽度，不设置最小宽度)
  ContainerBuilder minWAuto() {
    _minWidth = null;
    return this;
  }
  
  /// min-w-full -->gt; min-width: 100%;
  ContainerBuilder minWFull() {
    _minWidth = double.infinity;
    return this;
  }
  
  /// min-w-screen -->gt; min-width: 100vw;
  ContainerBuilder minWScreen() {
    _minWidth = double.infinity; // 在Flutter中通过MediaQuery获取屏幕宽度
    return this;
  }
  
  /// min-w-min -->gt; min-width: min-content;
  ContainerBuilder minWMin() {
    _minWidth = 0; // Flutter中通过IntrinsicWidth实现
    return this;
  }
  
  /// min-w-max -->gt; min-width: max-content;
  ContainerBuilder minWMax() {
    _minWidth = 0; // Flutter中通过IntrinsicWidth实现
    return this;
  }
  
  /// min-w-fit -->gt; min-width: fit-content;
  ContainerBuilder minWFit() {
    _minWidth = 0; // Flutter中通过IntrinsicWidth实现
    return this;
  }
  
  /// min-w(double minWidth) -->gt; min-width: value; (自定义最小宽度 - 简洁版)
  ContainerBuilder minW(double minWidthValue) {
    _minWidth = minWidthValue;
    return this;
  }
  
  /// min-w-[value] -->gt; min-width: value; (自定义最小宽度)
  ContainerBuilder minWCustom(double minWidthValue) {
    _minWidth = minWidthValue;
    return this;
  }

  // === Max-Width 方法 - 建造者模式 ===
  /// max-w-0 -->gt; max-width: 0;
  ContainerBuilder maxW0() {
    _maxWidth = 0;
    return this;
  }
  
  /// max-w-px -->gt; max-width: 1px;
  ContainerBuilder maxWPx() {
    _maxWidth = 1;
    return this;
  }
  
  /// max-w-0.5 -->gt; max-width: 2px;
  ContainerBuilder maxW0_5() {
    _maxWidth = 2;
    return this;
  }
  
  /// max-w-1 -->gt; max-width: 4px;
  ContainerBuilder maxW1() {
    _maxWidth = 4;
    return this;
  }
  
  /// max-w-1.5 -->gt; max-width: 6px;
  ContainerBuilder maxW1_5() {
    _maxWidth = 6;
    return this;
  }
  
  /// max-w-2 -->gt; max-width: 8px;
  ContainerBuilder maxW2() {
    _maxWidth = 8;
    return this;
  }
  
  /// max-w-2.5 -->gt; max-width: 10px;
  ContainerBuilder maxW2_5() {
    _maxWidth = 10;
    return this;
  }
  
  /// max-w-3 -->gt; max-width: 12px;
  ContainerBuilder maxW3() {
    _maxWidth = 12;
    return this;
  }
  
  /// max-w-3.5 -->gt; max-width: 14px;
  ContainerBuilder maxW3_5() {
    _maxWidth = 14;
    return this;
  }
  
  /// max-w-4 -->gt; max-width: 16px;
  ContainerBuilder maxW4() {
    _maxWidth = 16;
    return this;
  }
  
  /// max-w-5 -->gt; max-width: 20px;
  ContainerBuilder maxW5() {
    _maxWidth = 20;
    return this;
  }
  
  /// max-w-6 -->gt; max-width: 24px;
  ContainerBuilder maxW6() {
    _maxWidth = 24;
    return this;
  }
  
  /// max-w-7 -->gt; max-width: 28px;
  ContainerBuilder maxW7() {
    _maxWidth = 28;
    return this;
  }
  
  /// max-w-8 -->gt; max-width: 32px;
  ContainerBuilder maxW8() {
    _maxWidth = 32;
    return this;
  }
  
  /// max-w-9 -->gt; max-width: 36px;
  ContainerBuilder maxW9() {
    _maxWidth = 36;
    return this;
  }
  
  /// max-w-10 -->gt; max-width: 40px;
  ContainerBuilder maxW10() {
    _maxWidth = 40;
    return this;
  }
  
  /// max-w-11 -->gt; max-width: 44px;
  ContainerBuilder maxW11() {
    _maxWidth = 44;
    return this;
  }
  
  /// max-w-12 -->gt; max-width: 48px;
  ContainerBuilder maxW12() {
    _maxWidth = 48;
    return this;
  }
  
  /// max-w-14 -->gt; max-width: 56px;
  ContainerBuilder maxW14() {
    _maxWidth = 56;
    return this;
  }
  
  /// max-w-16 -->gt; max-width: 64px;
  ContainerBuilder maxW16() {
    _maxWidth = 64;
    return this;
  }
  
  /// max-w-20 -->gt; max-width: 80px;
  ContainerBuilder maxW20() {
    _maxWidth = 80;
    return this;
  }
  
  /// max-w-24 -->gt; max-width: 96px;
  ContainerBuilder maxW24() {
    _maxWidth = 96;
    return this;
  }
  
  /// max-w-28 -->gt; max-width: 112px;
  ContainerBuilder maxW28() {
    _maxWidth = 112;
    return this;
  }
  
  /// max-w-32 -->gt; max-width: 128px;
  ContainerBuilder maxW32() {
    _maxWidth = 128;
    return this;
  }
  
  /// max-w-36 -->gt; max-width: 144px;
  ContainerBuilder maxW36() {
    _maxWidth = 144;
    return this;
  }
  
  /// max-w-40 -->gt; max-width: 160px;
  ContainerBuilder maxW40() {
    _maxWidth = 160;
    return this;
  }
  
  /// max-w-44 -->gt; max-width: 176px;
  ContainerBuilder maxW44() {
    _maxWidth = 176;
    return this;
  }
  
  /// max-w-48 -->gt; max-width: 192px;
  ContainerBuilder maxW48() {
    _maxWidth = 192;
    return this;
  }
  
  /// max-w-52 -->gt; max-width: 208px;
  ContainerBuilder maxW52() {
    _maxWidth = 208;
    return this;
  }
  
  /// max-w-56 -->gt; max-width: 224px;
  ContainerBuilder maxW56() {
    _maxWidth = 224;
    return this;
  }
  
  /// max-w-60 -->gt; max-width: 240px;
  ContainerBuilder maxW60() {
    _maxWidth = 240;
    return this;
  }
  
  /// max-w-64 -->gt; max-width: 256px;
  ContainerBuilder maxW64() {
    _maxWidth = 256;
    return this;
  }
  
  /// max-w-72 -->gt; max-width: 288px;
  ContainerBuilder maxW72() {
    _maxWidth = 288;
    return this;
  }
  
  /// max-w-80 -->gt; max-width: 320px;
  ContainerBuilder maxW80() {
    _maxWidth = 320;
    return this;
  }
  
  /// max-w-96 -->gt; max-width: 384px;
  ContainerBuilder maxW96() {
    _maxWidth = 384;
    return this;
  }
  
  /// max-w-auto -->gt; max-width: auto; (使用内容宽度，不设置最大宽度)
  ContainerBuilder maxWAuto() {
    _maxWidth = null;
    return this;
  }
  
  /// max-w-full -->gt; max-width: 100%;
  ContainerBuilder maxWFull() {
    _maxWidth = double.infinity;
    return this;
  }
  
  /// max-w-screen -->gt; max-width: 100vw;
  ContainerBuilder maxWScreen() {
    _maxWidth = double.infinity; // 在Flutter中通过MediaQuery获取屏幕宽度
    return this;
  }
  
  /// max-w-min -->gt; max-width: min-content;
  ContainerBuilder maxWMin() {
    _maxWidth = 0; // Flutter中通过IntrinsicWidth实现
    return this;
  }
  
  /// max-w-max -->gt; max-width: max-content;
  ContainerBuilder maxWMax() {
    _maxWidth = 0; // Flutter中通过IntrinsicWidth实现
    return this;
  }
  
  /// max-w-fit -->gt; max-width: fit-content;
  ContainerBuilder maxWFit() {
    _maxWidth = 0; // Flutter中通过IntrinsicWidth实现
    return this;
  }
  
  /// max-w(double maxWidth) -->gt; max-width: value; (自定义最大宽度 - 简洁版)
  ContainerBuilder maxW(double maxWidthValue) {
    _maxWidth = maxWidthValue;
    return this;
  }
  
  /// max-w-[value] -->gt; max-width: value; (自定义最大宽度)
  ContainerBuilder maxWCustom(double maxWidthValue) {
    _maxWidth = maxWidthValue;
    return this;
  }

  // === Min-Height 方法 - 建造者模式 ===
  /// min-h-0 -->gt; min-height: 0;
  ContainerBuilder minH0() {
    _minHeight = 0;
    return this;
  }
  
  /// min-h-px -->gt; min-height: 1px;
  ContainerBuilder minHPx() {
    _minHeight = 1;
    return this;
  }
  
  /// min-h-0.5 -->gt; min-height: 2px;
  ContainerBuilder minH0_5() {
    _minHeight = 2;
    return this;
  }
  
  /// min-h-1 -->gt; min-height: 4px;
  ContainerBuilder minH1() {
    _minHeight = 4;
    return this;
  }
  
  /// min-h-1.5 -->gt; min-height: 6px;
  ContainerBuilder minH1_5() {
    _minHeight = 6;
    return this;
  }
  
  /// min-h-2 -->gt; min-height: 8px;
  ContainerBuilder minH2() {
    _minHeight = 8;
    return this;
  }
  
  /// min-h-2.5 -->gt; min-height: 10px;
  ContainerBuilder minH2_5() {
    _minHeight = 10;
    return this;
  }
  
  /// min-h-3 -->gt; min-height: 12px;
  ContainerBuilder minH3() {
    _minHeight = 12;
    return this;
  }
  
  /// min-h-3.5 -->gt; min-height: 14px;
  ContainerBuilder minH3_5() {
    _minHeight = 14;
    return this;
  }
  
  /// min-h-4 -->gt; min-height: 16px;
  ContainerBuilder minH4() {
    _minHeight = 16;
    return this;
  }
  
  /// min-h-5 -->gt; min-height: 20px;
  ContainerBuilder minH5() {
    _minHeight = 20;
    return this;
  }
  
  /// min-h-6 -->gt; min-height: 24px;
  ContainerBuilder minH6() {
    _minHeight = 24;
    return this;
  }
  
  /// min-h-7 -->gt; min-height: 28px;
  ContainerBuilder minH7() {
    _minHeight = 28;
    return this;
  }
  
  /// min-h-8 -->gt; min-height: 32px;
  ContainerBuilder minH8() {
    _minHeight = 32;
    return this;
  }
  
  /// min-h-9 -->gt; min-height: 36px;
  ContainerBuilder minH9() {
    _minHeight = 36;
    return this;
  }
  
  /// min-h-10 -->gt; min-height: 40px;
  ContainerBuilder minH10() {
    _minHeight = 40;
    return this;
  }
  
  /// min-h-11 -->gt; min-height: 44px;
  ContainerBuilder minH11() {
    _minHeight = 44;
    return this;
  }
  
  /// min-h-12 -->gt; min-height: 48px;
  ContainerBuilder minH12() {
    _minHeight = 48;
    return this;
  }
  
  /// min-h-14 -->gt; min-height: 56px;
  ContainerBuilder minH14() {
    _minHeight = 56;
    return this;
  }
  
  /// min-h-16 -->gt; min-height: 64px;
  ContainerBuilder minH16() {
    _minHeight = 64;
    return this;
  }
  
  /// min-h-20 -->gt; min-height: 80px;
  ContainerBuilder minH20() {
    _minHeight = 80;
    return this;
  }
  
  /// min-h-24 -->gt; min-height: 96px;
  ContainerBuilder minH24() {
    _minHeight = 96;
    return this;
  }
  
  /// min-h-28 -->gt; min-height: 112px;
  ContainerBuilder minH28() {
    _minHeight = 112;
    return this;
  }
  
  /// min-h-32 -->gt; min-height: 128px;
  ContainerBuilder minH32() {
    _minHeight = 128;
    return this;
  }
  
  /// min-h-36 -->gt; min-height: 144px;
  ContainerBuilder minH36() {
    _minHeight = 144;
    return this;
  }
  
  /// min-h-40 -->gt; min-height: 160px;
  ContainerBuilder minH40() {
    _minHeight = 160;
    return this;
  }
  
  /// min-h-44 -->gt; min-height: 176px;
  ContainerBuilder minH44() {
    _minHeight = 176;
    return this;
  }
  
  /// min-h-48 -->gt; min-height: 192px;
  ContainerBuilder minH48() {
    _minHeight = 192;
    return this;
  }
  
  /// min-h-52 -->gt; min-height: 208px;
  ContainerBuilder minH52() {
    _minHeight = 208;
    return this;
  }
  
  /// min-h-56 -->gt; min-height: 224px;
  ContainerBuilder minH56() {
    _minHeight = 224;
    return this;
  }
  
  /// min-h-60 -->gt; min-height: 240px;
  ContainerBuilder minH60() {
    _minHeight = 240;
    return this;
  }
  
  /// min-h-64 -->gt; min-height: 256px;
  ContainerBuilder minH64() {
    _minHeight = 256;
    return this;
  }
  
  /// min-h-72 -->gt; min-height: 288px;
  ContainerBuilder minH72() {
    _minHeight = 288;
    return this;
  }
  
  /// min-h-80 -->gt; min-height: 320px;
  ContainerBuilder minH80() {
    _minHeight = 320;
    return this;
  }
  
  /// min-h-96 -->gt; min-height: 384px;
  ContainerBuilder minH96() {
    _minHeight = 384;
    return this;
  }
  
  /// min-h-auto -->gt; min-height: auto; (使用内容高度，不设置最小高度)
  ContainerBuilder minHAuto() {
    _minHeight = null;
    return this;
  }
  
  /// min-h-full -->gt; min-height: 100%;
  ContainerBuilder minHFull() {
    _minHeight = double.infinity;
    return this;
  }
  
  /// min-h-screen -->gt; min-height: 100vh;
  ContainerBuilder minHScreen() {
    _minHeight = double.infinity; // 在Flutter中通过MediaQuery获取屏幕高度
    return this;
  }
  
  /// min-h-min -->gt; min-height: min-content;
  ContainerBuilder minHMin() {
    _minHeight = 0; // Flutter中通过IntrinsicHeight实现
    return this;
  }
  
  /// min-h-max -->gt; min-height: max-content;
  ContainerBuilder minHMax() {
    _minHeight = 0; // Flutter中通过IntrinsicHeight实现
    return this;
  }
  
  /// min-h-fit -->gt; min-height: fit-content;
  ContainerBuilder minHFit() {
    _minHeight = 0; // Flutter中通过IntrinsicHeight实现
    return this;
  }
  
  /// min-h(double minHeight) -->gt; min-height: value; (自定义最小高度 - 简洁版)
  ContainerBuilder minH(double minHeightValue) {
    _minHeight = minHeightValue;
    return this;
  }
  
  /// min-h-[value] -->gt; min-height: value; (自定义最小高度)
  ContainerBuilder minHCustom(double minHeightValue) {
    _minHeight = minHeightValue;
    return this;
  }

  // === Max-Height 方法 - 建造者模式 ===
  /// max-h-0 -->gt; max-height: 0;
  ContainerBuilder maxH0() {
    _maxHeight = 0;
    return this;
  }
  
  /// max-h-px -->gt; max-height: 1px;
  ContainerBuilder maxHPx() {
    _maxHeight = 1;
    return this;
  }
  
  /// max-h-0.5 -->gt; max-height: 2px;
  ContainerBuilder maxH0_5() {
    _maxHeight = 2;
    return this;
  }
  
  /// max-h-1 -->gt; max-height: 4px;
  ContainerBuilder maxH1() {
    _maxHeight = 4;
    return this;
  }
  
  /// max-h-1.5 -->gt; max-height: 6px;
  ContainerBuilder maxH1_5() {
    _maxHeight = 6;
    return this;
  }
  
  /// max-h-2 -->gt; max-height: 8px;
  ContainerBuilder maxH2() {
    _maxHeight = 8;
    return this;
  }
  
  /// max-h-2.5 -->gt; max-height: 10px;
  ContainerBuilder maxH2_5() {
    _maxHeight = 10;
    return this;
  }
  
  /// max-h-3 -->gt; max-height: 12px;
  ContainerBuilder maxH3() {
    _maxHeight = 12;
    return this;
  }
  
  /// max-h-3.5 -->gt; max-height: 14px;
  ContainerBuilder maxH3_5() {
    _maxHeight = 14;
    return this;
  }
  
  /// max-h-4 -->gt; max-height: 16px;
  ContainerBuilder maxH4() {
    _maxHeight = 16;
    return this;
  }
  
  /// max-h-5 -->gt; max-height: 20px;
  ContainerBuilder maxH5() {
    _maxHeight = 20;
    return this;
  }
  
  /// max-h-6 -->gt; max-height: 24px;
  ContainerBuilder maxH6() {
    _maxHeight = 24;
    return this;
  }
  
  /// max-h-7 -->gt; max-height: 28px;
  ContainerBuilder maxH7() {
    _maxHeight = 28;
    return this;
  }
  
  /// max-h-8 -->gt; max-height: 32px;
  ContainerBuilder maxH8() {
    _maxHeight = 32;
    return this;
  }
  
  /// max-h-9 -->gt; max-height: 36px;
  ContainerBuilder maxH9() {
    _maxHeight = 36;
    return this;
  }
  
  /// max-h-10 -->gt; max-height: 40px;
  ContainerBuilder maxH10() {
    _maxHeight = 40;
    return this;
  }
  
  /// max-h-11 -->gt; max-height: 44px;
  ContainerBuilder maxH11() {
    _maxHeight = 44;
    return this;
  }
  
  /// max-h-12 -->gt; max-height: 48px;
  ContainerBuilder maxH12() {
    _maxHeight = 48;
    return this;
  }
  
  /// max-h-14 -->gt; max-height: 56px;
  ContainerBuilder maxH14() {
    _maxHeight = 56;
    return this;
  }
  
  /// max-h-16 -->gt; max-height: 64px;
  ContainerBuilder maxH16() {
    _maxHeight = 64;
    return this;
  }
  
  /// max-h-20 -->gt; max-height: 80px;
  ContainerBuilder maxH20() {
    _maxHeight = 80;
    return this;
  }
  
  /// max-h-24 -->gt; max-height: 96px;
  ContainerBuilder maxH24() {
    _maxHeight = 96;
    return this;
  }
  
  /// max-h-28 -->gt; max-height: 112px;
  ContainerBuilder maxH28() {
    _maxHeight = 112;
    return this;
  }
  
  /// max-h-32 -->gt; max-height: 128px;
  ContainerBuilder maxH32() {
    _maxHeight = 128;
    return this;
  }
  
  /// max-h-36 -->gt; max-height: 144px;
  ContainerBuilder maxH36() {
    _maxHeight = 144;
    return this;
  }
  
  /// max-h-40 -->gt; max-height: 160px;
  ContainerBuilder maxH40() {
    _maxHeight = 160;
    return this;
  }
  
  /// max-h-44 -->gt; max-height: 176px;
  ContainerBuilder maxH44() {
    _maxHeight = 176;
    return this;
  }
  
  /// max-h-48 -->gt; max-height: 192px;
  ContainerBuilder maxH48() {
    _maxHeight = 192;
    return this;
  }
  
  /// max-h-52 -->gt; max-height: 208px;
  ContainerBuilder maxH52() {
    _maxHeight = 208;
    return this;
  }
  
  /// max-h-56 -->gt; max-height: 224px;
  ContainerBuilder maxH56() {
    _maxHeight = 224;
    return this;
  }
  
  /// max-h-60 -->gt; max-height: 240px;
  ContainerBuilder maxH60() {
    _maxHeight = 240;
    return this;
  }
  
  /// max-h-64 -->gt; max-height: 256px;
  ContainerBuilder maxH64() {
    _maxHeight = 256;
    return this;
  }
  
  /// max-h-72 -->gt; max-height: 288px;
  ContainerBuilder maxH72() {
    _maxHeight = 288;
    return this;
  }
  
  /// max-h-80 -->gt; max-height: 320px;
  ContainerBuilder maxH80() {
    _maxHeight = 320;
    return this;
  }
  
  /// max-h-96 -->gt; max-height: 384px;
  ContainerBuilder maxH96() {
    _maxHeight = 384;
    return this;
  }
  
  /// max-h-auto -->gt; max-height: auto; (使用内容高度，不设置最大高度)
  ContainerBuilder maxHAuto() {
    _maxHeight = null;
    return this;
  }
  
  /// max-h-full -->gt; max-height: 100%;
  ContainerBuilder maxHFull() {
    _maxHeight = double.infinity;
    return this;
  }
  
  /// max-h-screen -->gt; max-height: 100vh;
  ContainerBuilder maxHScreen() {
    _maxHeight = double.infinity; // 在Flutter中通过MediaQuery获取屏幕高度
    return this;
  }
  
  /// max-h-min -->gt; max-height: min-content;
  ContainerBuilder maxHMin() {
    _maxHeight = 0; // Flutter中通过IntrinsicHeight实现
    return this;
  }
  
  /// max-h-max -->gt; max-height: max-content;
  ContainerBuilder maxHMax() {
    _maxHeight = 0; // Flutter中通过IntrinsicHeight实现
    return this;
  }
  
  /// max-h-fit -->gt; max-height: fit-content;
  ContainerBuilder maxHFit() {
    _maxHeight = 0; // Flutter中通过IntrinsicHeight实现
    return this;
  }
  
  /// max-h(double maxHeight) -->gt; max-height: value; (自定义最大高度 - 简洁版)
  ContainerBuilder maxH(double maxHeightValue) {
    _maxHeight = maxHeightValue;
    return this;
  }
  
  /// max-h-[value] -->gt; max-height: value; (自定义最大高度)
  ContainerBuilder maxHCustom(double maxHeightValue) {
    _maxHeight = maxHeightValue;
    return this;
  }

  // === 容器尺寸方法 - 建造者模式 ===
  // Min-Width 容器尺寸
  /// min-w-3xs -&gt; min-width: 16rem (256px);
  ContainerBuilder minW3xs() {
    _minWidth = 256;
    return this;
  }
  
  /// min-w-2xs -&gt; min-width: 18rem (288px);
  ContainerBuilder minW2xs() {
    _minWidth = 288;
    return this;
  }
  
  /// min-w-xs -->gt; min-width: 20rem (320px);
  ContainerBuilder minWxs() {
    _minWidth = 320;
    return this;
  }
  
  /// min-w-sm -->gt; min-width: 24rem (384px);
  ContainerBuilder minWsm() {
    _minWidth = 384;
    return this;
  }
  
  /// min-w-md -->gt; min-width: 28rem (448px);
  ContainerBuilder minWmd() {
    _minWidth = 448;
    return this;
  }
  
  /// min-w-lg -->gt; min-width: 32rem (512px);
  ContainerBuilder minWlg() {
    _minWidth = 512;
    return this;
  }
  
  /// min-w-xl -->gt; min-width: 36rem (576px);
  ContainerBuilder minWxl() {
    _minWidth = 576;
    return this;
  }
  
  /// min-w-2xl -->gt; min-width: 42rem (672px);
  ContainerBuilder minW2xl() {
    _minWidth = 672;
    return this;
  }
  
  /// min-w-3xl -->gt; min-width: 48rem (768px);
  ContainerBuilder minW3xl() {
    _minWidth = 768;
    return this;
  }
  
  /// min-w-4xl -->gt; min-width: 56rem (896px);
  ContainerBuilder minW4xl() {
    _minWidth = 896;
    return this;
  }
  
  /// min-w-5xl -->gt; min-width: 64rem (1024px);
  ContainerBuilder minW5xl() {
    _minWidth = 1024;
    return this;
  }
  
  /// min-w-6xl -->gt; min-width: 72rem (1152px);
  ContainerBuilder minW6xl() {
    _minWidth = 1152;
    return this;
  }
  
  /// min-w-7xl -->gt; min-width: 80rem (1280px);
  ContainerBuilder minW7xl() {
    _minWidth = 1280;
    return this;
  }

  // Max-Width 容器尺寸
  /// max-w-3xs -->gt; max-width: 16rem (256px);
  ContainerBuilder maxW3xs() {
    _maxWidth = 256;
    return this;
  }
  
  /// max-w-2xs -->gt; max-width: 18rem (288px);
  ContainerBuilder maxW2xs() {
    _maxWidth = 288;
    return this;
  }
  
  /// max-w-xs -->gt; max-width: 20rem (320px);
  ContainerBuilder maxWxs() {
    _maxWidth = 320;
    return this;
  }
  
  /// max-w-sm -->gt; max-width: 24rem (384px);
  ContainerBuilder maxWsm() {
    _maxWidth = 384;
    return this;
  }
  
  /// max-w-md -->gt; max-width: 28rem (448px);
  ContainerBuilder maxWmd() {
    _maxWidth = 448;
    return this;
  }
  
  /// max-w-lg -->gt; max-width: 32rem (512px);
  ContainerBuilder maxWlg() {
    _maxWidth = 512;
    return this;
  }
  
  /// max-w-xl -->gt; max-width: 36rem (576px);
  ContainerBuilder maxWxl() {
    _maxWidth = 576;
    return this;
  }
  
  /// max-w-2xl -->gt; max-width: 42rem (672px);
  ContainerBuilder maxW2xl() {
    _maxWidth = 672;
    return this;
  }
  
  /// max-w-3xl -->gt; max-width: 48rem (768px);
  ContainerBuilder maxW3xl() {
    _maxWidth = 768;
    return this;
  }
  
  /// max-w-4xl -->gt; max-width: 56rem (896px);
  ContainerBuilder maxW4xl() {
    _maxWidth = 896;
    return this;
  }
  
  /// max-w-5xl -->gt; max-width: 64rem (1024px);
  ContainerBuilder maxW5xl() {
    _maxWidth = 1024;
    return this;
  }
  
  /// max-w-6xl -->gt; max-width: 72rem (1152px);
  ContainerBuilder maxW6xl() {
    _maxWidth = 1152;
    return this;
  }
  
  /// max-w-7xl -->gt; max-width: 80rem (1280px);
  ContainerBuilder maxW7xl() {
    _maxWidth = 1280;
    return this;
  }

  // Min-Height 容器尺寸
  /// min-h-3xs -->gt; min-height: 16rem (256px);
  ContainerBuilder minH3xs() {
    _minHeight = 256;
    return this;
  }
  
  /// min-h-2xs -->gt; min-height: 18rem (288px);
  ContainerBuilder minH2xs() {
    _minHeight = 288;
    return this;
  }
  
  /// min-h-xs -->gt; min-height: 20rem (320px);
  ContainerBuilder minHxs() {
    _minHeight = 320;
    return this;
  }
  
  /// min-h-sm -->gt; min-height: 24rem (384px);
  ContainerBuilder minHsm() {
    _minHeight = 384;
    return this;
  }
  
  /// min-h-md -->gt; min-height: 28rem (448px);
  ContainerBuilder minHmd() {
    _minHeight = 448;
    return this;
  }
  
  /// min-h-lg -->gt; min-height: 32rem (512px);
  ContainerBuilder minHlg() {
    _minHeight = 512;
    return this;
  }
  
  /// min-h-xl -->gt; min-height: 36rem (576px);
  ContainerBuilder minHxl() {
    _minHeight = 576;
    return this;
  }
  
  /// min-h-2xl -->gt; min-height: 42rem (672px);
  ContainerBuilder minH2xl() {
    _minHeight = 672;
    return this;
  }
  
  /// min-h-3xl -->gt; min-height: 48rem (768px);
  ContainerBuilder minH3xl() {
    _minHeight = 768;
    return this;
  }
  
  /// min-h-4xl -->gt; min-height: 56rem (896px);
  ContainerBuilder minH4xl() {
    _minHeight = 896;
    return this;
  }
  
  /// min-h-5xl -->gt; min-height: 64rem (1024px);
  ContainerBuilder minH5xl() {
    _minHeight = 1024;
    return this;
  }
  
  /// min-h-6xl -->gt; min-height: 72rem (1152px);
  ContainerBuilder minH6xl() {
    _minHeight = 1152;
    return this;
  }
  
  /// min-h-7xl -->gt; min-height: 80rem (1280px);
  ContainerBuilder minH7xl() {
    _minHeight = 1280;
    return this;
  }

  // Max-Height 容器尺寸
  /// max-h-3xs -->gt; max-height: 16rem (256px);
  ContainerBuilder maxH3xs() {
    _maxHeight = 256;
    return this;
  }
  
  /// max-h-2xs -->gt; max-height: 18rem (288px);
  ContainerBuilder maxH2xs() {
    _maxHeight = 288;
    return this;
  }
  
  /// max-h-xs -->gt; max-height: 20rem (320px);
  ContainerBuilder maxHxs() {
    _maxHeight = 320;
    return this;
  }
  
  /// max-h-sm -->gt; max-height: 24rem (384px);
  ContainerBuilder maxHsm() {
    _maxHeight = 384;
    return this;
  }
  
  /// max-h-md -->gt; max-height: 28rem (448px);
  ContainerBuilder maxHmd() {
    _maxHeight = 448;
    return this;
  }
  
  /// max-h-lg -->gt; max-height: 32rem (512px);
  ContainerBuilder maxHlg() {
    _maxHeight = 512;
    return this;
  }
  
  /// max-h-xl -->gt; max-height: 36rem (576px);
  ContainerBuilder maxHxl() {
    _maxHeight = 576;
    return this;
  }
  
  /// max-h-2xl -->gt; max-height: 42rem (672px);
  ContainerBuilder maxH2xl() {
    _maxHeight = 672;
    return this;
  }
  
  /// max-h-3xl -->gt; max-height: 48rem (768px);
  ContainerBuilder maxH3xl() {
    _maxHeight = 768;
    return this;
  }
  
  /// max-h-4xl -->gt; max-height: 56rem (896px);
  ContainerBuilder maxH4xl() {
    _maxHeight = 896;
    return this;
  }
  
  /// max-h-5xl -->gt; max-height: 64rem (1024px);
  ContainerBuilder maxH5xl() {
    _maxHeight = 1024;
    return this;
  }
  
  /// max-h-6xl -->gt; max-height: 72rem (1152px);
  ContainerBuilder maxH6xl() {
    _maxHeight = 1152;
    return this;
  }
  
  /// max-h-7xl -->gt; max-height: 80rem (1280px);
  ContainerBuilder maxH7xl() {
    _maxHeight = 1280;
    return this;
  }
  
  // === 渐变 ===
  ContainerBuilder gradient(Gradient gradient) {
    _gradient = gradient;
    return this;
  }
  /// 最终构建方法 - 一次性创建Container
  Widget build() {
    // 构建 BoxDecoration
    BoxDecoration? decoration;
    
    // 处理边框：合并 Border 和 BorderDirectional
    Border? finalBorder = _border;
    if (_borderDirectional != null) {
      // 如果有 BorderDirectional，需要与现有 Border 合并
      // BoxDecoration 不支持 BorderDirectional，我们需要根据 TextDirection 转换
      // 使用 Builder 来获取当前的 TextDirection
      final borderDir = _borderDirectional!;
      final textDir = _textDirection;
      
      // 根据 TextDirection 决定 start/end 对应 left/right
      BorderSide leftSide = borderDir.start;
      BorderSide rightSide = borderDir.end;
      
      // 如果指定了 TextDirection 且为 RTL，交换 left 和 right
      if (textDir == TextDirection.rtl) {
        leftSide = borderDir.end;
        rightSide = borderDir.start;
      }
      
      // 合并边框
      if (_border != null) {
        finalBorder = Border(
          top: _border!.top,
          bottom: _border!.bottom,
          left: borderDir.start.width > 0 ? leftSide : _border!.left,
          right: borderDir.end.width > 0 ? rightSide : _border!.right,
        );
      } else {
        finalBorder = Border(
          top: borderDir.top,
          bottom: borderDir.bottom,
          left: leftSide,
          right: rightSide,
        );
      }
    }
    
    if (_backgroundColor != null || 
        finalBorder != null || 
        _borderRadius != null || 
        _boxShadow != null ||
        _gradient != null) {
      decoration = BoxDecoration(
        color: _gradient == null ? _backgroundColor : null, // 如果有渐变就不设置color
        border: finalBorder,
        borderRadius: _borderRadius,
        boxShadow: _boxShadow,
        gradient: _gradient,
        backgroundBlendMode: _backgroundBlendMode,
        shape: _shape,
      );
    }
    
    // 构建约束
    BoxConstraints? constraints = _constraints;
    if (_minWidth != null || _maxWidth != null || _minHeight != null || _maxHeight != null) {
      constraints = BoxConstraints(
        minWidth: _minWidth ?? (constraints?.minWidth ?? 0),
        maxWidth: _maxWidth ?? (constraints?.maxWidth ?? double.infinity),
        minHeight: _minHeight ?? (constraints?.minHeight ?? 0),
        maxHeight: _maxHeight ?? (constraints?.maxHeight ?? double.infinity),
      );
    }
    
    // 如果有 BorderDirectional 且需要 RTL 支持，使用 Builder 获取 TextDirection
    Widget container;
    if (_borderDirectional != null && _textDirection == null) {
      // 如果没有指定 TextDirection，使用 Builder 从上下文获取
      container = Builder(
        builder: (context) {
          final textDir = Directionality.of(context);
          Border? dynamicBorder = _border;
          
          if (_borderDirectional != null) {
            final borderDir = _borderDirectional!;
            BorderSide leftSide = borderDir.start;
            BorderSide rightSide = borderDir.end;
            
            if (textDir == TextDirection.rtl) {
              leftSide = borderDir.end;
              rightSide = borderDir.start;
            }
            
            if (_border != null) {
              dynamicBorder = Border(
                top: _border!.top,
                bottom: _border!.bottom,
                left: borderDir.start.width > 0 ? leftSide : _border!.left,
                right: borderDir.end.width > 0 ? rightSide : _border!.right,
              );
            } else {
              dynamicBorder = Border(
                top: borderDir.top,
                bottom: borderDir.bottom,
                left: leftSide,
                right: rightSide,
              );
            }
          }
          
          BoxDecoration? dynamicDecoration = decoration;
          if (dynamicBorder != finalBorder && dynamicDecoration != null) {
            dynamicDecoration = BoxDecoration(
              color: dynamicDecoration.color,
              border: dynamicBorder,
              borderRadius: dynamicDecoration.borderRadius,
              boxShadow: dynamicDecoration.boxShadow,
              gradient: dynamicDecoration.gradient,
              backgroundBlendMode: dynamicDecoration.backgroundBlendMode,
              shape: dynamicDecoration.shape,
            );
          }
          
          return Container(
            width: _width,
            height: _height,
            alignment: _alignment,
            padding: _padding,
            margin: _margin,
            constraints: constraints,
            transform: _transform,
            transformAlignment: _transformAlignment,
            decoration: dynamicDecoration ?? (dynamicBorder != null ? BoxDecoration(border: dynamicBorder) : null),
            foregroundDecoration: _foregroundDecoration,
            child: child,
          );
        },
      );
    } else {
      container = Container(
        width: _width,
        height: _height,
        alignment: _alignment,
        padding: _padding,
        margin: _margin,
        constraints: constraints,
        transform: _transform,
        transformAlignment: _transformAlignment,
        decoration: decoration,
        foregroundDecoration: _foregroundDecoration,
        child: child,
      );
    }
    
    // 如果设置了 aspect ratio，使用 AspectRatio widget 包裹
    if (_aspectRatio != null) {
      container = AspectRatio(
        aspectRatio: _aspectRatio!,
        child: container,
      );
    }
    
    // 如果设置了 z-index，使用 Transform 来模拟层级
    if (_zIndex != null) {
      container = Transform(
        transform: Matrix4.identity()..setTranslation(vm.Vector3(0.0, 0.0, _zIndex!.toDouble())),
        child: container,
      );
    }
    
    // 如果需要定位，包装成Positioned或PositionedDirectional
    if (_isPositioned) {
      // 如果使用了 start/end，使用 PositionedDirectional 以支持 RTL
      if (_positionStart != null || _positionEnd != null) {
        return PositionedDirectional(
          top: _positionTop,
          start: _positionStart,
          end: _positionEnd,
          bottom: _positionBottom,
          width: _positionWidth,
          height: _positionHeight,
          child: container,
        );
      } else {
        // 否则使用普通的 Positioned
        return Positioned(
          top: _positionTop,
          right: _positionRight,
          bottom: _positionBottom,
          left: _positionLeft,
          width: _positionWidth,
          height: _positionHeight,
          child: container,
        );
      }
    }
    
    return container;
  }
}

/// Text 到 ContainerBuilder 的转换扩展
extension TextToContainerBuilder on Text {
  /// 将 Text 转换为 ContainerBuilder，开始样式链式调用 (新的建造者模式)
  ContainerBuilder asContainer() {
    return ContainerBuilder(this);
  }
  
  /// @deprecated 使用新的建造者模式 asContainer() 替代
  /// 将 Text 转换为 ContainerBuilder，开始样式链式调用
  @Deprecated('Use asContainer() instead. This will be removed in a future version.')
  ContainerBuilder asContainerBuilder() {
    return ContainerBuilder(this);
  }
}

/// Widget 到 ContainerBuilder 的转换扩展
extension WidgetToContainerBuilder on Widget {
  /// 将 Widget 转换为 ContainerBuilder，开始样式链式调用 (新的建造者模式)
  ContainerBuilder asContainer() {
    return ContainerBuilder(this);
  }
  
  /// @deprecated 使用新的建造者模式 asContainer() 替代
  /// 将 Widget 转换为 ContainerBuilder，开始样式链式调用
  @Deprecated('Use asContainer() instead. This will be removed in a future version.')
  ContainerBuilder asContainerBuilder() {
    return ContainerBuilder(this);
  }
}

/// List&lt;Widget&gt; 的Stack扩展
extension ListWidgetStackExtensions on List<Widget> {
  /// asStack() -> 转换为Stack布局建造者
  StackBuilder asStack({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return StackBuilder(
      children: this,
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      clipBehavior: clipBehavior,
    );
  }
}

/// Stack建造者 - 专门处理Stack布局
class StackBuilder {
  final List<Widget> children;
  final AlignmentGeometry alignment;
  final TextDirection? textDirection;
  final StackFit fit;
  final Clip clipBehavior;
  
  StackBuilder({
    required this.children,
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.fit = StackFit.loose,
    this.clipBehavior = Clip.hardEdge,
  });
  
  /// relative -->gt; 相对定位容器（就是普通的Stack）
  Widget relative() {
    return Stack(
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      clipBehavior: clipBehavior,
      children: children,
    );
  }
  
  /// 直接构建Stack
  Widget build() {
    return Stack(
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      clipBehavior: clipBehavior,
      children: children,
    );
  }
}

/// ContainerBuilder 的样式扩展 - TailwindCSS 风格的方法
extension ContainerBuilderTailwindExtensions on ContainerBuilder {
  
  // === 背景色快捷方法 ===
  // 基础颜色
  ContainerBuilder bgWhite() => backgroundColor(TwColors.white);
  ContainerBuilder bgBlack() => backgroundColor(TwColors.black);
  ContainerBuilder bgTransparent() => backgroundColor(TwColors.transparent);
  
  // Gray 系列
  ContainerBuilder bgGray50() => backgroundColor(TwColors.gray50);
  ContainerBuilder bgGray100() => backgroundColor(TwColors.gray100);
  ContainerBuilder bgGray200() => backgroundColor(TwColors.gray200);
  ContainerBuilder bgGray300() => backgroundColor(TwColors.gray300);
  ContainerBuilder bgGray400() => backgroundColor(TwColors.gray400);
  ContainerBuilder bgGray500() => backgroundColor(TwColors.gray500);
  ContainerBuilder bgGray600() => backgroundColor(TwColors.gray600);
  ContainerBuilder bgGray700() => backgroundColor(TwColors.gray700);
  ContainerBuilder bgGray800() => backgroundColor(TwColors.gray800);
  ContainerBuilder bgGray900() => backgroundColor(TwColors.gray900);
  ContainerBuilder bgGray950() => backgroundColor(TwColors.gray950);
  
  // Blue 系列
  ContainerBuilder bgBlue50() => backgroundColor(TwColors.blue50);
  ContainerBuilder bgBlue100() => backgroundColor(TwColors.blue100);
  ContainerBuilder bgBlue200() => backgroundColor(TwColors.blue200);
  ContainerBuilder bgBlue300() => backgroundColor(TwColors.blue300);
  ContainerBuilder bgBlue400() => backgroundColor(TwColors.blue400);
  ContainerBuilder bgBlue500() => backgroundColor(TwColors.blue500);
  ContainerBuilder bgBlue600() => backgroundColor(TwColors.blue600);
  ContainerBuilder bgBlue700() => backgroundColor(TwColors.blue700);
  ContainerBuilder bgBlue800() => backgroundColor(TwColors.blue800);
  ContainerBuilder bgBlue900() => backgroundColor(TwColors.blue900);
  ContainerBuilder bgBlue950() => backgroundColor(TwColors.blue950);
  
  // Green 系列
  ContainerBuilder bgGreen50() => backgroundColor(TwColors.green50);
  ContainerBuilder bgGreen100() => backgroundColor(TwColors.green100);
  ContainerBuilder bgGreen200() => backgroundColor(TwColors.green200);
  ContainerBuilder bgGreen300() => backgroundColor(TwColors.green300);
  ContainerBuilder bgGreen400() => backgroundColor(TwColors.green400);
  ContainerBuilder bgGreen500() => backgroundColor(TwColors.green500);
  ContainerBuilder bgGreen600() => backgroundColor(TwColors.green600);
  ContainerBuilder bgGreen700() => backgroundColor(TwColors.green700);
  ContainerBuilder bgGreen800() => backgroundColor(TwColors.green800);
  ContainerBuilder bgGreen900() => backgroundColor(TwColors.green900);
  ContainerBuilder bgGreen950() => backgroundColor(TwColors.green950);
  
  // Yellow 系列
  ContainerBuilder bgYellow50() => backgroundColor(TwColors.yellow50);
  ContainerBuilder bgYellow100() => backgroundColor(TwColors.yellow100);
  ContainerBuilder bgYellow200() => backgroundColor(TwColors.yellow200);
  ContainerBuilder bgYellow300() => backgroundColor(TwColors.yellow300);
  ContainerBuilder bgYellow400() => backgroundColor(TwColors.yellow400);
  ContainerBuilder bgYellow500() => backgroundColor(TwColors.yellow500);
  ContainerBuilder bgYellow600() => backgroundColor(TwColors.yellow600);
  ContainerBuilder bgYellow700() => backgroundColor(TwColors.yellow700);
  ContainerBuilder bgYellow800() => backgroundColor(TwColors.yellow800);
  ContainerBuilder bgYellow900() => backgroundColor(TwColors.yellow900);
  ContainerBuilder bgYellow950() => backgroundColor(TwColors.yellow950);
  
  // Red 系列
  ContainerBuilder bgRed50() => backgroundColor(TwColors.red50);
  ContainerBuilder bgRed100() => backgroundColor(TwColors.red100);
  ContainerBuilder bgRed200() => backgroundColor(TwColors.red200);
  ContainerBuilder bgRed300() => backgroundColor(TwColors.red300);
  ContainerBuilder bgRed400() => backgroundColor(TwColors.red400);
  ContainerBuilder bgRed500() => backgroundColor(TwColors.red500);
  ContainerBuilder bgRed600() => backgroundColor(TwColors.red600);
  ContainerBuilder bgRed700() => backgroundColor(TwColors.red700);
  ContainerBuilder bgRed800() => backgroundColor(TwColors.red800);
  ContainerBuilder bgRed900() => backgroundColor(TwColors.red900);
  ContainerBuilder bgRed950() => backgroundColor(TwColors.red950);
  
  // Purple 系列
  ContainerBuilder bgPurple50() => backgroundColor(TwColors.purple50);
  ContainerBuilder bgPurple100() => backgroundColor(TwColors.purple100);
  ContainerBuilder bgPurple200() => backgroundColor(TwColors.purple200);
  ContainerBuilder bgPurple300() => backgroundColor(TwColors.purple300);
  ContainerBuilder bgPurple400() => backgroundColor(TwColors.purple400);
  ContainerBuilder bgPurple500() => backgroundColor(TwColors.purple500);
  ContainerBuilder bgPurple600() => backgroundColor(TwColors.purple600);
  ContainerBuilder bgPurple700() => backgroundColor(TwColors.purple700);
  ContainerBuilder bgPurple800() => backgroundColor(TwColors.purple800);
  ContainerBuilder bgPurple900() => backgroundColor(TwColors.purple900);
  ContainerBuilder bgPurple950() => backgroundColor(TwColors.purple950);
  
  // Orange 系列
  ContainerBuilder bgOrange50() => backgroundColor(TwColors.orange50);
  ContainerBuilder bgOrange100() => backgroundColor(TwColors.orange100);
  ContainerBuilder bgOrange200() => backgroundColor(TwColors.orange200);
  ContainerBuilder bgOrange300() => backgroundColor(TwColors.orange300);
  ContainerBuilder bgOrange400() => backgroundColor(TwColors.orange400);
  ContainerBuilder bgOrange500() => backgroundColor(TwColors.orange500);
  ContainerBuilder bgOrange600() => backgroundColor(TwColors.orange600);
  ContainerBuilder bgOrange700() => backgroundColor(TwColors.orange700);
  ContainerBuilder bgOrange800() => backgroundColor(TwColors.orange800);
  ContainerBuilder bgOrange900() => backgroundColor(TwColors.orange900);
  ContainerBuilder bgOrange950() => backgroundColor(TwColors.orange950);
  
  // Amber 系列
  ContainerBuilder bgAmber50() => backgroundColor(TwColors.amber50);
  ContainerBuilder bgAmber100() => backgroundColor(TwColors.amber100);
  ContainerBuilder bgAmber200() => backgroundColor(TwColors.amber200);
  ContainerBuilder bgAmber300() => backgroundColor(TwColors.amber300);
  ContainerBuilder bgAmber400() => backgroundColor(TwColors.amber400);
  ContainerBuilder bgAmber500() => backgroundColor(TwColors.amber500);
  ContainerBuilder bgAmber600() => backgroundColor(TwColors.amber600);
  ContainerBuilder bgAmber700() => backgroundColor(TwColors.amber700);
  ContainerBuilder bgAmber800() => backgroundColor(TwColors.amber800);
  ContainerBuilder bgAmber900() => backgroundColor(TwColors.amber900);
  ContainerBuilder bgAmber950() => backgroundColor(TwColors.amber950);
  
  // Lime 系列
  ContainerBuilder bgLime50() => backgroundColor(TwColors.lime50);
  ContainerBuilder bgLime100() => backgroundColor(TwColors.lime100);
  ContainerBuilder bgLime200() => backgroundColor(TwColors.lime200);
  ContainerBuilder bgLime300() => backgroundColor(TwColors.lime300);
  ContainerBuilder bgLime400() => backgroundColor(TwColors.lime400);
  ContainerBuilder bgLime500() => backgroundColor(TwColors.lime500);
  ContainerBuilder bgLime600() => backgroundColor(TwColors.lime600);
  ContainerBuilder bgLime700() => backgroundColor(TwColors.lime700);
  ContainerBuilder bgLime800() => backgroundColor(TwColors.lime800);
  ContainerBuilder bgLime900() => backgroundColor(TwColors.lime900);
  ContainerBuilder bgLime950() => backgroundColor(TwColors.lime950);
  
  // Emerald 系列
  ContainerBuilder bgEmerald50() => backgroundColor(TwColors.emerald50);
  ContainerBuilder bgEmerald100() => backgroundColor(TwColors.emerald100);
  ContainerBuilder bgEmerald200() => backgroundColor(TwColors.emerald200);
  ContainerBuilder bgEmerald300() => backgroundColor(TwColors.emerald300);
  ContainerBuilder bgEmerald400() => backgroundColor(TwColors.emerald400);
  ContainerBuilder bgEmerald500() => backgroundColor(TwColors.emerald500);
  ContainerBuilder bgEmerald600() => backgroundColor(TwColors.emerald600);
  ContainerBuilder bgEmerald700() => backgroundColor(TwColors.emerald700);
  ContainerBuilder bgEmerald800() => backgroundColor(TwColors.emerald800);
  ContainerBuilder bgEmerald900() => backgroundColor(TwColors.emerald900);
  ContainerBuilder bgEmerald950() => backgroundColor(TwColors.emerald950);
  
  // Teal 系列
  ContainerBuilder bgTeal50() => backgroundColor(TwColors.teal50);
  ContainerBuilder bgTeal100() => backgroundColor(TwColors.teal100);
  ContainerBuilder bgTeal200() => backgroundColor(TwColors.teal200);
  ContainerBuilder bgTeal300() => backgroundColor(TwColors.teal300);
  ContainerBuilder bgTeal400() => backgroundColor(TwColors.teal400);
  ContainerBuilder bgTeal500() => backgroundColor(TwColors.teal500);
  ContainerBuilder bgTeal600() => backgroundColor(TwColors.teal600);
  ContainerBuilder bgTeal700() => backgroundColor(TwColors.teal700);
  ContainerBuilder bgTeal800() => backgroundColor(TwColors.teal800);
  ContainerBuilder bgTeal900() => backgroundColor(TwColors.teal900);
  ContainerBuilder bgTeal950() => backgroundColor(TwColors.teal950);
  
  // Cyan 系列
  ContainerBuilder bgCyan50() => backgroundColor(TwColors.cyan50);
  ContainerBuilder bgCyan100() => backgroundColor(TwColors.cyan100);
  ContainerBuilder bgCyan200() => backgroundColor(TwColors.cyan200);
  ContainerBuilder bgCyan300() => backgroundColor(TwColors.cyan300);
  ContainerBuilder bgCyan400() => backgroundColor(TwColors.cyan400);
  ContainerBuilder bgCyan500() => backgroundColor(TwColors.cyan500);
  ContainerBuilder bgCyan600() => backgroundColor(TwColors.cyan600);
  ContainerBuilder bgCyan700() => backgroundColor(TwColors.cyan700);
  ContainerBuilder bgCyan800() => backgroundColor(TwColors.cyan800);
  ContainerBuilder bgCyan900() => backgroundColor(TwColors.cyan900);
  ContainerBuilder bgCyan950() => backgroundColor(TwColors.cyan950);
  
  // Sky 系列
  ContainerBuilder bgSky50() => backgroundColor(TwColors.sky50);
  ContainerBuilder bgSky100() => backgroundColor(TwColors.sky100);
  ContainerBuilder bgSky200() => backgroundColor(TwColors.sky200);
  ContainerBuilder bgSky300() => backgroundColor(TwColors.sky300);
  ContainerBuilder bgSky400() => backgroundColor(TwColors.sky400);
  ContainerBuilder bgSky500() => backgroundColor(TwColors.sky500);
  ContainerBuilder bgSky600() => backgroundColor(TwColors.sky600);
  ContainerBuilder bgSky700() => backgroundColor(TwColors.sky700);
  ContainerBuilder bgSky800() => backgroundColor(TwColors.sky800);
  ContainerBuilder bgSky900() => backgroundColor(TwColors.sky900);
  ContainerBuilder bgSky950() => backgroundColor(TwColors.sky950);
  
  // Indigo 系列
  ContainerBuilder bgIndigo50() => backgroundColor(TwColors.indigo50);
  ContainerBuilder bgIndigo100() => backgroundColor(TwColors.indigo100);
  ContainerBuilder bgIndigo200() => backgroundColor(TwColors.indigo200);
  ContainerBuilder bgIndigo300() => backgroundColor(TwColors.indigo300);
  ContainerBuilder bgIndigo400() => backgroundColor(TwColors.indigo400);
  ContainerBuilder bgIndigo500() => backgroundColor(TwColors.indigo500);
  ContainerBuilder bgIndigo600() => backgroundColor(TwColors.indigo600);
  ContainerBuilder bgIndigo700() => backgroundColor(TwColors.indigo700);
  ContainerBuilder bgIndigo800() => backgroundColor(TwColors.indigo800);
  ContainerBuilder bgIndigo900() => backgroundColor(TwColors.indigo900);
  ContainerBuilder bgIndigo950() => backgroundColor(TwColors.indigo950);
  
  // Violet 系列
  ContainerBuilder bgViolet50() => backgroundColor(TwColors.violet50);
  ContainerBuilder bgViolet100() => backgroundColor(TwColors.violet100);
  ContainerBuilder bgViolet200() => backgroundColor(TwColors.violet200);
  ContainerBuilder bgViolet300() => backgroundColor(TwColors.violet300);
  ContainerBuilder bgViolet400() => backgroundColor(TwColors.violet400);
  ContainerBuilder bgViolet500() => backgroundColor(TwColors.violet500);
  ContainerBuilder bgViolet600() => backgroundColor(TwColors.violet600);
  ContainerBuilder bgViolet700() => backgroundColor(TwColors.violet700);
  ContainerBuilder bgViolet800() => backgroundColor(TwColors.violet800);
  ContainerBuilder bgViolet900() => backgroundColor(TwColors.violet900);
  ContainerBuilder bgViolet950() => backgroundColor(TwColors.violet950);
  
  // Fuchsia 系列
  ContainerBuilder bgFuchsia50() => backgroundColor(TwColors.fuchsia50);
  ContainerBuilder bgFuchsia100() => backgroundColor(TwColors.fuchsia100);
  ContainerBuilder bgFuchsia200() => backgroundColor(TwColors.fuchsia200);
  ContainerBuilder bgFuchsia300() => backgroundColor(TwColors.fuchsia300);
  ContainerBuilder bgFuchsia400() => backgroundColor(TwColors.fuchsia400);
  ContainerBuilder bgFuchsia500() => backgroundColor(TwColors.fuchsia500);
  ContainerBuilder bgFuchsia600() => backgroundColor(TwColors.fuchsia600);
  ContainerBuilder bgFuchsia700() => backgroundColor(TwColors.fuchsia700);
  ContainerBuilder bgFuchsia800() => backgroundColor(TwColors.fuchsia800);
  ContainerBuilder bgFuchsia900() => backgroundColor(TwColors.fuchsia900);
  ContainerBuilder bgFuchsia950() => backgroundColor(TwColors.fuchsia950);
  
  // Pink 系列
  ContainerBuilder bgPink50() => backgroundColor(TwColors.pink50);
  ContainerBuilder bgPink100() => backgroundColor(TwColors.pink100);
  ContainerBuilder bgPink200() => backgroundColor(TwColors.pink200);
  ContainerBuilder bgPink300() => backgroundColor(TwColors.pink300);
  ContainerBuilder bgPink400() => backgroundColor(TwColors.pink400);
  ContainerBuilder bgPink500() => backgroundColor(TwColors.pink500);
  ContainerBuilder bgPink600() => backgroundColor(TwColors.pink600);
  ContainerBuilder bgPink700() => backgroundColor(TwColors.pink700);
  ContainerBuilder bgPink800() => backgroundColor(TwColors.pink800);
  ContainerBuilder bgPink900() => backgroundColor(TwColors.pink900);
  ContainerBuilder bgPink950() => backgroundColor(TwColors.pink950);
  
  // Rose 系列
  ContainerBuilder bgRose50() => backgroundColor(TwColors.rose50);
  ContainerBuilder bgRose100() => backgroundColor(TwColors.rose100);
  ContainerBuilder bgRose200() => backgroundColor(TwColors.rose200);
  ContainerBuilder bgRose300() => backgroundColor(TwColors.rose300);
  ContainerBuilder bgRose400() => backgroundColor(TwColors.rose400);
  ContainerBuilder bgRose500() => backgroundColor(TwColors.rose500);
  ContainerBuilder bgRose600() => backgroundColor(TwColors.rose600);
  ContainerBuilder bgRose700() => backgroundColor(TwColors.rose700);
  ContainerBuilder bgRose800() => backgroundColor(TwColors.rose800);
  ContainerBuilder bgRose900() => backgroundColor(TwColors.rose900);
  ContainerBuilder bgRose950() => backgroundColor(TwColors.rose950);
  
  // Slate 系列
  ContainerBuilder bgSlate50() => backgroundColor(TwColors.slate50);
  ContainerBuilder bgSlate100() => backgroundColor(TwColors.slate100);
  ContainerBuilder bgSlate200() => backgroundColor(TwColors.slate200);
  ContainerBuilder bgSlate300() => backgroundColor(TwColors.slate300);
  ContainerBuilder bgSlate400() => backgroundColor(TwColors.slate400);
  ContainerBuilder bgSlate500() => backgroundColor(TwColors.slate500);
  ContainerBuilder bgSlate600() => backgroundColor(TwColors.slate600);
  ContainerBuilder bgSlate700() => backgroundColor(TwColors.slate700);
  ContainerBuilder bgSlate800() => backgroundColor(TwColors.slate800);
  ContainerBuilder bgSlate900() => backgroundColor(TwColors.slate900);
  ContainerBuilder bgSlate950() => backgroundColor(TwColors.slate950);
  
  // Zinc 系列
  ContainerBuilder bgZinc50() => backgroundColor(TwColors.zinc50);
  ContainerBuilder bgZinc100() => backgroundColor(TwColors.zinc100);
  ContainerBuilder bgZinc200() => backgroundColor(TwColors.zinc200);
  ContainerBuilder bgZinc300() => backgroundColor(TwColors.zinc300);
  ContainerBuilder bgZinc400() => backgroundColor(TwColors.zinc400);
  ContainerBuilder bgZinc500() => backgroundColor(TwColors.zinc500);
  ContainerBuilder bgZinc600() => backgroundColor(TwColors.zinc600);
  ContainerBuilder bgZinc700() => backgroundColor(TwColors.zinc700);
  ContainerBuilder bgZinc800() => backgroundColor(TwColors.zinc800);
  ContainerBuilder bgZinc900() => backgroundColor(TwColors.zinc900);
  ContainerBuilder bgZinc950() => backgroundColor(TwColors.zinc950);
  
  // Neutral 系列
  ContainerBuilder bgNeutral50() => backgroundColor(TwColors.neutral50);
  ContainerBuilder bgNeutral100() => backgroundColor(TwColors.neutral100);
  ContainerBuilder bgNeutral200() => backgroundColor(TwColors.neutral200);
  ContainerBuilder bgNeutral300() => backgroundColor(TwColors.neutral300);
  ContainerBuilder bgNeutral400() => backgroundColor(TwColors.neutral400);
  ContainerBuilder bgNeutral500() => backgroundColor(TwColors.neutral500);
  ContainerBuilder bgNeutral600() => backgroundColor(TwColors.neutral600);
  ContainerBuilder bgNeutral700() => backgroundColor(TwColors.neutral700);
  ContainerBuilder bgNeutral800() => backgroundColor(TwColors.neutral800);
  ContainerBuilder bgNeutral900() => backgroundColor(TwColors.neutral900);
  ContainerBuilder bgNeutral950() => backgroundColor(TwColors.neutral950);
  
  // Stone 系列
  ContainerBuilder bgStone50() => backgroundColor(TwColors.stone50);
  ContainerBuilder bgStone100() => backgroundColor(TwColors.stone100);
  ContainerBuilder bgStone200() => backgroundColor(TwColors.stone200);
  ContainerBuilder bgStone300() => backgroundColor(TwColors.stone300);
  ContainerBuilder bgStone400() => backgroundColor(TwColors.stone400);
  ContainerBuilder bgStone500() => backgroundColor(TwColors.stone500);
  ContainerBuilder bgStone600() => backgroundColor(TwColors.stone600);
  ContainerBuilder bgStone700() => backgroundColor(TwColors.stone700);
  ContainerBuilder bgStone800() => backgroundColor(TwColors.stone800);
  ContainerBuilder bgStone900() => backgroundColor(TwColors.stone900);
  ContainerBuilder bgStone950() => backgroundColor(TwColors.stone950);
  
  // === 内边距快捷方法 ===
  ContainerBuilder px1() => paddingHorizontal(4);
  ContainerBuilder px2() => paddingHorizontal(8);
  ContainerBuilder px3() => paddingHorizontal(12);
  ContainerBuilder px4() => paddingHorizontal(16);
  ContainerBuilder px5() => paddingHorizontal(20);
  ContainerBuilder px6() => paddingHorizontal(24);
  ContainerBuilder px7() => paddingHorizontal(28);
  ContainerBuilder px8() => paddingHorizontal(32);
  
  ContainerBuilder py1() => paddingVertical(4);
  ContainerBuilder py2() => paddingVertical(8);
  ContainerBuilder py3() => paddingVertical(12);
  ContainerBuilder py4() => paddingVertical(16);
  ContainerBuilder py5() => paddingVertical(20);
  ContainerBuilder py6() => paddingVertical(24);
  ContainerBuilder py7() => paddingVertical(28);
  ContainerBuilder py8() => paddingVertical(32);
  
  ContainerBuilder p1() => paddingAll(4);
  ContainerBuilder p2() => paddingAll(8);
  ContainerBuilder p3() => paddingAll(12);
  ContainerBuilder p4() => paddingAll(16);
  ContainerBuilder p5() => paddingAll(20);
  ContainerBuilder p6() => paddingAll(24);
  ContainerBuilder p7() => paddingAll(28);
  ContainerBuilder p8() => paddingAll(32);
  
  // === 边框快捷方法 ===
  /// border-2 - 设置边框宽度为2px
  ContainerBuilder border2({Color color = const Color(0xFFE5E7EB)}) => borderAll(color: color, width: 2.0);
  
  /// border-4 - 设置边框宽度为4px  
  ContainerBuilder border4({Color color = const Color(0xFFE5E7EB)}) => borderAll(color: color, width: 4.0);
  
  ContainerBuilder borderWidth1() => borderAll(width: 1.0);
  ContainerBuilder borderWidth2() => borderAll(width: 2.0);
  ContainerBuilder borderWidth4() => borderAll(width: 4.0);
  
  // 边框颜色 - Gray 系列
  ContainerBuilder borderGray50() => borderAll(color: TwColors.gray50);
  ContainerBuilder borderGray100() => borderAll(color: TwColors.gray100);
  ContainerBuilder borderGray200() => borderAll(color: TwColors.gray200);
  ContainerBuilder borderGray300() => borderAll(color: TwColors.gray300);
  ContainerBuilder borderGray400() => borderAll(color: TwColors.gray400);
  ContainerBuilder borderGray500() => borderAll(color: TwColors.gray500);
  ContainerBuilder borderGray600() => borderAll(color: TwColors.gray600);
  ContainerBuilder borderGray700() => borderAll(color: TwColors.gray700);
  ContainerBuilder borderGray800() => borderAll(color: TwColors.gray800);
  ContainerBuilder borderGray900() => borderAll(color: TwColors.gray900);
  ContainerBuilder borderGray950() => borderAll(color: TwColors.gray950);
  
  // 边框颜色 - Blue 系列
  ContainerBuilder borderBlue50() => borderAll(color: TwColors.blue50);
  ContainerBuilder borderBlue100() => borderAll(color: TwColors.blue100);
  ContainerBuilder borderBlue200() => borderAll(color: TwColors.blue200);
  ContainerBuilder borderBlue300() => borderAll(color: TwColors.blue300);
  ContainerBuilder borderBlue400() => borderAll(color: TwColors.blue400);
  ContainerBuilder borderBlue500() => borderAll(color: TwColors.blue500);
  ContainerBuilder borderBlue600() => borderAll(color: TwColors.blue600);
  ContainerBuilder borderBlue700() => borderAll(color: TwColors.blue700);
  ContainerBuilder borderBlue800() => borderAll(color: TwColors.blue800);
  ContainerBuilder borderBlue900() => borderAll(color: TwColors.blue900);
  ContainerBuilder borderBlue950() => borderAll(color: TwColors.blue950);
  
  // 边框颜色 - Red 系列
  ContainerBuilder borderRed50() => borderAll(color: TwColors.red50);
  ContainerBuilder borderRed100() => borderAll(color: TwColors.red100);
  ContainerBuilder borderRed200() => borderAll(color: TwColors.red200);
  ContainerBuilder borderRed300() => borderAll(color: TwColors.red300);
  ContainerBuilder borderRed400() => borderAll(color: TwColors.red400);
  ContainerBuilder borderRed500() => borderAll(color: TwColors.red500);
  ContainerBuilder borderRed600() => borderAll(color: TwColors.red600);
  ContainerBuilder borderRed700() => borderAll(color: TwColors.red700);
  ContainerBuilder borderRed800() => borderAll(color: TwColors.red800);
  ContainerBuilder borderRed900() => borderAll(color: TwColors.red900);
  ContainerBuilder borderRed950() => borderAll(color: TwColors.red950);
  
  // 边框颜色 - Green 系列
  ContainerBuilder borderGreen50() => borderAll(color: TwColors.green50);
  ContainerBuilder borderGreen100() => borderAll(color: TwColors.green100);
  ContainerBuilder borderGreen200() => borderAll(color: TwColors.green200);
  ContainerBuilder borderGreen300() => borderAll(color: TwColors.green300);
  ContainerBuilder borderGreen400() => borderAll(color: TwColors.green400);
  ContainerBuilder borderGreen500() => borderAll(color: TwColors.green500);
  ContainerBuilder borderGreen600() => borderAll(color: TwColors.green600);
  ContainerBuilder borderGreen700() => borderAll(color: TwColors.green700);
  ContainerBuilder borderGreen800() => borderAll(color: TwColors.green800);
  ContainerBuilder borderGreen900() => borderAll(color: TwColors.green900);
  ContainerBuilder borderGreen950() => borderAll(color: TwColors.green950);
  
  // 边框颜色 - Yellow 系列
  ContainerBuilder borderYellow50() => borderAll(color: TwColors.yellow50);
  ContainerBuilder borderYellow100() => borderAll(color: TwColors.yellow100);
  ContainerBuilder borderYellow200() => borderAll(color: TwColors.yellow200);
  ContainerBuilder borderYellow300() => borderAll(color: TwColors.yellow300);
  ContainerBuilder borderYellow400() => borderAll(color: TwColors.yellow400);
  ContainerBuilder borderYellow500() => borderAll(color: TwColors.yellow500);
  ContainerBuilder borderYellow600() => borderAll(color: TwColors.yellow600);
  ContainerBuilder borderYellow700() => borderAll(color: TwColors.yellow700);
  ContainerBuilder borderYellow800() => borderAll(color: TwColors.yellow800);
  ContainerBuilder borderYellow900() => borderAll(color: TwColors.yellow900);
  ContainerBuilder borderYellow950() => borderAll(color: TwColors.yellow950);
  
  // 边框颜色 - Purple 系列
  ContainerBuilder borderPurple50() => borderAll(color: TwColors.purple50);
  ContainerBuilder borderPurple100() => borderAll(color: TwColors.purple100);
  ContainerBuilder borderPurple200() => borderAll(color: TwColors.purple200);
  ContainerBuilder borderPurple300() => borderAll(color: TwColors.purple300);
  ContainerBuilder borderPurple400() => borderAll(color: TwColors.purple400);
  ContainerBuilder borderPurple500() => borderAll(color: TwColors.purple500);
  ContainerBuilder borderPurple600() => borderAll(color: TwColors.purple600);
  ContainerBuilder borderPurple700() => borderAll(color: TwColors.purple700);
  ContainerBuilder borderPurple800() => borderAll(color: TwColors.purple800);
  ContainerBuilder borderPurple900() => borderAll(color: TwColors.purple900);
  ContainerBuilder borderPurple950() => borderAll(color: TwColors.purple950);
  
  // === 圆角快捷方法 ===
  ContainerBuilder rounded() => borderRadiusCircular(4);
  ContainerBuilder roundedSm() => borderRadiusCircular(2);
  ContainerBuilder roundedMd() => borderRadiusCircular(6);
  ContainerBuilder roundedLg() => borderRadiusCircular(8);
  ContainerBuilder roundedXl() => borderRadiusCircular(12);
  ContainerBuilder rounded2xl() => borderRadiusCircular(16);
  
  ContainerBuilder rounded4() => borderRadiusCircular(4);
  ContainerBuilder rounded6() => borderRadiusCircular(6);
  ContainerBuilder rounded8() => borderRadiusCircular(8);
  ContainerBuilder rounded12() => borderRadiusCircular(12);
  ContainerBuilder rounded16() => borderRadiusCircular(16);
  
  ContainerBuilder r4() => borderRadiusCircular(4);
  ContainerBuilder r6() => borderRadiusCircular(6);
  ContainerBuilder r8() => borderRadiusCircular(8);
  ContainerBuilder r12() => borderRadiusCircular(12);
  ContainerBuilder r16() => borderRadiusCircular(16);
  
  // === RTL 支持的圆角方法 ===
  /// rounded-s -> 设置开始方向的圆角（LTR 时为 left，RTL 时为 right）
  ContainerBuilder roundedS(double radius) {
    if (_borderRadius == null) {
      _borderRadius = BorderRadiusDirectional.only(
        topStart: Radius.circular(radius),
        bottomStart: Radius.circular(radius),
      );
    } else if (_borderRadius is BorderRadiusDirectional) {
      final existing = _borderRadius as BorderRadiusDirectional;
      _borderRadius = BorderRadiusDirectional.only(
        topStart: Radius.circular(radius),
        topEnd: existing.topEnd,
        bottomStart: Radius.circular(radius),
        bottomEnd: existing.bottomEnd,
      );
    } else if (_borderRadius is BorderRadius) {
      // 如果之前使用的是 BorderRadius，转换为 BorderRadiusDirectional
      final existing = _borderRadius as BorderRadius;
      _borderRadius = BorderRadiusDirectional.only(
        topStart: Radius.circular(radius),
        topEnd: existing.topRight,
        bottomStart: Radius.circular(radius),
        bottomEnd: existing.bottomRight,
      );
    }
    return this;
  }
  
  /// rounded-e -> 设置结束方向的圆角（LTR 时为 right，RTL 时为 left）
  ContainerBuilder roundedE(double radius) {
    if (_borderRadius == null) {
      _borderRadius = BorderRadiusDirectional.only(
        topEnd: Radius.circular(radius),
        bottomEnd: Radius.circular(radius),
      );
    } else if (_borderRadius is BorderRadiusDirectional) {
      final existing = _borderRadius as BorderRadiusDirectional;
      _borderRadius = BorderRadiusDirectional.only(
        topStart: existing.topStart,
        topEnd: Radius.circular(radius),
        bottomStart: existing.bottomStart,
        bottomEnd: Radius.circular(radius),
      );
    } else if (_borderRadius is BorderRadius) {
      // 如果之前使用的是 BorderRadius，转换为 BorderRadiusDirectional
      final existing = _borderRadius as BorderRadius;
      _borderRadius = BorderRadiusDirectional.only(
        topStart: existing.topLeft,
        topEnd: Radius.circular(radius),
        bottomStart: existing.bottomLeft,
        bottomEnd: Radius.circular(radius),
      );
    }
    return this;
  }
  
  // rounded-s 快捷方法
  ContainerBuilder roundedS0() => roundedS(0);
  ContainerBuilder roundedS1() => roundedS(4);
  ContainerBuilder roundedS2() => roundedS(8);
  ContainerBuilder roundedS4() => roundedS(16);
  ContainerBuilder roundedS6() => roundedS(24);
  ContainerBuilder roundedS8() => roundedS(32);
  
  // rounded-e 快捷方法
  ContainerBuilder roundedE0() => roundedE(0);
  ContainerBuilder roundedE1() => roundedE(4);
  ContainerBuilder roundedE2() => roundedE(8);
  ContainerBuilder roundedE4() => roundedE(16);
  ContainerBuilder roundedE6() => roundedE(24);
  ContainerBuilder roundedE8() => roundedE(32);
  
  // === 阴影快捷方法 ===
  ContainerBuilder shadow() => boxShadow([
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.06),
      blurRadius: 2,
      offset: const Offset(0, 1),
    ),
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.04),
      blurRadius: 1,
      offset: const Offset(0, 1),
      spreadRadius: -0.5,
    ),
  ]);
  
  ContainerBuilder shadowSm() => boxShadow([
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.05),
      blurRadius: 1,
      offset: const Offset(0, 1),
    ),
  ]);
  
  ContainerBuilder shadowMd() => boxShadow([
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.1),
      blurRadius: 6,
      offset: const Offset(0, 4),
      spreadRadius: -2,
    ),
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.05),
      blurRadius: 4,
      offset: const Offset(0, 2),
      spreadRadius: -1,
    ),
  ]);
  
  ContainerBuilder shadowLg() => boxShadow([
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.1),
      blurRadius: 15,
      offset: const Offset(0, 10),
      spreadRadius: -3,
    ),
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.05),
      blurRadius: 6,
      offset: const Offset(0, 4),
      spreadRadius: -2,
    ),
  ]);
}

/// 为了向后兼容，保留原有的 asContainer 方法
extension ContainerBuilderCompatibility on ContainerBuilder {
  /// 兼容原有的 asContainer 调用 - 直接构建
  Widget asContainer() {
    return build();
  }
}

/// 为 ContainerBuilder 添加交互扩展
extension ContainerBuilderInteraction on ContainerBuilder {
  /// 添加点击事件，自动构建 Container 并包装 GestureDetector
  Widget onTap(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: build(), // 自动调用build()
    );
  }
}

/// ContainerBuilder 的Flex布局扩展 - TailwindCSS风格的flex类
extension ContainerBuilderFlexExtensions on ContainerBuilder {
  /// flex-1 -->gt; Expanded(flex: 1)
  Widget flex1() {
    return Expanded(
      flex: 1,
      child: build(),
    );
  }
  
  /// flex-2 -->gt; Expanded(flex: 2)
  Widget flex2() {
    return Expanded(
      flex: 2,
      child: build(),
    );
  }
  
  /// flex-3 -->gt; Expanded(flex: 3)
  Widget flex3() {
    return Expanded(
      flex: 3,
      child: build(),
    );
  }
  
  /// flex-4 -->gt; Expanded(flex: 4)
  Widget flex4() {
    return Expanded(
      flex: 4,
      child: build(),
    );
  }
  
  /// flex-5 -->gt; Expanded(flex: 5)
  Widget flex5() {
    return Expanded(
      flex: 5,
      child: build(),
    );
  }
  
  /// flex-6 -->gt; Expanded(flex: 6)
  Widget flex6() {
    return Expanded(
      flex: 6,
      child: build(),
    );
  }
  
  /// flex-auto -->gt; Flexible(fit: FlexFit.loose)
  Widget flexAuto() {
    return Flexible(
      fit: FlexFit.loose,
      child: build(),
    );
  }
  
  /// flex-initial -->gt; Flexible(fit: FlexFit.loose, flex: 0)
  Widget flexInitial() {
    return Flexible(
      flex: 0,
      fit: FlexFit.loose,
      child: build(),
    );
  }
  
  /// flex-none -->gt; 不使用flex，保持原有尺寸
  Widget flexNone() {
    return build();
  }
  
  /// 自定义flex值 - flex(value)
  Widget flex(int flexValue) {
    return Expanded(
      flex: flexValue,
      child: build(),
    );
  }
  
  /// 自定义Flexible - flexible(flex, fit)
  Widget flexible({int flex = 1, FlexFit fit = FlexFit.loose}) {
    return Flexible(
      flex: flex,
      fit: fit,
      child: build(),
    );
  }
}

/// ContainerBuilder 的Position布局扩展 - TailwindCSS风格的position类
extension ContainerBuilderPositionExtensions on ContainerBuilder {
  /// position() -->gt; 设置为定位元素，启用绝对定位
  ContainerBuilder position() {
    _isPositioned = true;
    return this;
  }
  
  /// static -->gt; 默认定位（不做任何处理）
  Widget positionStatic() {
    return build();
  }
  
  /// relative -->gt; 相对定位
  Widget positionRelative() {
    return build();
  }
  
  /// absolute -->gt; 绝对定位
  Widget positionAbsolute({
    double? top,
    double? right,
    double? bottom,
    double? left,
    double? width,
    double? height,
  }) {
    _isPositioned = true;
    _positionTop = top;
    _positionRight = right;
    _positionBottom = bottom;
    _positionLeft = left;
    _positionWidth = width;
    _positionHeight = height;
    return build();
  }
  
  /// fixed -->gt; 固定定位（在Stack中相对于Stack容器）
  Widget positionFixed({
    double? top,
    double? right,
    double? bottom,
    double? left,
    double? width,
    double? height,
  }) {
    return Positioned(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
      width: width,
      height: height,
      child: build(),
    );
  }
  
  /// sticky -->gt; 粘性定位（在SingleChildScrollView中实现）
  Widget positionSticky() {
    // Flutter中的粘性定位需要特殊处理，这里先返回普通构建
    return build();
  }
  
  // === TailwindCSS风格的定位简写 ===
  
  /// top-0 -->gt; top: 0
  ContainerBuilder top0() {
    _positionTop = 0;
    return this;
  }
  
  /// top-1 -->gt; top: 4px
  ContainerBuilder top1() {
    _positionTop = 4;
    return this;
  }
  
  /// top-2 -->gt; top: 8px
  ContainerBuilder top2() {
    _positionTop = 8;
    return this;
  }
  
  /// top-4 -->gt; top: 16px
  ContainerBuilder top4() {
    _positionTop = 16;
    return this;
  }
  
  /// top(double value) -->gt; top: value
  ContainerBuilder top(double value) {
    _positionTop = value;
    return this;
  }
  
  /// right-0 -->gt; right: 0
  ContainerBuilder right0() {
    _positionRight = 0;
    return this;
  }
  
  /// right-1 -->gt; right: 4px
  ContainerBuilder right1() {
    _positionRight = 4;
    return this;
  }
  
  /// right-2 -->gt; right: 8px
  ContainerBuilder right2() {
    _positionRight = 8;
    return this;
  }
  
  /// right-4 -->gt; right: 16px
  ContainerBuilder right4() {
    _positionRight = 16;
    return this;
  }
  
  /// right(double value) -->gt; right: value
  ContainerBuilder right(double value) {
    _positionRight = value;
    return this;
  }
  
  /// bottom-0 -->gt; bottom: 0
  ContainerBuilder bottom0() {
    _positionBottom = 0;
    return this;
  }
  
  /// bottom-1 -->gt; bottom: 4px
  ContainerBuilder bottom1() {
    _positionBottom = 4;
    return this;
  }
  
  /// bottom-2 -->gt; bottom: 8px
  ContainerBuilder bottom2() {
    _positionBottom = 8;
    return this;
  }
  
  /// bottom-4 -->gt; bottom: 16px
  ContainerBuilder bottom4() {
    _positionBottom = 16;
    return this;
  }
  
  /// bottom(double value) -->gt; bottom: value
  ContainerBuilder bottom(double value) {
    _positionBottom = value;
    return this;
  }
  
  /// left-0 -->gt; left: 0
  ContainerBuilder left0() {
    _positionLeft = 0;
    return this;
  }
  
  /// left-1 -->gt; left: 4px
  ContainerBuilder left1() {
    _positionLeft = 4;
    return this;
  }
  
  /// left-2 -->gt; left: 8px
  ContainerBuilder left2() {
    _positionLeft = 8;
    return this;
  }
  
  /// left-4 -->gt; left: 16px
  ContainerBuilder left4() {
    _positionLeft = 16;
    return this;
  }
  
  /// left(double value) -->gt; left: value
  ContainerBuilder left(double value) {
    _positionLeft = value;
    return this;
  }
  
  /// inset-0 -->gt; top: 0, right: 0, bottom: 0, left: 0
  ContainerBuilder inset0() {
    _positionTop = 0;
    _positionRight = 0;
    _positionBottom = 0;
    _positionLeft = 0;
    return this;
  }
  
  /// inset-1 -->gt; top: 4px, right: 4px, bottom: 4px, left: 4px
  ContainerBuilder inset1() {
    _positionTop = 4;
    _positionRight = 4;
    _positionBottom = 4;
    _positionLeft = 4;
    return this;
  }
  
  /// inset-2 -->gt; top: 8px, right: 8px, bottom: 8px, left: 8px
  ContainerBuilder inset2() {
    _positionTop = 8;
    _positionRight = 8;
    _positionBottom = 8;
    _positionLeft = 8;
    return this;
  }
  
  /// inset-4 -->gt; top: 16px, right: 16px, bottom: 16px, left: 16px
  ContainerBuilder inset4() {
    _positionTop = 16;
    _positionRight = 16;
    _positionBottom = 16;
    _positionLeft = 16;
    return this;
  }
  
  /// inset-x-0 -->gt; left: 0, right: 0
  ContainerBuilder insetX0() {
    _positionLeft = 0;
    _positionRight = 0;
    return this;
  }
  
  /// inset-x-1 -->gt; left: 4px, right: 4px
  ContainerBuilder insetX1() {
    _positionLeft = 4;
    _positionRight = 4;
    return this;
  }
  
  /// inset-x-2 -->gt; left: 8px, right: 8px
  ContainerBuilder insetX2() {
    _positionLeft = 8;
    _positionRight = 8;
    return this;
  }
  
  /// inset-y-0 -->gt; top: 0, bottom: 0
  ContainerBuilder insetY0() {
    _positionTop = 0;
    _positionBottom = 0;
    return this;
  }
  
  /// inset-y-1 -->gt; top: 4px, bottom: 4px
  ContainerBuilder insetY1() {
    _positionTop = 4;
    _positionBottom = 4;
    return this;
  }
  
  /// inset-y-2 -->gt; top: 8px, bottom: 8px
  ContainerBuilder insetY2() {
    _positionTop = 8;
    _positionBottom = 8;
    return this;
  }
  
  /// 自定义位置 - positioned(top, right, bottom, left)
  ContainerBuilder positioned({
    double? top,
    double? right,
    double? bottom,
    double? left,
    double? width,
    double? height,
  }) {
    _isPositioned = true;
    _positionTop = top;
    _positionRight = right;
    _positionBottom = bottom;
    _positionLeft = left;
    _positionWidth = width;
    _positionHeight = height;
    return this;
  }
  
  // === RTL 支持：逻辑位置属性 ===
  
  /// start-{value} -> 设置开始方向的位置（LTR 时为 left，RTL 时为 right）
  ContainerBuilder start(double value) {
    _isPositioned = true;
    _positionStart = value;
    return this;
  }
  
  /// start-0 -> start: 0
  ContainerBuilder start0() => start(0);
  
  /// start-1 -> start: 4px
  ContainerBuilder start1() => start(4);
  
  /// start-2 -> start: 8px
  ContainerBuilder start2() => start(8);
  
  /// start-4 -> start: 16px
  ContainerBuilder start4() => start(16);
  
  /// end-{value} -> 设置结束方向的位置（LTR 时为 right，RTL 时为 left）
  ContainerBuilder end(double value) {
    _isPositioned = true;
    _positionEnd = value;
    return this;
  }
  
  /// end-0 -> end: 0
  ContainerBuilder end0() => end(0);
  
  /// end-1 -> end: 4px
  ContainerBuilder end1() => end(4);
  
  /// end-2 -> end: 8px
  ContainerBuilder end2() => end(8);
  
  /// end-4 -> end: 16px
  ContainerBuilder end4() => end(16);
}

/// ContainerBuilder 的Z-Index扩展 - TailwindCSS风格的z-index类
extension ContainerBuilderZIndexExtensions on ContainerBuilder {
  /// z-0 -> z-index: 0
  ContainerBuilder z0() {
    return zIndex(0);
  }
  
  /// z-10 -> z-index: 10
  ContainerBuilder z10() {
    return zIndex(10);
  }
  
  /// z-20 -> z-index: 20
  ContainerBuilder z20() {
    return zIndex(20);
  }
  
  /// z-30 -> z-index: 30
  ContainerBuilder z30() {
    return zIndex(30);
  }
  
  /// z-40 -> z-index: 40
  ContainerBuilder z40() {
    return zIndex(40);
  }
  
  /// z-50 -> z-index: 50
  ContainerBuilder z50() {
    return zIndex(50);
  }
  
  /// z-auto -> z-index: auto (默认值，不设置transform)
  ContainerBuilder zAuto() {
    _zIndex = null;
    return this;
  }
  
  // 扩展更多 z-index 值
  
  /// z-1 -> z-index: 1
  ContainerBuilder z1() {
    return zIndex(1);
  }
  
  /// z-2 -> z-index: 2
  ContainerBuilder z2() {
    return zIndex(2);
  }
  
  /// z-3 -> z-index: 3
  ContainerBuilder z3() {
    return zIndex(3);
  }
  
  /// z-4 -> z-index: 4
  ContainerBuilder z4() {
    return zIndex(4);
  }
  
  /// z-5 -> z-index: 5
  ContainerBuilder z5() {
    return zIndex(5);
  }
  
  /// z-negative-50 -> z-index: -50
  ContainerBuilder zNegative50() {
    return zIndex(-50);
  }
  
  /// z-negative-40 -> z-index: -40
  ContainerBuilder zNegative40() {
    return zIndex(-40);
  }
  
  /// z-negative-30 -> z-index: -30
  ContainerBuilder zNegative30() {
    return zIndex(-30);
  }
  
  /// z-negative-20 -> z-index: -20
  ContainerBuilder zNegative20() {
    return zIndex(-20);
  }
  
  /// z-negative-10 -> z-index: -10
  ContainerBuilder zNegative10() {
    return zIndex(-10);
  }
  
  /// z-negative-1 -> z-index: -1
  ContainerBuilder zNegative1() {
    return zIndex(-1);
  }
}

