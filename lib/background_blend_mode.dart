import 'package:flutter/material.dart';

/// Tailwind CSS Background Blend Mode utilities for Flutter
/// Utilities for controlling how an element's background image should blend with its background color.
extension BackgroundBlendModeExt on Widget {
  
  // === Basic background blend mode utilities ===
  
  /// bg-blend-normal -> background-blend-mode: normal;
  Widget bgBlendNormal() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.srcOver,
    ),
    child: this,
  );
  
  /// bg-blend-multiply -> background-blend-mode: multiply;
  Widget bgBlendMultiply() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.multiply,
    ),
    child: this,
  );
  
  /// bg-blend-screen -> background-blend-mode: screen;
  Widget bgBlendScreen() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.screen,
    ),
    child: this,
  );
  
  /// bg-blend-overlay -> background-blend-mode: overlay;
  Widget bgBlendOverlay() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.overlay,
    ),
    child: this,
  );
  
  /// bg-blend-darken -> background-blend-mode: darken;
  Widget bgBlendDarken() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.darken,
    ),
    child: this,
  );
  
  /// bg-blend-lighten -> background-blend-mode: lighten;
  Widget bgBlendLighten() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.lighten,
    ),
    child: this,
  );
  
  /// bg-blend-color-dodge -> background-blend-mode: color-dodge;
  Widget bgBlendColorDodge() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.colorDodge,
    ),
    child: this,
  );
  
  /// bg-blend-color-burn -> background-blend-mode: color-burn;
  Widget bgBlendColorBurn() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.colorBurn,
    ),
    child: this,
  );
  
  /// bg-blend-hard-light -> background-blend-mode: hard-light;
  Widget bgBlendHardLight() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.hardLight,
    ),
    child: this,
  );
  
  /// bg-blend-soft-light -> background-blend-mode: soft-light;
  Widget bgBlendSoftLight() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.softLight,
    ),
    child: this,
  );
  
  /// bg-blend-difference -> background-blend-mode: difference;
  Widget bgBlendDifference() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.difference,
    ),
    child: this,
  );
  
  /// bg-blend-exclusion -> background-blend-mode: exclusion;
  Widget bgBlendExclusion() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.exclusion,
    ),
    child: this,
  );
  
  /// bg-blend-hue -> background-blend-mode: hue;
  Widget bgBlendHue() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.hue,
    ),
    child: this,
  );
  
  /// bg-blend-saturation -> background-blend-mode: saturation;
  Widget bgBlendSaturation() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.saturation,
    ),
    child: this,
  );
  
  /// bg-blend-color -> background-blend-mode: color;
  Widget bgBlendColor() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.color,
    ),
    child: this,
  );
  
  /// bg-blend-luminosity -> background-blend-mode: luminosity;
  Widget bgBlendLuminosity() => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: BlendMode.luminosity,
    ),
    child: this,
  );

  // === Custom background blend mode utilities ===
  
  /// bgBlendMode -> 自定义背景混合模式
  Widget bgBlendMode(BlendMode blendMode) => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: blendMode,
    ),
    child: this,
  );
  
  // === Shorthand utilities ===
  
  /// bb(BlendMode mode) -> background-blend-mode: <mode>;
  Widget bb(BlendMode mode) => Container(
    decoration: BoxDecoration(
      backgroundBlendMode: mode,
    ),
    child: this,
  );
}
