import 'package:flutter/material.dart';

/// Tailwind CSS Line Height utilities for Flutter
/// Utilities for controlling the line height of an element.
extension LineHeightExt on Widget {
  
  // === leading-<size> utilities ===
  
  /// leading-3 -> line-height: 12px;
  Widget leading3() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 12 / 16, // 假设基础字体16px
        ),
        child: this,
      );
  
  /// leading-4 -> line-height: 16px;
  Widget leading4() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 16 / 16,
        ),
        child: this,
      );
  
  /// leading-5 -> line-height: 20px;
  Widget leading5() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 20 / 16,
        ),
        child: this,
      );
  
  /// leading-6 -> line-height: 24px;
  Widget leading6() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 24 / 16,
        ),
        child: this,
      );
  
  /// leading-7 -> line-height: 28px;
  Widget leading7() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 28 / 16,
        ),
        child: this,
      );
  
  /// leading-8 -> line-height: 32px;
  Widget leading8() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 32 / 16,
        ),
        child: this,
      );
  
  /// leading-9 -> line-height: 36px;
  Widget leading9() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 36 / 16,
        ),
        child: this,
      );
  
  /// leading-10 -> line-height: 40px;
  Widget leading10() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 40 / 16,
        ),
        child: this,
      );

  // === leading-<relative> utilities ===
  
  /// leading-none -> line-height: 1;
  Widget leadingNone() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1,
        ),
        child: this,
      );
  
  /// leading-tight -> line-height: 1.25;
  Widget leadingTight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.25,
        ),
        child: this,
      );
  
  /// leading-snug -> line-height: 1.375;
  Widget leadingSnug() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.375,
        ),
        child: this,
      );
  
  /// leading-normal -> line-height: 1.5;
  Widget leadingNormal() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.5,
        ),
        child: this,
      );
  
  /// leading-relaxed -> line-height: 1.625;
  Widget leadingRelaxed() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.625,
        ),
        child: this,
      );
  
  /// leading-loose -> line-height: 2;
  Widget leadingLoose() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 2,
        ),
        child: this,
      );

  // === 自定义行高 ===
  
  /// 自定义行高倍数
  Widget lineHeight(double height) => DefaultTextStyle.merge(
        style: TextStyle(
          height: height,
        ),
        child: this,
      );
  
  /// 绝对行高值（像素）
  Widget lineHeightPx(double pixels) => Builder(
        builder: (context) {
          final fontSize = DefaultTextStyle.of(context).style.fontSize ?? 16;
          return DefaultTextStyle.merge(
            style: TextStyle(
              height: pixels / fontSize,
            ),
            child: this,
          );
        },
      );

  // === 语义化行高 ===
  
  /// 标题行高
  Widget headingLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.2,
        ),
        child: this,
      );
  
  /// 副标题行高
  Widget subheadingLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.3,
        ),
        child: this,
      );
  
  /// 正文行高
  Widget bodyLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.6,
        ),
        child: this,
      );
  
  /// 按钮行高
  Widget buttonLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.2,
        ),
        child: this,
      );
  
  /// 标签行高
  Widget labelLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.4,
        ),
        child: this,
      );
  
  /// 说明文字行高
  Widget captionLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.3,
        ),
        child: this,
      );

  // === 可读性优化行高 ===
  
  /// 高可读性行高
  Widget readableLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.7,
        ),
        child: this,
      );
  
  /// 紧凑行高
  Widget compactLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.3,
        ),
        child: this,
      );
  
  /// 宽松行高
  Widget spaciousLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.8,
        ),
        child: this,
      );

  // === 特定场景行高 ===
  
  /// 代码行高
  Widget codeLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.4,
        ),
        child: this,
      );
  
  /// 引用行高
  Widget quoteLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.6,
        ),
        child: this,
      );
  
  /// 诗歌行高
  Widget poetryLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.8,
        ),
        child: this,
      );
  
  /// 列表行高
  Widget listLineHeight() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.5,
        ),
        child: this,
      );

  // === 响应式行高 ===
  
  /// 根据屏幕尺寸调整行高
  Widget responsiveLineHeight({
    double? xs, // < 576px
    double? sm, // >= 576px
    double? md, // >= 768px
    double? lg, // >= 992px
    double? xl, // >= 1200px
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double height = 1.5; // 默认行高
        
        final width = constraints.maxWidth;
        
        if (width >= 1200 && xl != null) {
          height = xl;
        } else if (width >= 992 && lg != null) {
          height = lg;
        } else if (width >= 768 && md != null) {
          height = md;
        } else if (width >= 576 && sm != null) {
          height = sm;
        } else if (xs != null) {
          height = xs;
        }
        
        return DefaultTextStyle.merge(
          style: TextStyle(height: height),
          child: this,
        );
      },
    );
  }

  // === 动态行高调整 ===
  
  /// 根据字体大小调整行高
  Widget adaptiveLineHeight() => Builder(
        builder: (context) {
          final fontSize = DefaultTextStyle.of(context).style.fontSize ?? 16;
          double height;
          
          // 字体越大，相对行高越小
          if (fontSize > 24) {
            height = 1.2;
          } else if (fontSize > 18) {
            height = 1.3;
          } else if (fontSize > 14) {
            height = 1.5;
          } else {
            height = 1.6;
          }
          
          return DefaultTextStyle.merge(
            style: TextStyle(height: height),
            child: this,
          );
        },
      );
  
  /// 根据字重调整行高
  Widget weightBasedLineHeight() => Builder(
        builder: (context) {
          final fontWeight = DefaultTextStyle.of(context).style.fontWeight ?? FontWeight.normal;
          double height;
          
          // 字重越大，行高稍微紧一些
          if (fontWeight.index >= FontWeight.w700.index) {
            height = 1.3;
          } else if (fontWeight.index >= FontWeight.w500.index) {
            height = 1.4;
          } else {
            height = 1.5;
          }
          
          return DefaultTextStyle.merge(
            style: TextStyle(height: height),
            child: this,
          );
        },
      );
  
  /// 基于文本长度的行高
  Widget contentBasedLineHeight() => Builder(
        builder: (context) {
          // 这里可以根据文本内容长度调整行高
          // 长文本使用更大的行高提高可读性
          return DefaultTextStyle.merge(
            style: const TextStyle(height: 1.6),
            child: this,
          );
        },
      );

  // === 特殊效果行高 ===
  
  /// 单行显示（行高等于字体大小）
  Widget singleLine() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1,
        ),
        child: this,
      );
  
  /// 双倍行高
  Widget doubleSpaced() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 2,
        ),
        child: this,
      );
  
  /// 1.5倍行高
  Widget oneAndHalfSpaced() => DefaultTextStyle.merge(
        style: const TextStyle(
          height: 1.5,
        ),
        child: this,
      );
}
