import 'dart:math' as Math;
import 'dart:typed_data';

import 'package:flutter/material.dart';

/// Tailwind CSS Mix Blend Mode utilities for Flutter
/// Utilities for controlling how an element should blend with the background.
extension MixBlendModeExt on Widget {
  
  // === Basic mix blend mode utilities ===
  
  /// mix-blend-normal -> mix-blend-mode: normal;
  Widget mixBlendNormal() => Container(
    child: this,
  );
  
  /// mix-blend-multiply -> mix-blend-mode: multiply;
  Widget mixBlendMultiply() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.multiply),
    child: this,
  );
  
  /// mix-blend-screen -> mix-blend-mode: screen;
  Widget mixBlendScreen() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.screen),
    child: this,
  );
  
  /// mix-blend-overlay -> mix-blend-mode: overlay;
  Widget mixBlendOverlay() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.overlay),
    child: this,
  );
  
  /// mix-blend-darken -> mix-blend-mode: darken;
  Widget mixBlendDarken() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.darken),
    child: this,
  );
  
  /// mix-blend-lighten -> mix-blend-mode: lighten;
  Widget mixBlendLighten() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.lighten),
    child: this,
  );
  
  /// mix-blend-color-dodge -> mix-blend-mode: color-dodge;
  Widget mixBlendColorDodge() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.colorDodge),
    child: this,
  );
  
  /// mix-blend-color-burn -> mix-blend-mode: color-burn;
  Widget mixBlendColorBurn() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.colorBurn),
    child: this,
  );
  
  /// mix-blend-hard-light -> mix-blend-mode: hard-light;
  Widget mixBlendHardLight() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.hardLight),
    child: this,
  );
  
  /// mix-blend-soft-light -> mix-blend-mode: soft-light;
  Widget mixBlendSoftLight() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.softLight),
    child: this,
  );
  
  /// mix-blend-difference -> mix-blend-mode: difference;
  Widget mixBlendDifference() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.difference),
    child: this,
  );
  
  /// mix-blend-exclusion -> mix-blend-mode: exclusion;
  Widget mixBlendExclusion() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.exclusion),
    child: this,
  );
  
  /// mix-blend-hue -> mix-blend-mode: hue;
  Widget mixBlendHue() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.hue),
    child: this,
  );
  
  /// mix-blend-saturation -> mix-blend-mode: saturation;
  Widget mixBlendSaturation() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.saturation),
    child: this,
  );
  
  /// mix-blend-color -> mix-blend-mode: color;
  Widget mixBlendColor() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.color),
    child: this,
  );
  
  /// mix-blend-luminosity -> mix-blend-mode: luminosity;
  Widget mixBlendLuminosity() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.luminosity),
    child: this,
  );
  
  /// mix-blend-plus-darker -> mix-blend-mode: plus-darker; (Flutter specific)
  Widget mixBlendPlusDarker() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.plus),
    child: this,
  );
  
  /// mix-blend-plus-lighter -> mix-blend-mode: plus-lighter; (Flutter specific)
  Widget mixBlendPlusLighter() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.plus),
    child: this,
  );

  // === Custom mix blend mode utilities ===
  
  /// mixBlendMode -> 自定义混合模式
  Widget mixBlendMode(BlendMode blendMode, {Color? color}) => ColorFiltered(
    colorFilter: ColorFilter.mode(color ?? Colors.transparent, blendMode),
    child: this,
  );
  
  /// mixBlendWithColor -> 与指定颜色混合
  Widget mixBlendWithColor(Color color, BlendMode blendMode) => ColorFiltered(
    colorFilter: ColorFilter.mode(color, blendMode),
    child: this,
  );

  // === Shorthand utilities (简化版本，常用的组合) ===
  
  /// mixBlend(BlendMode mode) -> mix-blend-mode: <mode>; (最简洁的自定义混合模式)
  Widget mixBlend(BlendMode mode, {Color? color}) => ColorFiltered(
    colorFilter: ColorFilter.mode(color ?? Colors.transparent, mode),
    child: this,
  );

  // === Advanced blend utilities using Container ===
  
  /// 使用Container的decoration和ColorFilter实现更复杂的混合效果
  Widget advancedBlend({
    required BlendMode blendMode,
    Color? overlayColor,
    double opacity = 1.0,
  }) => Container(
    foregroundDecoration: BoxDecoration(
      color: overlayColor?.withValues(alpha: opacity.clamp(0.0, 1.0)),
      backgroundBlendMode: blendMode,
    ),
    child: this,
  );

  // === Stack-based blend utilities ===
  
  /// stackBlend -> 使用Stack和ColorFiltered实现混合
  Widget stackBlend({
    required Widget overlay,
    BlendMode blendMode = BlendMode.multiply,
  }) => Stack(
    children: [
      this,
      Positioned.fill(
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.transparent, blendMode),
          child: overlay,
        ),
      ),
    ],
  );
  
  /// colorOverlay -> 颜色叠加混合
  Widget colorOverlay({
    required Color color,
    BlendMode blendMode = BlendMode.multiply,
    double opacity = 0.5,
  }) => Stack(
    children: [
      this,
      Positioned.fill(
        child: Container(
          color: color.withValues(alpha: opacity.clamp(0.0, 1.0)),
        ),
      ),
    ],
  );

  // === Commonly used blend effects (常用的混合效果) ===
  
  /// sepia -> 棕褐色效果
  Widget sepia({double intensity = 0.8}) => ColorFiltered(
    colorFilter: ColorFilter.mode(
      Color.fromRGBO(112, 66, 20, intensity.clamp(0.0, 1.0)),
      BlendMode.colorBurn,
    ),
    child: this,
  );
  
  /// grayscale -> 灰度效果
  Widget grayscale({double intensity = 1.0}) => ColorFiltered(
    colorFilter: ColorFilter.mode(
      Colors.grey.withValues(alpha: intensity.clamp(0.0, 1.0)),
      BlendMode.saturation,
    ),
    child: this,
  );
  
  /// invert -> 反色效果
  Widget invert() => ColorFiltered(
    colorFilter: ColorFilter.mode(Colors.white, BlendMode.difference),
    child: this,
  );
  
  /// vintage -> 复古效果
  Widget vintage({double intensity = 0.6}) => ColorFiltered(
    colorFilter: ColorFilter.mode(
      Color.fromRGBO(255, 206, 84, intensity.clamp(0.0, 1.0)),
      BlendMode.overlay,
    ),
    child: this,
  );
  
  /// cool -> 冷色调效果
  Widget cool({double intensity = 0.4}) => ColorFiltered(
    colorFilter: ColorFilter.mode(
      Color.fromRGBO(0, 100, 200, intensity.clamp(0.0, 1.0)),
      BlendMode.overlay,
    ),
    child: this,
  );
  
  /// warm -> 暖色调效果
  Widget warm({double intensity = 0.4}) => ColorFiltered(
    colorFilter: ColorFilter.mode(
      Color.fromRGBO(255, 100, 0, intensity.clamp(0.0, 1.0)),
      BlendMode.overlay,
    ),
    child: this,
  );

  // === Duotone effects (双色调效果) ===
  
  /// duotone -> 双色调效果
  Widget duotone({
    required Color shadowColor,
    required Color highlightColor,
    double intensity = 0.8,
  }) => Stack(
    children: [
      // 阴影色
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          shadowColor.withValues(alpha: intensity.clamp(0.0, 1.0)),
          BlendMode.darken,
        ),
        child: this,
      ),
      // 高光色
      ColorFiltered(
        colorFilter: ColorFilter.mode(
          highlightColor.withValues(alpha: intensity.clamp(0.0, 1.0)),
          BlendMode.lighten,
        ),
        child: this,
      ),
    ],
  );
  
  /// duotoneBlue -> 蓝色双色调
  Widget duotoneBlue({double intensity = 0.8}) => duotone(
    shadowColor: Color(0xFF1e3a8a),
    highlightColor: Color(0xFF60a5fa),
    intensity: intensity,
  );
  
  /// duotoneRed -> 红色双色调
  Widget duotoneRed({double intensity = 0.8}) => duotone(
    shadowColor: Color(0xFF7f1d1d),
    highlightColor: Color(0xFFf87171),
    intensity: intensity,
  );
  
  /// duotoneGreen -> 绿色双色调
  Widget duotoneGreen({double intensity = 0.8}) => duotone(
    shadowColor: Color(0xFF14532d),
    highlightColor: Color(0xFF4ade80),
    intensity: intensity,
  );
  
  /// duotonePurple -> 紫色双色调
  Widget duotonePurple({double intensity = 0.8}) => duotone(
    shadowColor: Color(0xFF581c87),
    highlightColor: Color(0xFFa78bfa),
    intensity: intensity,
  );

  // === Matrix-based color effects (矩阵色彩效果) ===
  
  /// colorMatrix -> 自定义颜色矩阵
  Widget colorMatrix(List<double> matrix) {
    assert(matrix.length == 20, 'Color matrix must have 20 values');
    return ColorFiltered(
      colorFilter: ColorFilter.matrix(matrix),
      child: this,
    );
  }
  
  /// brightness -> 亮度调整
  Widget brightness(double value) {
      final matrix = Float64List.fromList([
      value, 0, 0, 0, 0,
      0, value, 0, 0, 0,
      0, 0, value, 0, 0,
      0, 0, 0, 1, 0,
      ]);
      return ColorFiltered(
        colorFilter: ColorFilter.matrix(matrix),
      child: this,
    );
  }
  
  /// contrast -> 对比度调整
  Widget contrast(double value) {
    final intercept = (1 - value) / 2;
      final matrix = Float64List.fromList([
      value, 0, 0, 0, intercept * 255,
      0, value, 0, 0, intercept * 255,
      0, 0, value, 0, intercept * 255,
      0, 0, 0, 1, 0,
      ]);
      return ColorFiltered(
        colorFilter: ColorFilter.matrix(matrix),
      child: this,
    );
  }
  
  /// saturate -> 饱和度调整
  Widget saturate(double value) {
    final r = (1 - value) * 0.3086;
    final g = (1 - value) * 0.6094;
    final b = (1 - value) * 0.0820;
      final matrix = Float64List.fromList([
      r + value, g, b, 0, 0,
      r, g + value, b, 0, 0,
      r, g, b + value, 0, 0,
      0, 0, 0, 1, 0,
      ]);
      return ColorFiltered(
        colorFilter: ColorFilter.matrix(matrix),
      child: this,
    );
  }
  
  /// hueRotate -> 色相旋转
  Widget hueRotate(double degrees) {
    final radians = degrees * (3.14159 / 180);
    final cos = Math.cos(radians);
    final sin = Math.sin(radians);
    
      final matrix = Float64List.fromList([
      0.213 + cos * 0.787 - sin * 0.213, 0.715 - cos * 0.715 - sin * 0.715, 0.072 - cos * 0.072 + sin * 0.928, 0, 0,
      0.213 - cos * 0.213 + sin * 0.143, 0.715 + cos * 0.285 + sin * 0.140, 0.072 - cos * 0.072 - sin * 0.283, 0, 0,
      0.213 - cos * 0.213 - sin * 0.787, 0.715 - cos * 0.715 + sin * 0.715, 0.072 + cos * 0.928 + sin * 0.072, 0, 0,
      0, 0, 0, 1, 0,
      ]);
      return ColorFiltered(
        colorFilter: ColorFilter.matrix(matrix),
      child: this,
    );
  }
}

// 导入数学库以支持三角函数

