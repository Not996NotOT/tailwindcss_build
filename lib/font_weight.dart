import 'package:flutter/material.dart';

/// Tailwind CSS Font Weight utilities for Flutter
/// Utilities for controlling the font weight of an element.
extension FontWeightExt on Widget {
  
  // === font-weight utilities ===
  
  /// font-thin -> font-weight: 100;
  Widget fontThin() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w100,
        ),
        child: this,
      );
  
  /// font-extralight -> font-weight: 200;
  Widget fontExtralight() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w200,
        ),
        child: this,
      );
  
  /// font-light -> font-weight: 300;
  Widget fontLight() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
        child: this,
      );
  
  /// font-normal -> font-weight: 400;
  Widget fontNormal() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w400,
        ),
        child: this,
      );
  
  /// font-medium -> font-weight: 500;
  Widget fontMedium() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );
  
  /// font-semibold -> font-weight: 600;
  Widget fontSemibold() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        child: this,
      );
  
  /// font-bold -> font-weight: 700;
  Widget fontBold() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w700,
        ),
        child: this,
      );
  
  /// font-extrabold -> font-weight: 800;
  Widget fontExtrabold() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w800,
        ),
        child: this,
      );
  
  /// font-black -> font-weight: 900;
  Widget fontBlack() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w900,
        ),
        child: this,
      );

  // === 数字字重 ===
  
  /// font-weight: 100;
  Widget fontWeight100() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w100,
        ),
        child: this,
      );
  
  /// font-weight: 200;
  Widget fontWeight200() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w200,
        ),
        child: this,
      );
  
  /// font-weight: 300;
  Widget fontWeight300() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w300,
        ),
        child: this,
      );
  
  /// font-weight: 400;
  Widget fontWeight400() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w400,
        ),
        child: this,
      );
  
  /// font-weight: 500;
  Widget fontWeight500() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );
  
  /// font-weight: 600;
  Widget fontWeight600() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        child: this,
      );
  
  /// font-weight: 700;
  Widget fontWeight700() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w700,
        ),
        child: this,
      );
  
  /// font-weight: 800;
  Widget fontWeight800() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w800,
        ),
        child: this,
      );
  
  /// font-weight: 900;
  Widget fontWeight900() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w900,
        ),
        child: this,
      );

  // === 语义化字重 ===
  
  /// 标题字重
  Widget fontHeading() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );
  
  /// 副标题字重
  Widget fontSubheading() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        child: this,
      );
  
  /// 正文字重
  Widget fontBody() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.normal,
        ),
        child: this,
      );
  
  /// 按钮字重
  Widget fontButton() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );
  
  /// 标签字重
  Widget fontLabel() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );
  
  /// 说明文字字重
  Widget fontCaption() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w400,
        ),
        child: this,
      );
  
  /// 链接字重
  Widget fontLink() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );

  // === 强调级别 ===
  
  /// 轻微强调
  Widget emphasisLight() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );
  
  /// 中等强调
  Widget emphasisMedium() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        child: this,
      );
  
  /// 强烈强调
  Widget emphasisStrong() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );
  
  /// 最强强调
  Widget emphasisStrongest() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w900,
        ),
        child: this,
      );

  // === HTML语义标签字重 ===
  
  /// <strong> 标签样式
  Widget strong() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );
  
  /// <b> 标签样式
  Widget bold() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );
  
  /// <h1> 标签字重
  Widget h1Weight() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );
  
  /// <h2> 标签字重
  Widget h2Weight() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        child: this,
      );
  
  /// <h3> 标签字重
  Widget h3Weight() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        child: this,
      );
  
  /// <h4> 标签字重
  Widget h4Weight() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        child: this,
      );
  
  /// <h5> 标签字重
  Widget h5Weight() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );
  
  /// <h6> 标签字重
  Widget h6Weight() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );

  // === 条件字重 ===
  
  /// 根据条件应用粗体
  Widget conditionalBold(bool condition) => DefaultTextStyle.merge(
        style: TextStyle(
          fontWeight: condition ? FontWeight.bold : FontWeight.normal,
        ),
        child: this,
      );
  
  /// 切换字重
  Widget toggleWeight(bool isBold) => DefaultTextStyle.merge(
        style: TextStyle(
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        ),
        child: this,
      );
  
  /// 根据重要性应用字重
  Widget fontImportance(int level) {
    FontWeight weight;
    switch (level) {
      case 1:
        weight = FontWeight.w300;
        break;
      case 2:
        weight = FontWeight.w400;
        break;
      case 3:
        weight = FontWeight.w500;
        break;
      case 4:
        weight = FontWeight.w600;
        break;
      case 5:
        weight = FontWeight.bold;
        break;
      default:
        weight = FontWeight.normal;
    }
    
    return DefaultTextStyle.merge(
      style: TextStyle(fontWeight: weight),
      child: this,
    );
  }

  // === 响应式字重 ===
  
  /// 根据屏幕尺寸调整字重
  Widget responsiveFontWeight({
    FontWeight? xs, // < 576px
    FontWeight? sm, // >= 576px
    FontWeight? md, // >= 768px
    FontWeight? lg, // >= 992px
    FontWeight? xl, // >= 1200px
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        FontWeight weight = FontWeight.normal; // 默认字重
        
        final width = constraints.maxWidth;
        
        if (width >= 1200 && xl != null) {
          weight = xl;
        } else if (width >= 992 && lg != null) {
          weight = lg;
        } else if (width >= 768 && md != null) {
          weight = md;
        } else if (width >= 576 && sm != null) {
          weight = sm;
        } else if (xs != null) {
          weight = xs;
        }
        
        return DefaultTextStyle.merge(
          style: TextStyle(fontWeight: weight),
          child: this,
        );
      },
    );
  }

  // === 自定义字重 ===
  
  /// 自定义字重
  Widget customFontWeight(FontWeight weight) => DefaultTextStyle.merge(
        style: TextStyle(
          fontWeight: weight,
        ),
        child: this,
      );
  
  /// 从数值设置字重
  Widget fontWeightFromValue(int value) {
    // 确保值在100-900范围内，并且是100的倍数
    final clampedValue = (value.clamp(100, 900) / 100).round() * 100;
    final weight = FontWeight.values.firstWhere(
      (w) => w.index * 100 + 100 == clampedValue,
      orElse: () => FontWeight.normal,
    );
    
    return DefaultTextStyle.merge(
      style: TextStyle(fontWeight: weight),
      child: this,
    );
  }
  
  /// 相对字重调整
  Widget adjustFontWeight(int adjustment) {
    return Builder(
      builder: (context) {
        final currentWeight = DefaultTextStyle.of(context).style.fontWeight ?? FontWeight.normal;
        final currentIndex = currentWeight.index;
        final newIndex = (currentIndex + adjustment).clamp(0, FontWeight.values.length - 1);
        final newWeight = FontWeight.values[newIndex];
        
        return DefaultTextStyle.merge(
          style: TextStyle(fontWeight: newWeight),
          child: this,
        );
      },
    );
  }
}
