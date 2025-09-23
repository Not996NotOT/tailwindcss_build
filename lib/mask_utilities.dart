import 'package:flutter/material.dart';

/// Tailwind CSS Mask utilities for Flutter
/// Note: Flutter doesn't have native CSS mask support, so these utilities 
/// simulate mask effects using ClipPath, ShaderMask, and other techniques.
extension MaskUtilitiesExt on Widget {
  
  // === Mask Clip utilities ===
  
  /// mask-clip-border -> mask-clip: border-box;
  Widget maskClipBorder() => ClipRect(child: this);
  
  /// mask-clip-padding -> mask-clip: padding-box;
  Widget maskClipPadding() => ClipRect(child: this);
  
  /// mask-clip-content -> mask-clip: content-box;
  Widget maskClipContent() => ClipRect(child: this);
  
  /// mask-clip-text -> mask-clip: text; (文字裁剪效果)
  Widget maskClipText() => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: [Colors.black, Colors.black],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );

  // === Mask Composite utilities ===
  
  /// mask-composite-add -> mask-composite: add;
  Widget maskCompositeAdd() => this; // Flutter默认行为
  
  /// mask-composite-subtract -> mask-composite: subtract;
  Widget maskCompositeSubtract() => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: [Colors.transparent, Colors.black],
    ).createShader(bounds),
    blendMode: BlendMode.dstOut,
    child: this,
  );
  
  /// mask-composite-intersect -> mask-composite: intersect;
  Widget maskCompositeIntersect() => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: [Colors.black, Colors.black],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
  
  /// mask-composite-exclude -> mask-composite: exclude;
  Widget maskCompositeExclude() => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: [Colors.black, Colors.black],
    ).createShader(bounds),
    blendMode: BlendMode.xor,
    child: this,
  );

  // === Mask Image utilities (using gradients and shapes) ===
  
  /// mask-image-none -> mask-image: none;
  Widget maskImageNone() => this;
  
  /// maskImageLinear -> 线性渐变遮罩
  Widget maskImageLinear({
    required List<Color> colors,
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
    List<double>? stops,
  }) => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      begin: begin,
      end: end,
      colors: colors,
      stops: stops,
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
  
  /// maskImageRadial -> 径向渐变遮罩
  Widget maskImageRadial({
    required List<Color> colors,
    AlignmentGeometry center = Alignment.center,
    double radius = 0.5,
    List<double>? stops,
  }) => ShaderMask(
    shaderCallback: (bounds) => RadialGradient(
      center: center,
      radius: radius,
      colors: colors,
      stops: stops,
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
  
  /// maskImageSweep -> 扫描渐变遮罩
  Widget maskImageSweep({
    required List<Color> colors,
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = 6.28,
    List<double>? stops,
  }) => ShaderMask(
    shaderCallback: (bounds) => SweepGradient(
      center: center,
      startAngle: startAngle,
      endAngle: endAngle,
      colors: colors,
      stops: stops,
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );

  // === Mask Mode utilities ===
  
  /// mask-mode-alpha -> mask-mode: alpha;
  Widget maskModeAlpha() => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: [Colors.black, Colors.black],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
  
  /// mask-mode-luminance -> mask-mode: luminance;
  Widget maskModeLuminance() => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: [Colors.grey, Colors.grey],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
  
  /// mask-mode-match-source -> mask-mode: match-source;
  Widget maskModeMatchSource() => this;

  // === Mask Origin utilities ===
  
  /// mask-origin-border -> mask-origin: border-box;
  Widget maskOriginBorder() => this;
  
  /// mask-origin-padding -> mask-origin: padding-box;
  Widget maskOriginPadding() => this;
  
  /// mask-origin-content -> mask-origin: content-box;
  Widget maskOriginContent() => this;

  // === Mask Position utilities ===
  
  /// mask-position-center -> mask-position: center;
  Widget maskPositionCenter() => this;
  
  /// mask-position-top -> mask-position: top;
  Widget maskPositionTop() => this;
  
  /// mask-position-right -> mask-position: right;
  Widget maskPositionRight() => this;
  
  /// mask-position-bottom -> mask-position: bottom;
  Widget maskPositionBottom() => this;
  
  /// mask-position-left -> mask-position: left;
  Widget maskPositionLeft() => this;

  // === Mask Repeat utilities ===
  
  /// mask-repeat -> mask-repeat: repeat;
  Widget maskRepeat() => this;
  
  /// mask-no-repeat -> mask-repeat: no-repeat;
  Widget maskNoRepeat() => this;
  
  /// mask-repeat-x -> mask-repeat: repeat-x;
  Widget maskRepeatX() => this;
  
  /// mask-repeat-y -> mask-repeat: repeat-y;
  Widget maskRepeatY() => this;
  
  /// mask-repeat-round -> mask-repeat: round;
  Widget maskRepeatRound() => this;
  
  /// mask-repeat-space -> mask-repeat: space;
  Widget maskRepeatSpace() => this;

  // === Mask Size utilities ===
  
  /// mask-size-auto -> mask-size: auto;
  Widget maskSizeAuto() => this;
  
  /// mask-size-cover -> mask-size: cover;
  Widget maskSizeCover() => this;
  
  /// mask-size-contain -> mask-size: contain;
  Widget maskSizeContain() => this;

  // === Mask Type utilities ===
  
  /// mask-type-alpha -> mask-type: alpha;
  Widget maskTypeAlpha() => this;
  
  /// mask-type-luminance -> mask-type: luminance;
  Widget maskTypeLuminance() => this;

  // === Custom mask utilities ===
  
  /// customMask -> 自定义遮罩
  Widget customMask({
    required Shader Function(Rect bounds) shaderCallback,
    BlendMode blendMode = BlendMode.dstIn,
  }) => ShaderMask(
    shaderCallback: shaderCallback,
    blendMode: blendMode,
    child: this,
  );
  
  /// clipMask -> 裁剪遮罩
  Widget clipMask({
    required CustomClipper<Path> clipper,
  }) => ClipPath(
    clipper: clipper,
    child: this,
  );

  // === Common mask effects ===
  
  /// fadeEdgeMask -> 边缘淡化遮罩
  Widget fadeEdgeMask({
    double fadeSize = 0.1,
    AlignmentGeometry direction = Alignment.topCenter,
  }) => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      begin: direction,
      end: -direction,
      colors: [
        Colors.transparent,
        Colors.black,
        Colors.black,
        Colors.transparent,
      ],
      stops: [0.0, fadeSize, 1.0 - fadeSize, 1.0],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
  
  /// circularMask -> 圆形遮罩
  Widget circularMask({
    AlignmentGeometry center = Alignment.center,
    double radius = 0.5,
  }) => ShaderMask(
    shaderCallback: (bounds) => RadialGradient(
      center: center,
      radius: radius,
      colors: [Colors.black, Colors.transparent],
      stops: [0.8, 1.0],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
  
  /// textMask -> 文字遮罩效果
  Widget textMask({
    required String text,
    required TextStyle textStyle,
    AlignmentGeometry alignment = Alignment.center,
  }) => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: [Colors.black, Colors.black],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: Stack(
      children: [
        this,
        Positioned.fill(
          child: Align(
            alignment: alignment,
            child: Text(
              text,
              style: textStyle.copyWith(
                color: Colors.white,
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
        ),
      ],
    ),
  );
  
  /// Shorthand utilities
  Widget mask(Shader Function(Rect) shader, {BlendMode blend = BlendMode.dstIn}) =>
      ShaderMask(shaderCallback: shader, blendMode: blend, child: this);
}
