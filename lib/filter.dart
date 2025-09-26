import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

/// Tailwind CSS Filter utilities for Flutter
/// Utilities for applying filters to elements.
extension FilterExt on Widget {
  
  // === Basic filter utilities ===
  
  /// filter-none -> filter: none;
  Widget filterNone() => this;
  
  // === Blur filter ===
  
  /// blur-none -> filter: blur(0);
  Widget blurNone() => this;
  
  /// blur-sm -> filter: blur(4px);
  Widget blurSm() => ImageFiltered(
    imageFilter: ui.ImageFilter.blur(sigmaX: 4, sigmaY: 4),
    child: this,
  );
  
  /// blur -> filter: blur(8px);
  Widget blur() => ImageFiltered(
    imageFilter: ui.ImageFilter.blur(sigmaX: 8, sigmaY: 8),
    child: this,
  );
  
  /// blur-md -> filter: blur(12px);
  Widget blurMd() => ImageFiltered(
    imageFilter: ui.ImageFilter.blur(sigmaX: 12, sigmaY: 12),
    child: this,
  );
  
  /// blur-lg -> filter: blur(16px);
  Widget blurLg() => ImageFiltered(
    imageFilter: ui.ImageFilter.blur(sigmaX: 16, sigmaY: 16),
    child: this,
  );
  
  /// blur-xl -> filter: blur(24px);
  Widget blurXl() => ImageFiltered(
    imageFilter: ui.ImageFilter.blur(sigmaX: 24, sigmaY: 24),
    child: this,
  );
  
  /// blur-2xl -> filter: blur(40px);
  Widget blur2xl() => ImageFiltered(
    imageFilter: ui.ImageFilter.blur(sigmaX: 40, sigmaY: 40),
    child: this,
  );
  
  /// blur-3xl -> filter: blur(64px);
  Widget blur3xl() => ImageFiltered(
    imageFilter: ui.ImageFilter.blur(sigmaX: 64, sigmaY: 64),
    child: this,
  );

  // === Brightness filter ===
  
  /// brightness-0 -> filter: brightness(0);
  Widget brightness0() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      0, 0, 0, 0, 0,
      0, 0, 0, 0, 0,
      0, 0, 0, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// brightness-50 -> filter: brightness(0.5);
  Widget brightness50() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      0.5, 0, 0, 0, 0,
      0, 0.5, 0, 0, 0,
      0, 0, 0.5, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// brightness-75 -> filter: brightness(0.75);
  Widget brightness75() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      0.75, 0, 0, 0, 0,
      0, 0.75, 0, 0, 0,
      0, 0, 0.75, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// brightness-90 -> filter: brightness(0.9);
  Widget brightness90() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      0.9, 0, 0, 0, 0,
      0, 0.9, 0, 0, 0,
      0, 0, 0.9, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// brightness-95 -> filter: brightness(0.95);
  Widget brightness95() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      0.95, 0, 0, 0, 0,
      0, 0.95, 0, 0, 0,
      0, 0, 0.95, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// brightness-100 -> filter: brightness(1);
  Widget brightness100() => this;
  
  /// brightness-105 -> filter: brightness(1.05);
  Widget brightness105() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      1.05, 0, 0, 0, 0,
      0, 1.05, 0, 0, 0,
      0, 0, 1.05, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// brightness-110 -> filter: brightness(1.1);
  Widget brightness110() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      1.1, 0, 0, 0, 0,
      0, 1.1, 0, 0, 0,
      0, 0, 1.1, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// brightness-125 -> filter: brightness(1.25);
  Widget brightness125() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      1.25, 0, 0, 0, 0,
      0, 1.25, 0, 0, 0,
      0, 0, 1.25, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// brightness-150 -> filter: brightness(1.5);
  Widget brightness150() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      1.5, 0, 0, 0, 0,
      0, 1.5, 0, 0, 0,
      0, 0, 1.5, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// brightness-200 -> filter: brightness(2);
  Widget brightness200() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      2, 0, 0, 0, 0,
      0, 2, 0, 0, 0,
      0, 0, 2, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );

  // === Contrast filter ===
  
  /// contrast-0 -> filter: contrast(0);
  Widget contrast0() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      0, 0, 0, 0, 127.5,
      0, 0, 0, 0, 127.5,
      0, 0, 0, 0, 127.5,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// contrast-50 -> filter: contrast(0.5);
  Widget contrast50() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      0.5, 0, 0, 0, 63.75,
      0, 0.5, 0, 0, 63.75,
      0, 0, 0.5, 0, 63.75,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// contrast-75 -> filter: contrast(0.75);
  Widget contrast75() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      0.75, 0, 0, 0, 31.875,
      0, 0.75, 0, 0, 31.875,
      0, 0, 0.75, 0, 31.875,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// contrast-100 -> filter: contrast(1);
  Widget contrast100() => this;
  
  /// contrast-125 -> filter: contrast(1.25);
  Widget contrast125() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      1.25, 0, 0, 0, -31.875,
      0, 1.25, 0, 0, -31.875,
      0, 0, 1.25, 0, -31.875,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// contrast-150 -> filter: contrast(1.5);
  Widget contrast150() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      1.5, 0, 0, 0, -63.75,
      0, 1.5, 0, 0, -63.75,
      0, 0, 1.5, 0, -63.75,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// contrast-200 -> filter: contrast(2);
  Widget contrast200() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      2, 0, 0, 0, -127.5,
      0, 2, 0, 0, -127.5,
      0, 0, 2, 0, -127.5,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );

  // === Drop Shadow filter ===
  
  /// drop-shadow-sm -> filter: drop-shadow(0 1px 1px rgb(0 0 0 / 0.05));
  Widget dropShadowSm() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.05),
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ],
    ),
    child: this,
  );
  
  /// drop-shadow -> filter: drop-shadow(0 1px 2px rgb(0 0 0 / 0.1)) drop-shadow(0 1px 1px rgb(0 0 0 / 0.06));
  Widget dropShadow() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 2,
          offset: Offset(0, 1),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.06),
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ],
    ),
    child: this,
  );
  
  /// drop-shadow-md -> filter: drop-shadow(0 4px 3px rgb(0 0 0 / 0.07)) drop-shadow(0 2px 2px rgb(0 0 0 / 0.06));
  Widget dropShadowMd() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.07),
          blurRadius: 3,
          offset: Offset(0, 4),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.06),
          blurRadius: 2,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: this,
  );
  
  /// drop-shadow-lg -> filter: drop-shadow(0 10px 8px rgb(0 0 0 / 0.04)) drop-shadow(0 4px 3px rgb(0 0 0 / 0.1));
  Widget dropShadowLg() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.04),
          blurRadius: 8,
          offset: Offset(0, 10),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 3,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: this,
  );
  
  /// drop-shadow-xl -> filter: drop-shadow(0 20px 13px rgb(0 0 0 / 0.03)) drop-shadow(0 8px 5px rgb(0 0 0 / 0.08));
  Widget dropShadowXl() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.03),
          blurRadius: 13,
          offset: Offset(0, 20),
        ),
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.08),
          blurRadius: 5,
          offset: Offset(0, 8),
        ),
      ],
    ),
    child: this,
  );
  
  /// drop-shadow-2xl -> filter: drop-shadow(0 25px 25px rgb(0 0 0 / 0.15));
  Widget dropShadow2xl() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.15),
          blurRadius: 25,
          offset: Offset(0, 25),
        ),
      ],
    ),
    child: this,
  );
  
  /// drop-shadow-none -> filter: drop-shadow(0 0 #0000);
  Widget dropShadowNone() => this;

  // === Grayscale filter ===
  
  /// grayscale-0 -> filter: grayscale(0);
  Widget grayscale0() => this;
  
  /// grayscale -> filter: grayscale(100%);
  Widget grayscale() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      0.2126, 0.7152, 0.0722, 0, 0,
      0.2126, 0.7152, 0.0722, 0, 0,
      0.2126, 0.7152, 0.0722, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );

  // === Hue Rotate filter ===
  
  /// hue-rotate-0 -> filter: hue-rotate(0deg);
  Widget hueRotate0() => this;
  
  /// hue-rotate-15 -> filter: hue-rotate(15deg);
  Widget hueRotate15() => _hueRotateFilter(15);
  
  /// hue-rotate-30 -> filter: hue-rotate(30deg);
  Widget hueRotate30() => _hueRotateFilter(30);
  
  /// hue-rotate-60 -> filter: hue-rotate(60deg);
  Widget hueRotate60() => _hueRotateFilter(60);
  
  /// hue-rotate-90 -> filter: hue-rotate(90deg);
  Widget hueRotate90() => _hueRotateFilter(90);
  
  /// hue-rotate-180 -> filter: hue-rotate(180deg);
  Widget hueRotate180() => _hueRotateFilter(180);

  // === Invert filter ===
  
  /// invert-0 -> filter: invert(0);
  Widget invert0() => this;
  
  /// invert -> filter: invert(100%);
  Widget invert() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      -1, 0, 0, 0, 255,
      0, -1, 0, 0, 255,
      0, 0, -1, 0, 255,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );

  // === Saturate filter ===
  
  /// saturate-0 -> filter: saturate(0);
  Widget saturate0() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      0.213, 0.715, 0.072, 0, 0,
      0.213, 0.715, 0.072, 0, 0,
      0.213, 0.715, 0.072, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// saturate-50 -> filter: saturate(0.5);
  Widget saturate50() => _saturateFilter(0.5);
  
  /// saturate-100 -> filter: saturate(1);
  Widget saturate100() => this;
  
  /// saturate-150 -> filter: saturate(1.5);
  Widget saturate150() => _saturateFilter(1.5);
  
  /// saturate-200 -> filter: saturate(2);
  Widget saturate200() => _saturateFilter(2);

  // === Sepia filter ===
  
  /// sepia-0 -> filter: sepia(0);
  Widget sepia0() => this;
  
  /// sepia -> filter: sepia(100%);
  Widget sepia() => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      0.393, 0.769, 0.189, 0, 0,
      0.349, 0.686, 0.168, 0, 0,
      0.272, 0.534, 0.131, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );

  // === Custom filter utilities ===
  
  /// 自定义模糊
  Widget customBlur(double sigmaX, double sigmaY) => ImageFiltered(
    imageFilter: ui.ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
    child: this,
  );
  
  /// 自定义亮度
  Widget customBrightness(double value) => ColorFiltered(
    colorFilter: ColorFilter.matrix(Float64List.fromList([
      value, 0, 0, 0, 0,
      0, value, 0, 0, 0,
      0, 0, value, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// 自定义对比度
  Widget customContrast(double value) {
    final intercept = (1 - value) / 2 * 255;
    return ColorFiltered(
      colorFilter: ColorFilter.matrix(Float64List.fromList([
        value, 0, 0, 0, intercept,
        0, value, 0, 0, intercept,
        0, 0, value, 0, intercept,
        0, 0, 0, 1, 0,
      ])),
      child: this,
    );
  }
  
  /// 自定义饱和度
  Widget customSaturate(double value) => _saturateFilter(value);
  
  /// 自定义色相旋转
  Widget customHueRotate(double degrees) => _hueRotateFilter(degrees);

  // === Shorthand utilities ===
  
  /// f(filter) -> 应用自定义滤镜
  Widget f(ui.ImageFilter filter) => ImageFiltered(
    imageFilter: filter,
    child: this,
  );

  // === Helper methods ===
  
  Widget _hueRotateFilter(double degrees) {
    final radians = degrees * (3.14159 / 180);
    final cos = math.cos(radians);
    final sin = math.sin(radians);
    
    return ColorFiltered(
      colorFilter: ColorFilter.matrix(Float64List.fromList([
        0.213 + cos * 0.787 - sin * 0.213,
        0.715 - cos * 0.715 - sin * 0.715,
        0.072 - cos * 0.072 + sin * 0.928,
        0, 0,
        0.213 - cos * 0.213 + sin * 0.143,
        0.715 + cos * 0.285 + sin * 0.140,
        0.072 - cos * 0.072 - sin * 0.283,
        0, 0,
        0.213 - cos * 0.213 - sin * 0.787,
        0.715 - cos * 0.715 + sin * 0.715,
        0.072 + cos * 0.928 + sin * 0.072,
        0, 0,
        0, 0, 0, 1, 0,
      ])),
      child: this,
    );
  }
  
  Widget _saturateFilter(double value) {
    final r = (1 - value) * 0.3086;
    final g = (1 - value) * 0.6094;
    final b = (1 - value) * 0.0820;
    
    return ColorFiltered(
      colorFilter: ColorFilter.matrix(Float64List.fromList([
        r + value, g, b, 0, 0,
        r, g + value, b, 0, 0,
        r, g, b + value, 0, 0,
        0, 0, 0, 1, 0,
      ])),
      child: this,
    );
  }
}

