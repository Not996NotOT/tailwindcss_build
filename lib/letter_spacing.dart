import 'package:flutter/material.dart';

/// Tailwind CSS Letter Spacing utilities for Flutter
/// Utilities for controlling the letter spacing of an element.
extension LetterSpacingExt on Widget {
  
  // === letter-spacing utilities ===
  
  /// tracking-tighter -> letter-spacing: -0.05em;
  Widget trackingTighter() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: -0.8, // -0.05em (假设基础字体16px)
        ),
        child: this,
      );
  
  /// tracking-tight -> letter-spacing: -0.025em;
  Widget trackingTight() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: -0.4, // -0.025em
        ),
        child: this,
      );
  
  /// tracking-normal -> letter-spacing: 0em;
  Widget trackingNormal() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 0,
        ),
        child: this,
      );
  
  /// tracking-wide -> letter-spacing: 0.025em;
  Widget trackingWide() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 0.4, // 0.025em
        ),
        child: this,
      );
  
  /// tracking-wider -> letter-spacing: 0.05em;
  Widget trackingWider() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 0.8, // 0.05em
        ),
        child: this,
      );
  
  /// tracking-widest -> letter-spacing: 0.1em;
  Widget trackingWidest() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 1.6, // 0.1em
        ),
        child: this,
      );

  // === 数值字母间距 ===
  
  /// 自定义字母间距
  Widget letterSpacing(double spacing) => DefaultTextStyle.merge(
        style: TextStyle(
          letterSpacing: spacing,
        ),
        child: this,
      );
  
  /// em单位字母间距
  Widget letterSpacingEm(double em) => DefaultTextStyle.merge(
        style: TextStyle(
          letterSpacing: em * 16, // 假设基础字体16px
        ),
        child: this,
      );

  // === 特定用途字母间距 ===
  
  /// 标题字母间距
  Widget headingSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: -0.5,
        ),
        child: this,
      );
  
  /// 副标题字母间距
  Widget subheadingSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: -0.25,
        ),
        child: this,
      );
  
  /// 正文字母间距
  Widget bodySpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 0,
        ),
        child: this,
      );
  
  /// 按钮字母间距
  Widget buttonSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 0.5,
        ),
        child: this,
      );
  
  /// 标签字母间距
  Widget labelSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 0.8,
        ),
        child: this,
      );
  
  /// 导航字母间距
  Widget navSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 1.0,
        ),
        child: this,
      );
  
  /// Logo字母间距
  Widget logoSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 2.0,
        ),
        child: this,
      );

  // === 字体类型特定间距 ===
  
  /// 等宽字体间距
  Widget monospaceSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 0,
        ),
        child: this,
      );
  
  /// 衬线字体间距
  Widget serifSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 0.1,
        ),
        child: this,
      );
  
  /// 无衬线字体间距
  Widget sansSerifSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 0.2,
        ),
        child: this,
      );

  // === 响应式字母间距 ===
  
  /// 根据屏幕尺寸调整字母间距
  Widget responsiveLetterSpacing({
    double? xs, // < 576px
    double? sm, // >= 576px
    double? md, // >= 768px
    double? lg, // >= 992px
    double? xl, // >= 1200px
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double spacing = 0; // 默认间距
        
        final width = constraints.maxWidth;
        
        if (width >= 1200 && xl != null) {
          spacing = xl;
        } else if (width >= 992 && lg != null) {
          spacing = lg;
        } else if (width >= 768 && md != null) {
          spacing = md;
        } else if (width >= 576 && sm != null) {
          spacing = sm;
        } else if (xs != null) {
          spacing = xs;
        }
        
        return DefaultTextStyle.merge(
          style: TextStyle(letterSpacing: spacing),
          child: this,
        );
      },
    );
  }

  // === 可读性优化 ===
  
  /// 提高可读性的字母间距
  Widget readableSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 0.3,
        ),
        child: this,
      );
  
  /// 紧凑布局字母间距
  Widget compactSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: -0.2,
        ),
        child: this,
      );
  
  /// 宽松布局字母间距
  Widget spaciousSpacing() => DefaultTextStyle.merge(
        style: const TextStyle(
          letterSpacing: 1.0,
        ),
        child: this,
      );

  // === 动态字母间距 ===
  
  /// 根据字体大小调整间距
  Widget adaptiveSpacing() => Builder(
        builder: (context) {
          final fontSize = DefaultTextStyle.of(context).style.fontSize ?? 16;
          final spacing = fontSize * 0.02; // 2%的字体大小作为间距
          
          return DefaultTextStyle.merge(
            style: TextStyle(letterSpacing: spacing),
            child: this,
          );
        },
      );
  
  /// 根据字重调整间距
  Widget weightBasedSpacing() => Builder(
        builder: (context) {
          final fontWeight = DefaultTextStyle.of(context).style.fontWeight ?? FontWeight.normal;
          double spacing = 0;
          
          // 字重越大，间距越小
          if (fontWeight.index >= FontWeight.w700.index) {
            spacing = -0.3;
          } else if (fontWeight.index >= FontWeight.w500.index) {
            spacing = 0;
          } else {
            spacing = 0.2;
          }
          
          return DefaultTextStyle.merge(
            style: TextStyle(letterSpacing: spacing),
            child: this,
          );
        },
      );
}
