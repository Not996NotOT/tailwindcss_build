import 'package:flutter/material.dart';

/// Tailwind CSS Outline Style utilities for Flutter
/// Utilities for controlling the style of an element's outline.
/// 
/// Note: Flutter doesn't have native outline support, so these utilities 
/// simulate outline effects using box shadows or borders with different styles.
extension OutlineStyleExt on Widget {
  
  // === Basic outline style utilities ===
  
  /// outline-none -> outline: 2px solid transparent; outline-offset: 2px;
  Widget outlineNone() => this;
  
  /// outline -> outline: 2px solid; (默认样式)
  Widget outlineDefault({Color? color, double width = 2}) => Container(
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
  
  /// outline-dashed -> outline-style: dashed;
  /// Note: Flutter doesn't have native dashed outline, using dotted shadow pattern
  Widget outlineDashed({Color? color, double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        // 创建虚线效果的多个小阴影
        for (int i = 0; i < 8; i++)
          BoxShadow(
            color: i % 2 == 0 ? (color ?? Colors.blue).withValues(alpha: 0.5) : Colors.transparent,
            spreadRadius: width,
            blurRadius: 0,
            offset: Offset(i * 2.0, 0),
          ),
      ],
    ),
    child: this,
  );
  
  /// outline-dotted -> outline-style: dotted;
  /// Note: Flutter doesn't have native dotted outline, using circular shadow pattern
  Widget outlineDotted({Color? color, double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        // 创建点状效果的圆形阴影
        for (int i = 0; i < 6; i++)
          BoxShadow(
            color: (color ?? Colors.blue).withValues(alpha: 0.5),
            spreadRadius: width * 0.3,
            blurRadius: width * 0.2,
            offset: Offset(i * width * 2, 0),
          ),
      ],
    ),
    child: this,
  );
  
  /// outline-double -> outline-style: double;
  /// Note: 使用双层阴影模拟双线轮廓
  Widget outlineDouble({Color? color, double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        // 外层轮廓
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width + 1,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
        // 内层轮廓（用背景色分隔）
        BoxShadow(
          color: Colors.white,
          spreadRadius: width - 1,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
        // 最内层轮廓
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: width - 2,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Focus outline styles ===
  // 专门用于焦点状态的outline样式
  
  /// outlineFocusSolid -> 实线焦点轮廓
  Widget outlineFocusSolid({Color? color, double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.6),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outlineFocusBlur -> 模糊焦点轮廓
  Widget outlineFocusBlur({Color? color, double width = 2, double blur = 4}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.6),
          spreadRadius: width,
          blurRadius: blur,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outlineFocusGlow -> 发光焦点轮廓
  Widget outlineFocusGlow({Color? color, double width = 2, double blur = 8}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        // 内层发光
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.8),
          spreadRadius: width,
          blurRadius: blur * 0.5,
          offset: Offset(0, 0),
        ),
        // 外层发光
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.4),
          spreadRadius: width + 2,
          blurRadius: blur,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Border-based outline styles ===
  // 使用border方式实现的outline样式，提供更精确的控制
  
  /// outlineBorderSolid -> 使用border实现的实线轮廓
  Widget outlineBorderSolid({Color? color, double width = 2}) => Container(
    padding: EdgeInsets.all(width),
    decoration: BoxDecoration(
      border: Border.all(
        width: width,
        color: color ?? Colors.blue.withValues(alpha: 0.5),
        style: BorderStyle.solid,
      ),
    ),
    child: this,
  );
  
  /// outlineBorderNone -> 使用border实现的无轮廓
  Widget outlineBorderNone() => this;

  // === Custom outline style utilities ===
  
  /// outlineCustom -> 自定义轮廓样式
  Widget outlineCustom({
    Color? color,
    double width = 2,
    double blur = 0,
    double opacity = 0.5,
    Offset offset = const Offset(0, 0),
  }) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: opacity),
          spreadRadius: width,
          blurRadius: blur,
          offset: offset,
        ),
      ],
    ),
    child: this,
  );
  
  /// outlineGradient -> 渐变轮廓效果
  Widget outlineGradient({
    required List<Color> colors,
    double width = 2,
    double blur = 0,
  }) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: colors.asMap().entries.map((entry) {
          int index = entry.key;
          Color color = entry.value;
          double opacity = 1.0 - (index / colors.length) * 0.5;
          return BoxShadow(
            color: color.withValues(alpha: opacity * 0.5),
            spreadRadius: width + index.toDouble(),
            blurRadius: blur,
            offset: Offset(0, 0),
          );
        }).toList(),
      ),
      child: this,
    );
  }
  
  // === Shorthand utilities (简化版本，常用的组合) ===
  
  /// os(style) -> outline-style: <style>; (最简洁的自定义轮廓样式)
  Widget os(String style, {Color? color, double width = 2}) {
    switch (style.toLowerCase()) {
      case 'none':
        return outlineNone();
      case 'solid':
        return outlineDefault(color: color, width: width);
      case 'dashed':
        return outlineDashed(color: color, width: width);
      case 'dotted':
        return outlineDotted(color: color, width: width);
      case 'double':
        return outlineDouble(color: color, width: width);
      default:
        return outlineDefault(color: color, width: width);
    }
  }
  
  // === Ring style utilities (模拟Tailwind的ring效果样式) ===
  
  /// ringSolid -> 实线ring效果
  Widget ringSolid({Color? color, double width = 3}) => Container(
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
  
  /// ringBlur -> 模糊ring效果
  Widget ringBlur({Color? color, double width = 3, double blur = 4}) => Container(
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
  
  /// ringGlow -> 发光ring效果
  Widget ringGlow({Color? color, double width = 3, double blur = 6}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        // 内层ring
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.7),
          spreadRadius: width,
          blurRadius: blur * 0.5,
          offset: Offset(0, 0),
        ),
        // 外层glow
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.3),
          spreadRadius: width + 1,
          blurRadius: blur,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ringInset -> 内凹ring效果
  Widget ringInset({Color? color, double width = 3}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: (color ?? Colors.blue).withValues(alpha: 0.5),
          spreadRadius: -width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Accessibility outline styles ===
  // 针对无障碍访问优化的outline样式
  
  /// outlineAccessible -> 高对比度可访问轮廓
  Widget outlineAccessible({double width = 3}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outlineHighContrast -> 高对比度轮廓
  Widget outlineHighContrast({Color? color, double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        // 外层黑色边框
        BoxShadow(
          color: Colors.black,
          spreadRadius: width + 1,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
        // 内层彩色边框
        BoxShadow(
          color: color ?? Colors.white,
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Animation-ready outline styles ===
  // 为动画准备的outline样式
  
  /// outlineAnimated -> 可动画的轮廓（通过AnimatedContainer使用）
  Widget outlineAnimated({
    Color? color,
    double width = 2,
    double blur = 0,
    Duration duration = const Duration(milliseconds: 200),
  }) => AnimatedContainer(
    duration: duration,
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
  
  /// outlinePulse -> 脉冲轮廓效果（需要配合动画使用）
  Widget outlinePulse({
    Color? color,
    double minWidth = 1,
    double maxWidth = 4,
    Duration duration = const Duration(seconds: 1),
  }) {
    // 这里只是静态实现，实际脉冲效果需要配合AnimationController
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: (color ?? Colors.blue).withValues(alpha: 0.5),
            spreadRadius: maxWidth,
            blurRadius: 2,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: this,
    );
  }
}
