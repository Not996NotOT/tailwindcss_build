import 'package:flutter/material.dart';

/// Tailwind CSS Opacity utilities for Flutter
/// Utilities for controlling the opacity of an element.
extension OpacityExt on Widget {
  
  // === Basic opacity utilities ===
  
  /// opacity-0 -> opacity: 0;
  Widget opacity0() => Opacity(opacity: 0.0, child: this);
  
  /// opacity-5 -> opacity: 0.05;
  Widget opacity5() => Opacity(opacity: 0.05, child: this);
  
  /// opacity-10 -> opacity: 0.1;
  Widget opacity10() => Opacity(opacity: 0.1, child: this);
  
  /// opacity-15 -> opacity: 0.15;
  Widget opacity15() => Opacity(opacity: 0.15, child: this);
  
  /// opacity-20 -> opacity: 0.2;
  Widget opacity20() => Opacity(opacity: 0.2, child: this);
  
  /// opacity-25 -> opacity: 0.25;
  Widget opacity25() => Opacity(opacity: 0.25, child: this);
  
  /// opacity-30 -> opacity: 0.3;
  Widget opacity30() => Opacity(opacity: 0.3, child: this);
  
  /// opacity-35 -> opacity: 0.35;
  Widget opacity35() => Opacity(opacity: 0.35, child: this);
  
  /// opacity-40 -> opacity: 0.4;
  Widget opacity40() => Opacity(opacity: 0.4, child: this);
  
  /// opacity-45 -> opacity: 0.45;
  Widget opacity45() => Opacity(opacity: 0.45, child: this);
  
  /// opacity-50 -> opacity: 0.5;
  Widget opacity50() => Opacity(opacity: 0.5, child: this);
  
  /// opacity-55 -> opacity: 0.55;
  Widget opacity55() => Opacity(opacity: 0.55, child: this);
  
  /// opacity-60 -> opacity: 0.6;
  Widget opacity60() => Opacity(opacity: 0.6, child: this);
  
  /// opacity-65 -> opacity: 0.65;
  Widget opacity65() => Opacity(opacity: 0.65, child: this);
  
  /// opacity-70 -> opacity: 0.7;
  Widget opacity70() => Opacity(opacity: 0.7, child: this);
  
  /// opacity-75 -> opacity: 0.75;
  Widget opacity75() => Opacity(opacity: 0.75, child: this);
  
  /// opacity-80 -> opacity: 0.8;
  Widget opacity80() => Opacity(opacity: 0.8, child: this);
  
  /// opacity-85 -> opacity: 0.85;
  Widget opacity85() => Opacity(opacity: 0.85, child: this);
  
  /// opacity-90 -> opacity: 0.9;
  Widget opacity90() => Opacity(opacity: 0.9, child: this);
  
  /// opacity-95 -> opacity: 0.95;
  Widget opacity95() => Opacity(opacity: 0.95, child: this);
  
  /// opacity-100 -> opacity: 1;
  Widget opacity100() => Opacity(opacity: 1.0, child: this);

  // === Custom opacity utilities ===
  
  /// opacity-[<value>] -> opacity: <value>; (自定义透明度)
  Widget opacityCustom(double opacity) {
    // 确保透明度值在0.0-1.0范围内
    final clampedOpacity = opacity.clamp(0.0, 1.0);
    return Opacity(opacity: clampedOpacity, child: this);
  }
  
  /// 百分比透明度 (0-100)
  Widget opacityPercent(int percent) {
    final opacity = (percent / 100).clamp(0.0, 1.0);
    return Opacity(opacity: opacity, child: this);
  }
  
  // === Shorthand utilities (简化版本，常用的组合) ===
  
  /// o(double opacity) -> opacity: <opacity>; (最简洁的自定义透明度)
  Widget o(double opacity) {
    final clampedOpacity = opacity.clamp(0.0, 1.0);
    return Opacity(opacity: clampedOpacity, child: this);
  }
  
  /// op(int percent) -> opacity: <percent>%; (百分比透明度简写)
  Widget op(int percent) {
    final opacity = (percent / 100).clamp(0.0, 1.0);
    return Opacity(opacity: opacity, child: this);
  }

  // === Commonly used opacity values (常用的透明度值) ===
  
  /// hidden() -> opacity: 0; (完全隐藏)
  Widget hidden() => Opacity(opacity: 0.0, child: this);
  
  /// visible() -> opacity: 1; (完全可见)
  Widget visible() => Opacity(opacity: 1.0, child: this);
  
  /// semi() -> opacity: 0.5; (半透明)
  Widget semi() => Opacity(opacity: 0.5, child: this);
  
  /// faint() -> opacity: 0.25; (淡化)
  Widget faint() => Opacity(opacity: 0.25, child: this);
  
  /// subtle() -> opacity: 0.75; (微妙)
  Widget subtle() => Opacity(opacity: 0.75, child: this);

  // === Animated opacity utilities ===
  
  /// animatedOpacity -> 带动画的透明度变化
  Widget animatedOpacity({
    required double opacity,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
  }) {
    final clampedOpacity = opacity.clamp(0.0, 1.0);
    return AnimatedOpacity(
      opacity: clampedOpacity,
      duration: duration,
      curve: curve,
      child: this,
    );
  }
  
  /// fadeIn -> 淡入动画
  Widget fadeIn({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeIn,
  }) => AnimatedOpacity(
    opacity: 1.0,
    duration: duration,
    curve: curve,
    child: this,
  );
  
  /// fadeOut -> 淡出动画
  Widget fadeOut({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
  }) => AnimatedOpacity(
    opacity: 0.0,
    duration: duration,
    curve: curve,
    child: this,
  );

  // === Conditional opacity utilities ===
  
  /// opacityIf -> 条件透明度
  Widget opacityIf(bool condition, double opacity) {
    if (condition) {
      final clampedOpacity = opacity.clamp(0.0, 1.0);
      return Opacity(opacity: clampedOpacity, child: this);
    }
    return this;
  }
  
  /// hideIf -> 条件隐藏
  Widget hideIf(bool condition) {
    if (condition) {
      return Opacity(opacity: 0.0, child: this);
    }
    return this;
  }
  
  /// showIf -> 条件显示
  Widget showIf(bool condition) {
    if (condition) {
      return Opacity(opacity: 1.0, child: this);
    }
    return Opacity(opacity: 0.0, child: this);
  }

  // === Interactive opacity utilities ===
  
  /// hoverOpacity -> 悬停时的透明度（需要配合MouseRegion使用）
  Widget hoverOpacity({
    double normalOpacity = 1.0,
    double hoverOpacity = 0.8,
    Duration duration = const Duration(milliseconds: 200),
  }) {
    return MouseRegion(
      onEnter: (_) {}, // 这里需要状态管理来实现真正的悬停效果
      onExit: (_) {},
      child: AnimatedOpacity(
        opacity: normalOpacity.clamp(0.0, 1.0),
        duration: duration,
        child: this,
      ),
    );
  }
  
  /// pressedOpacity -> 按压时的透明度（需要配合GestureDetector使用）
  Widget pressedOpacity({
    double normalOpacity = 1.0,
    double pressedOpacity = 0.6,
  }) {
    return GestureDetector(
      onTapDown: (_) {}, // 这里需要状态管理来实现真正的按压效果
      onTapUp: (_) {},
      onTapCancel: () {},
      child: Opacity(
        opacity: normalOpacity.clamp(0.0, 1.0),
        child: this,
      ),
    );
  }

  // === Gradient opacity utilities ===
  
  /// opacityGradient -> 渐变透明度效果
  Widget opacityGradient({
    required List<double> stops,
    required List<double> opacities,
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
  }) {
    assert(stops.length == opacities.length, 'stops and opacities must have the same length');
    
    final colors = opacities.map((opacity) => 
      Colors.black.withValues(alpha: opacity.clamp(0.0, 1.0))
    ).toList();
    
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: begin,
        end: end,
        colors: colors,
        stops: stops,
      ).createShader(bounds),
      blendMode: BlendMode.dstIn,
      child: this,
    );
  }
  
  /// fadeTop -> 顶部淡化效果
  Widget fadeTop({double fadeHeight = 0.2}) => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.transparent,
        Colors.black,
      ],
      stops: [0.0, fadeHeight.clamp(0.0, 1.0)],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
  
  /// fadeBottom -> 底部淡化效果
  Widget fadeBottom({double fadeHeight = 0.2}) => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.black,
        Colors.transparent,
      ],
      stops: [1.0 - fadeHeight.clamp(0.0, 1.0), 1.0],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
  
  /// fadeLeft -> 左侧淡化效果
  Widget fadeLeft({double fadeWidth = 0.2}) => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Colors.transparent,
        Colors.black,
      ],
      stops: [0.0, fadeWidth.clamp(0.0, 1.0)],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
  
  /// fadeRight -> 右侧淡化效果
  Widget fadeRight({double fadeWidth = 0.2}) => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Colors.black,
        Colors.transparent,
      ],
      stops: [1.0 - fadeWidth.clamp(0.0, 1.0), 1.0],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
  
  /// fadeEdges -> 边缘淡化效果
  Widget fadeEdges({
    double topFade = 0.1,
    double bottomFade = 0.1,
    double leftFade = 0.1,
    double rightFade = 0.1,
  }) => ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.transparent,
        Colors.black,
        Colors.black,
        Colors.transparent,
      ],
      stops: [
        0.0,
        (topFade + leftFade).clamp(0.0, 0.5) / 2,
        1.0 - (bottomFade + rightFade).clamp(0.0, 0.5) / 2,
        1.0,
      ],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: this,
  );
}
