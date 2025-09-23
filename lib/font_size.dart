import 'package:flutter/material.dart';

/// Tailwind CSS Font Size utilities for Flutter
/// Utilities for controlling the font size of an element.
extension FontSizeExt on Widget {
  
  // === text-<size> utilities ===
  
  /// text-xs -> font-size: 12px; line-height: 16px;
  Widget textXs() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 12,
          height: 16 / 12, // line-height / font-size
        ),
        child: this,
      );
  
  /// text-sm -> font-size: 14px; line-height: 20px;
  Widget textSm() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 14,
          height: 20 / 14,
        ),
        child: this,
      );
  
  /// text-base -> font-size: 16px; line-height: 24px;
  Widget textBase() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16,
          height: 24 / 16,
        ),
        child: this,
      );
  
  /// text-lg -> font-size: 18px; line-height: 28px;
  Widget textLg() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 18,
          height: 28 / 18,
        ),
        child: this,
      );
  
  /// text-xl -> font-size: 20px; line-height: 28px;
  Widget textXl() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 20,
          height: 28 / 20,
        ),
        child: this,
      );
  
  /// text-2xl -> font-size: 24px; line-height: 32px;
  Widget text2xl() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 24,
          height: 32 / 24,
        ),
        child: this,
      );
  
  /// text-3xl -> font-size: 30px; line-height: 36px;
  Widget text3xl() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 30,
          height: 36 / 30,
        ),
        child: this,
      );
  
  /// text-4xl -> font-size: 36px; line-height: 40px;
  Widget text4xl() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 36,
          height: 40 / 36,
        ),
        child: this,
      );
  
  /// text-5xl -> font-size: 48px; line-height: 1;
  Widget text5xl() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 48,
          height: 1,
        ),
        child: this,
      );
  
  /// text-6xl -> font-size: 60px; line-height: 1;
  Widget text6xl() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 60,
          height: 1,
        ),
        child: this,
      );
  
  /// text-7xl -> font-size: 72px; line-height: 1;
  Widget text7xl() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 72,
          height: 1,
        ),
        child: this,
      );
  
  /// text-8xl -> font-size: 96px; line-height: 1;
  Widget text8xl() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 96,
          height: 1,
        ),
        child: this,
      );
  
  /// text-9xl -> font-size: 128px; line-height: 1;
  Widget text9xl() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 128,
          height: 1,
        ),
        child: this,
      );

  // === 标题字体大小 ===
  
  /// H1标题 -> font-size: 32px; line-height: 40px;
  Widget textH1() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 32,
          height: 40 / 32,
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );
  
  /// H2标题 -> font-size: 28px; line-height: 36px;
  Widget textH2() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 28,
          height: 36 / 28,
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );
  
  /// H3标题 -> font-size: 24px; line-height: 32px;
  Widget textH3() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 24,
          height: 32 / 24,
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );
  
  /// H4标题 -> font-size: 20px; line-height: 28px;
  Widget textH4() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 20,
          height: 28 / 20,
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );
  
  /// H5标题 -> font-size: 18px; line-height: 28px;
  Widget textH5() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 18,
          height: 28 / 18,
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );
  
  /// H6标题 -> font-size: 16px; line-height: 24px;
  Widget textH6() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16,
          height: 24 / 16,
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );

  // === 特殊用途字体大小 ===
  
  /// 正文文本 -> font-size: 16px; line-height: 24px;
  Widget textBody() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16,
          height: 24 / 16,
        ),
        child: this,
      );
  
  /// 说明文本 -> font-size: 14px; line-height: 20px;
  Widget textCaption() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 14,
          height: 20 / 14,
        ),
        child: this,
      );
  
  /// 按钮文本 -> font-size: 16px; line-height: 24px;
  Widget textButton() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16,
          height: 24 / 16,
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );
  
  /// 标签文本 -> font-size: 12px; line-height: 16px;
  Widget textLabel() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 12,
          height: 16 / 12,
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );
  
  /// 链接文本 -> font-size: 16px; line-height: 24px;
  Widget textLink() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16,
          height: 24 / 16,
          decoration: TextDecoration.underline,
        ),
        child: this,
      );

  // === 响应式字体大小 ===
  
  /// 超小屏幕字体 -> font-size: 12px;
  Widget textTiny() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 12,
        ),
        child: this,
      );
  
  /// 小屏幕字体 -> font-size: 14px;
  Widget textSmall() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 14,
        ),
        child: this,
      );
  
  /// 中等屏幕字体 -> font-size: 16px;
  Widget textMedium() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16,
        ),
        child: this,
      );
  
  /// 大屏幕字体 -> font-size: 20px;
  Widget textLarge() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 20,
        ),
        child: this,
      );
  
  /// 超大屏幕字体 -> font-size: 24px;
  Widget textHuge() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 24,
        ),
        child: this,
      );

  // === 自定义字体大小 ===
  
  /// 自定义字体大小
  Widget fontSize(double size) => DefaultTextStyle.merge(
        style: TextStyle(
          fontSize: size,
        ),
        child: this,
      );
  
  /// 自定义字体大小和行高
  Widget fontSizeWithHeight(double size, double lineHeight) => DefaultTextStyle.merge(
        style: TextStyle(
          fontSize: size,
          height: lineHeight / size,
        ),
        child: this,
      );
  
  /// 根据屏幕宽度自适应字体大小
  Widget responsiveFontSize({
    double? xs, // < 576px
    double? sm, // >= 576px
    double? md, // >= 768px
    double? lg, // >= 992px
    double? xl, // >= 1200px
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double fontSize = 16; // 默认字体大小
        
        final width = constraints.maxWidth;
        
        if (width >= 1200 && xl != null) {
          fontSize = xl;
        } else if (width >= 992 && lg != null) {
          fontSize = lg;
        } else if (width >= 768 && md != null) {
          fontSize = md;
        } else if (width >= 576 && sm != null) {
          fontSize = sm;
        } else if (xs != null) {
          fontSize = xs;
        }
        
        return DefaultTextStyle.merge(
          style: TextStyle(fontSize: fontSize),
          child: this,
        );
      },
    );
  }
  
  /// 基于Material Design的字体大小
  Widget materialFontSize(MaterialFontSize size) {
    double fontSize;
    double height;
    
    switch (size) {
      case MaterialFontSize.displayLarge:
        fontSize = 57;
        height = 64 / 57;
        break;
      case MaterialFontSize.displayMedium:
        fontSize = 45;
        height = 52 / 45;
        break;
      case MaterialFontSize.displaySmall:
        fontSize = 36;
        height = 44 / 36;
        break;
      case MaterialFontSize.headlineLarge:
        fontSize = 32;
        height = 40 / 32;
        break;
      case MaterialFontSize.headlineMedium:
        fontSize = 28;
        height = 36 / 28;
        break;
      case MaterialFontSize.headlineSmall:
        fontSize = 24;
        height = 32 / 24;
        break;
      case MaterialFontSize.titleLarge:
        fontSize = 22;
        height = 28 / 22;
        break;
      case MaterialFontSize.titleMedium:
        fontSize = 16;
        height = 24 / 16;
        break;
      case MaterialFontSize.titleSmall:
        fontSize = 14;
        height = 20 / 14;
        break;
      case MaterialFontSize.bodyLarge:
        fontSize = 16;
        height = 24 / 16;
        break;
      case MaterialFontSize.bodyMedium:
        fontSize = 14;
        height = 20 / 14;
        break;
      case MaterialFontSize.bodySmall:
        fontSize = 12;
        height = 16 / 12;
        break;
      case MaterialFontSize.labelLarge:
        fontSize = 14;
        height = 20 / 14;
        break;
      case MaterialFontSize.labelMedium:
        fontSize = 12;
        height = 16 / 12;
        break;
      case MaterialFontSize.labelSmall:
        fontSize = 11;
        height = 16 / 11;
        break;
    }
    
    return DefaultTextStyle.merge(
      style: TextStyle(
        fontSize: fontSize,
        height: height,
      ),
      child: this,
    );
  }
}

/// Material Design 字体大小枚举
enum MaterialFontSize {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}


