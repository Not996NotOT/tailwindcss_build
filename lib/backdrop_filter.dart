import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

/// Tailwind CSS Backdrop Filter utilities for Flutter
/// Utilities for applying backdrop filters to elements.
extension BackdropFilterExt on Widget {
  
  // === Basic backdrop filter utilities ===
  
  /// backdrop-blur-none -> backdrop-filter: blur(0);
  Widget backdropBlurNone() => this;
  
  /// backdrop-blur-sm -> backdrop-filter: blur(4px);
  Widget backdropBlurSm() => BackdropFilter(
    filter: ui.ImageFilter.blur(sigmaX: 4, sigmaY: 4),
    child: this,
  );
  
  /// backdrop-blur -> backdrop-filter: blur(8px);
  Widget backdropBlur() => BackdropFilter(
    filter: ui.ImageFilter.blur(sigmaX: 8, sigmaY: 8),
    child: this,
  );
  
  /// backdrop-blur-md -> backdrop-filter: blur(12px);
  Widget backdropBlurMd() => BackdropFilter(
    filter: ui.ImageFilter.blur(sigmaX: 12, sigmaY: 12),
    child: this,
  );
  
  /// backdrop-blur-lg -> backdrop-filter: blur(16px);
  Widget backdropBlurLg() => BackdropFilter(
    filter: ui.ImageFilter.blur(sigmaX: 16, sigmaY: 16),
    child: this,
  );
  
  /// backdrop-blur-xl -> backdrop-filter: blur(24px);
  Widget backdropBlurXl() => BackdropFilter(
    filter: ui.ImageFilter.blur(sigmaX: 24, sigmaY: 24),
    child: this,
  );
  
  /// backdrop-blur-2xl -> backdrop-filter: blur(40px);
  Widget backdropBlur2xl() => BackdropFilter(
    filter: ui.ImageFilter.blur(sigmaX: 40, sigmaY: 40),
    child: this,
  );
  
  /// backdrop-blur-3xl -> backdrop-filter: blur(64px);
  Widget backdropBlur3xl() => BackdropFilter(
    filter: ui.ImageFilter.blur(sigmaX: 64, sigmaY: 64),
    child: this,
  );

  // === Backdrop brightness filter ===
  
  /// backdrop-brightness-0 -> backdrop-filter: brightness(0);
  Widget backdropBrightness0() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      0, 0, 0, 0, 0,
      0, 0, 0, 0, 0,
      0, 0, 0, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-brightness-50 -> backdrop-filter: brightness(0.5);
  Widget backdropBrightness50() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      0.5, 0, 0, 0, 0,
      0, 0.5, 0, 0, 0,
      0, 0, 0.5, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-brightness-75 -> backdrop-filter: brightness(0.75);
  Widget backdropBrightness75() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      0.75, 0, 0, 0, 0,
      0, 0.75, 0, 0, 0,
      0, 0, 0.75, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-brightness-90 -> backdrop-filter: brightness(0.9);
  Widget backdropBrightness90() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      0.9, 0, 0, 0, 0,
      0, 0.9, 0, 0, 0,
      0, 0, 0.9, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-brightness-95 -> backdrop-filter: brightness(0.95);
  Widget backdropBrightness95() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      0.95, 0, 0, 0, 0,
      0, 0.95, 0, 0, 0,
      0, 0, 0.95, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-brightness-100 -> backdrop-filter: brightness(1);
  Widget backdropBrightness100() => this;
  
  /// backdrop-brightness-105 -> backdrop-filter: brightness(1.05);
  Widget backdropBrightness105() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1.05, 0, 0, 0, 0,
      0, 1.05, 0, 0, 0,
      0, 0, 1.05, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-brightness-110 -> backdrop-filter: brightness(1.1);
  Widget backdropBrightness110() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1.1, 0, 0, 0, 0,
      0, 1.1, 0, 0, 0,
      0, 0, 1.1, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-brightness-125 -> backdrop-filter: brightness(1.25);
  Widget backdropBrightness125() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1.25, 0, 0, 0, 0,
      0, 1.25, 0, 0, 0,
      0, 0, 1.25, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-brightness-150 -> backdrop-filter: brightness(1.5);
  Widget backdropBrightness150() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1.5, 0, 0, 0, 0,
      0, 1.5, 0, 0, 0,
      0, 0, 1.5, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-brightness-200 -> backdrop-filter: brightness(2);
  Widget backdropBrightness200() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      2, 0, 0, 0, 0,
      0, 2, 0, 0, 0,
      0, 0, 2, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );

  // === Backdrop contrast filter ===
  
  /// backdrop-contrast-0 -> backdrop-filter: contrast(0);
  Widget backdropContrast0() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      0, 0, 0, 0, 127.5,
      0, 0, 0, 0, 127.5,
      0, 0, 0, 0, 127.5,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-contrast-50 -> backdrop-filter: contrast(0.5);
  Widget backdropContrast50() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      0.5, 0, 0, 0, 63.75,
      0, 0.5, 0, 0, 63.75,
      0, 0, 0.5, 0, 63.75,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-contrast-75 -> backdrop-filter: contrast(0.75);
  Widget backdropContrast75() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      0.75, 0, 0, 0, 31.875,
      0, 0.75, 0, 0, 31.875,
      0, 0, 0.75, 0, 31.875,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-contrast-100 -> backdrop-filter: contrast(1);
  Widget backdropContrast100() => this;
  
  /// backdrop-contrast-125 -> backdrop-filter: contrast(1.25);
  Widget backdropContrast125() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1.25, 0, 0, 0, -31.875,
      0, 1.25, 0, 0, -31.875,
      0, 0, 1.25, 0, -31.875,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-contrast-150 -> backdrop-filter: contrast(1.5);
  Widget backdropContrast150() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1.5, 0, 0, 0, -63.75,
      0, 1.5, 0, 0, -63.75,
      0, 0, 1.5, 0, -63.75,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-contrast-200 -> backdrop-filter: contrast(2);
  Widget backdropContrast200() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      2, 0, 0, 0, -127.5,
      0, 2, 0, 0, -127.5,
      0, 0, 2, 0, -127.5,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );

  // === Backdrop grayscale filter ===
  
  /// backdrop-grayscale-0 -> backdrop-filter: grayscale(0);
  Widget backdropGrayscale0() => this;
  
  /// backdrop-grayscale -> backdrop-filter: grayscale(100%);
  Widget backdropGrayscale() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      0.2126, 0.7152, 0.0722, 0, 0,
      0.2126, 0.7152, 0.0722, 0, 0,
      0.2126, 0.7152, 0.0722, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );

  // === Backdrop hue rotate filter ===
  
  /// backdrop-hue-rotate-0 -> backdrop-filter: hue-rotate(0deg);
  Widget backdropHueRotate0() => this;
  
  /// backdrop-hue-rotate-15 -> backdrop-filter: hue-rotate(15deg);
  Widget backdropHueRotate15() => _backdropHueRotateFilter(15);
  
  /// backdrop-hue-rotate-30 -> backdrop-filter: hue-rotate(30deg);
  Widget backdropHueRotate30() => _backdropHueRotateFilter(30);
  
  /// backdrop-hue-rotate-60 -> backdrop-filter: hue-rotate(60deg);
  Widget backdropHueRotate60() => _backdropHueRotateFilter(60);
  
  /// backdrop-hue-rotate-90 -> backdrop-filter: hue-rotate(90deg);
  Widget backdropHueRotate90() => _backdropHueRotateFilter(90);
  
  /// backdrop-hue-rotate-180 -> backdrop-filter: hue-rotate(180deg);
  Widget backdropHueRotate180() => _backdropHueRotateFilter(180);

  // === Backdrop invert filter ===
  
  /// backdrop-invert-0 -> backdrop-filter: invert(0);
  Widget backdropInvert0() => this;
  
  /// backdrop-invert -> backdrop-filter: invert(100%);
  Widget backdropInvert() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      -1, 0, 0, 0, 255,
      0, -1, 0, 0, 255,
      0, 0, -1, 0, 255,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );

  // === Backdrop opacity filter ===
  
  /// backdrop-opacity-0 -> backdrop-filter: opacity(0);
  Widget backdropOpacity0() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-5 -> backdrop-filter: opacity(0.05);
  Widget backdropOpacity5() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.05, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-10 -> backdrop-filter: opacity(0.1);
  Widget backdropOpacity10() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-20 -> backdrop-filter: opacity(0.2);
  Widget backdropOpacity20() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.2, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-25 -> backdrop-filter: opacity(0.25);
  Widget backdropOpacity25() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.25, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-30 -> backdrop-filter: opacity(0.3);
  Widget backdropOpacity30() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.3, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-40 -> backdrop-filter: opacity(0.4);
  Widget backdropOpacity40() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.4, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-50 -> backdrop-filter: opacity(0.5);
  Widget backdropOpacity50() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.5, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-60 -> backdrop-filter: opacity(0.6);
  Widget backdropOpacity60() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.6, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-70 -> backdrop-filter: opacity(0.7);
  Widget backdropOpacity70() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.7, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-75 -> backdrop-filter: opacity(0.75);
  Widget backdropOpacity75() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.75, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-80 -> backdrop-filter: opacity(0.8);
  Widget backdropOpacity80() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.8, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-90 -> backdrop-filter: opacity(0.9);
  Widget backdropOpacity90() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.9, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-95 -> backdrop-filter: opacity(0.95);
  Widget backdropOpacity95() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      1, 0, 0, 0, 0,
      0, 1, 0, 0, 0,
      0, 0, 1, 0, 0,
      0, 0, 0, 0.95, 0,
    ])),
    child: this,
  );
  
  /// backdrop-opacity-100 -> backdrop-filter: opacity(1);
  Widget backdropOpacity100() => this;

  // === Backdrop saturate filter ===
  
  /// backdrop-saturate-0 -> backdrop-filter: saturate(0);
  Widget backdropSaturate0() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      0.213, 0.715, 0.072, 0, 0,
      0.213, 0.715, 0.072, 0, 0,
      0.213, 0.715, 0.072, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );
  
  /// backdrop-saturate-50 -> backdrop-filter: saturate(0.5);
  Widget backdropSaturate50() => _backdropSaturateFilter(0.5);
  
  /// backdrop-saturate-100 -> backdrop-filter: saturate(1);
  Widget backdropSaturate100() => this;
  
  /// backdrop-saturate-150 -> backdrop-filter: saturate(1.5);
  Widget backdropSaturate150() => _backdropSaturateFilter(1.5);
  
  /// backdrop-saturate-200 -> backdrop-filter: saturate(2);
  Widget backdropSaturate200() => _backdropSaturateFilter(2);

  // === Backdrop sepia filter ===
  
  /// backdrop-sepia-0 -> backdrop-filter: sepia(0);
  Widget backdropSepia0() => this;
  
  /// backdrop-sepia -> backdrop-filter: sepia(100%);
  Widget backdropSepia() => BackdropFilter(
    filter: ui.ImageFilter.matrix(Float64List.fromList([
      0.393, 0.769, 0.189, 0, 0,
      0.349, 0.686, 0.168, 0, 0,
      0.272, 0.534, 0.131, 0, 0,
      0, 0, 0, 1, 0,
    ])),
    child: this,
  );

  // === Custom backdrop filter utilities ===
  
  /// 自定义背景模糊
  Widget customBackdropBlur(double sigmaX, double sigmaY) => BackdropFilter(
    filter: ui.ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
    child: this,
  );
  
  /// 自定义背景滤镜
  Widget customBackdropFilter(ui.ImageFilter filter) => BackdropFilter(
    filter: filter,
    child: this,
  );

  // === Shorthand utilities ===
  
  /// bf(filter) -> 应用自定义背景滤镜
  Widget bf(ui.ImageFilter filter) => BackdropFilter(
    filter: filter,
    child: this,
  );

  // === Helper methods ===
  
  Widget _backdropHueRotateFilter(double degrees) {
    final radians = degrees * (3.14159 / 180);
    final cos = math.cos(radians);
    final sin = math.sin(radians);
    
    return BackdropFilter(
      filter: ui.ImageFilter.matrix(Float64List.fromList([
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
  
  Widget _backdropSaturateFilter(double value) {
    final r = (1 - value) * 0.3086;
    final g = (1 - value) * 0.6094;
    final b = (1 - value) * 0.0820;
    
    return BackdropFilter(
      filter: ui.ImageFilter.matrix(Float64List.fromList([
        r + value, g, b, 0, 0,
        r, g + value, b, 0, 0,
        r, g, b + value, 0, 0,
        0, 0, 0, 1, 0,
      ])),
      child: this,
    );
  }
}
