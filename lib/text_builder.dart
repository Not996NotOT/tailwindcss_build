import 'package:flutter/material.dart';

import 'container_builder.dart';

/// Text 建造者 - 收集所有文本样式属性，最后一次性构建
class TextBuilder {
  final String text;
  
  // 收集的文本样式属性
  Color? _color;
  double? _fontSize;
  FontWeight? _fontWeight;
  FontStyle? _fontStyle;
  double? _letterSpacing;
  double? _wordSpacing;
  double? _height; // line height
  TextDecoration? _decoration;
  Color? _decorationColor;
  TextDecorationStyle? _decorationStyle;
  double? _decorationThickness;
  List<Shadow>? _shadows;
  String? _fontFamily;
  TextBaseline? _textBaseline;
  TextOverflow? _overflow;
  int? _maxLines;
  TextAlign? _textAlign;
  Locale? _locale;
  
  TextBuilder(this.text);
  
  // === 颜色 ===
  TextBuilder color(Color color) {
    _color = color;
    return this;
  }
  
  // === 字体大小 ===
  TextBuilder fontSize(double size) {
    _fontSize = size;
    return this;
  }
  
  // === 字体粗细 ===
  TextBuilder fontWeight(FontWeight weight) {
    _fontWeight = weight;
    return this;
  }
  
  // === 字体样式 ===
  TextBuilder fontStyle(FontStyle style) {
    _fontStyle = style;
    return this;
  }
  
  // === 字符间距 ===
  TextBuilder letterSpacing(double spacing) {
    _letterSpacing = spacing;
    return this;
  }
  
  // === 行高 ===
  TextBuilder lineHeight(double height) {
    _height = height;
    return this;
  }
  
  // === 文本装饰 ===
  TextBuilder decoration(TextDecoration decoration) {
    _decoration = decoration;
    return this;
  }
  
  TextBuilder decorationColor(Color color) {
    _decorationColor = color;
    return this;
  }
  
  // === 阴影 ===
  TextBuilder textShadow(List<Shadow> shadows) {
    if (_shadows == null) {
      _shadows = shadows;
    } else {
      _shadows!.addAll(shadows);
    }
    return this;
  }
  
  // === 字体家族 ===
  TextBuilder fontFamily(String family) {
    _fontFamily = family;
    return this;
  }
  
  // === 文本对齐 ===
  TextBuilder textAlign(TextAlign align) {
    _textAlign = align;
    return this;
  }
  
  // === 溢出处理 ===
  TextBuilder overflow(TextOverflow overflow) {
    _overflow = overflow;
    return this;
  }
  
  TextBuilder maxLines(int lines) {
    _maxLines = lines;
    return this;
  }
  
  /// 最终构建方法 - 一次性创建Text
  Text build() {
    return Text(
      text,
      style: TextStyle(
        color: _color,
        fontSize: _fontSize,
        fontWeight: _fontWeight,
        fontStyle: _fontStyle,
        letterSpacing: _letterSpacing,
        wordSpacing: _wordSpacing,
        height: _height,
        decoration: _decoration,
        decorationColor: _decorationColor,
        decorationStyle: _decorationStyle,
        decorationThickness: _decorationThickness,
        shadows: _shadows,
        fontFamily: _fontFamily,
        textBaseline: _textBaseline,
      ),
      textAlign: _textAlign,
      overflow: _overflow,
      maxLines: _maxLines,
      locale: _locale,
    );
  }
}

/// 创建 TextBuilder 的便捷方法
TextBuilder textBuilder(String text) {
  return TextBuilder(text);
}

/// TextBuilder 的样式扩展 - TailwindCSS 风格的方法
extension TextBuilderTailwindExtensions on TextBuilder {
  
  // === 文本颜色快捷方法 ===
  TextBuilder textWhite() => color(Colors.white);
  TextBuilder textBlack() => color(Colors.black);
  TextBuilder textGray100() => color(Color(0xFFF3F4F6));
  TextBuilder textGray200() => color(Color(0xFFE5E7EB));
  TextBuilder textGray300() => color(Color(0xFFD1D5DB));
  TextBuilder textGray400() => color(Color(0xFF9CA3AF));
  TextBuilder textGray500() => color(Color(0xFF6B7280));
  TextBuilder textGray600() => color(Color(0xFF4B5563));
  TextBuilder textGray700() => color(Color(0xFF374151));
  TextBuilder textGray800() => color(Color(0xFF1F2937));
  TextBuilder textGray900() => color(Color(0xFF111827));
  
  TextBuilder textBlue50() => color(Color(0xFFEFF6FF));
  TextBuilder textBlue100() => color(Color(0xFFDBEAFE));
  TextBuilder textBlue200() => color(Color(0xFFBFDBFE));
  TextBuilder textBlue300() => color(Color(0xFF93C5FD));
  TextBuilder textBlue400() => color(Color(0xFF60A5FA));
  TextBuilder textBlue500() => color(Color(0xFF3B82F6));
  TextBuilder textBlue600() => color(Color(0xFF2563EB));
  TextBuilder textBlue700() => color(Color(0xFF1D4ED8));
  TextBuilder textBlue800() => color(Color(0xFF1E40AF));
  TextBuilder textBlue900() => color(Color(0xFF1E3A8A));
  
  TextBuilder textRed50() => color(Color(0xFFFEF2F2));
  TextBuilder textRed100() => color(Color(0xFFFEE2E2));
  TextBuilder textRed200() => color(Color(0xFFFECACA));
  TextBuilder textRed300() => color(Color(0xFFFCA5A5));
  TextBuilder textRed400() => color(Color(0xFFF87171));
  TextBuilder textRed500() => color(Color(0xFFEF4444));
  TextBuilder textRed600() => color(Color(0xFFDC2626));
  TextBuilder textRed700() => color(Color(0xFFB91C1C));
  TextBuilder textRed800() => color(Color(0xFF991B1B));
  TextBuilder textRed900() => color(Color(0xFF7F1D1D));
  
  TextBuilder textGreen50() => color(Color(0xFFF0FDF4));
  TextBuilder textGreen100() => color(Color(0xFFDCFCE7));
  TextBuilder textGreen200() => color(Color(0xFFBBF7D0));
  TextBuilder textGreen300() => color(Color(0xFF86EFAC));
  TextBuilder textGreen400() => color(Color(0xFF4ADE80));
  TextBuilder textGreen500() => color(Color(0xFF22C55E));
  TextBuilder textGreen600() => color(Color(0xFF16A34A));
  TextBuilder textGreen700() => color(Color(0xFF15803D));
  TextBuilder textGreen800() => color(Color(0xFF166534));
  TextBuilder textGreen900() => color(Color(0xFF14532D));
  
  // === 字体大小快捷方法 ===
  TextBuilder textXs() => fontSize(12);
  TextBuilder textSm() => fontSize(14);
  TextBuilder textBase() => fontSize(16);
  TextBuilder textLg() => fontSize(18);
  TextBuilder textXl() => fontSize(20);
  TextBuilder text2xl() => fontSize(24);
  TextBuilder text3xl() => fontSize(30);
  TextBuilder text4xl() => fontSize(36);
  TextBuilder text5xl() => fontSize(48);
  TextBuilder text6xl() => fontSize(60);
  TextBuilder text7xl() => fontSize(72);
  TextBuilder text8xl() => fontSize(96);
  TextBuilder text9xl() => fontSize(128);
  
  // === 字体粗细快捷方法 ===
  TextBuilder fontThin() => fontWeight(FontWeight.w100);
  TextBuilder fontExtralight() => fontWeight(FontWeight.w200);
  TextBuilder fontLight() => fontWeight(FontWeight.w300);
  TextBuilder fontNormal() => fontWeight(FontWeight.w400);
  TextBuilder fontMedium() => fontWeight(FontWeight.w500);
  TextBuilder fontSemibold() => fontWeight(FontWeight.w600);
  TextBuilder fontBold() => fontWeight(FontWeight.w700);
  TextBuilder fontExtrabold() => fontWeight(FontWeight.w800);
  TextBuilder fontBlack() => fontWeight(FontWeight.w900);
  
  // === 字体样式快捷方法 ===
  TextBuilder italic() => fontStyle(FontStyle.italic);
  TextBuilder notItalic() => fontStyle(FontStyle.normal);
  
  // === 文本装饰快捷方法 ===
  TextBuilder underline() => decoration(TextDecoration.underline);
  TextBuilder overline() => decoration(TextDecoration.overline);
  TextBuilder lineThrough() => decoration(TextDecoration.lineThrough);
  TextBuilder noUnderline() => decoration(TextDecoration.none);
  
  // === 文本对齐快捷方法 ===
  TextBuilder textLeft() => textAlign(TextAlign.left);
  TextBuilder textCenter() => textAlign(TextAlign.center);
  TextBuilder textRight() => textAlign(TextAlign.right);
  TextBuilder textJustify() => textAlign(TextAlign.justify);
  
  // === 字符间距快捷方法 ===
  TextBuilder trackingTighter() => letterSpacing(-0.05);
  TextBuilder trackingTight() => letterSpacing(-0.025);
  TextBuilder trackingNormal() => letterSpacing(0);
  TextBuilder trackingWide() => letterSpacing(0.025);
  TextBuilder trackingWider() => letterSpacing(0.05);
  TextBuilder trackingWidest() => letterSpacing(0.1);
  
  // === Orange颜色方法 ===
  TextBuilder textOrange50() => color(Color(0xFFFFF7ED));
  TextBuilder textOrange100() => color(Color(0xFFFFEDD5));
  TextBuilder textOrange200() => color(Color(0xFFFED7AA));
  TextBuilder textOrange300() => color(Color(0xFFFDBA74));
  TextBuilder textOrange400() => color(Color(0xFFFB923C));
  TextBuilder textOrange500() => color(Color(0xFFF97316));
  TextBuilder textOrange600() => color(Color(0xFFEA580C));
  TextBuilder textOrange700() => color(Color(0xFFC2410C));
  TextBuilder textOrange800() => color(Color(0xFF9A3412));
  TextBuilder textOrange900() => color(Color(0xFF7C2D12));
  
  // === 行高快捷方法 ===
  TextBuilder leadingNone() => lineHeight(1);
  TextBuilder leadingTight() => lineHeight(1.25);
  TextBuilder leadingSnug() => lineHeight(1.375);
  TextBuilder leadingNormal() => lineHeight(1.5);
  TextBuilder leadingRelaxed() => lineHeight(1.625);
  TextBuilder leadingLoose() => lineHeight(2);
}

/// Text 到 TextBuilder 的转换扩展
extension TextToTextBuilder on Text {
  /// 将 Text 转换为 TextBuilder，开始样式链式调用
  TextBuilder asText() {
    return TextBuilder(data ?? '');
  }
  
  /// @deprecated 使用 asText() 替代
  @Deprecated('Use asText() instead. This will be removed in a future version.')
  TextBuilder asTextBuilder() {
    return TextBuilder(data ?? '');
  }
}

/// String 到 TextBuilder 的转换扩展
extension StringToTextBuilder on String {
  /// 将 String 转换为 TextBuilder，开始样式链式调用
  TextBuilder asText() {
    return TextBuilder(this);
  }
  
  /// @deprecated 使用 asText() 替代
  @Deprecated('Use asText() instead. This will be removed in a future version.')
  TextBuilder asTextBuilder() {
    return TextBuilder(this);
  }
}

/// Text 的样式扩展 - TailwindCSS 风格的方法 (直接在Text上使用)
extension TextTailwindExtensions on Text {
  
  // === 文本颜色快捷方法 ===
  TextBuilder textWhite() => TextBuilder(data ?? '').color(Colors.white);
  TextBuilder textBlack() => TextBuilder(data ?? '').color(Colors.black);
  TextBuilder textGray100() => TextBuilder(data ?? '').color(Color(0xFFF3F4F6));
  TextBuilder textGray200() => TextBuilder(data ?? '').color(Color(0xFFE5E7EB));
  TextBuilder textGray300() => TextBuilder(data ?? '').color(Color(0xFFD1D5DB));
  TextBuilder textGray400() => TextBuilder(data ?? '').color(Color(0xFF9CA3AF));
  TextBuilder textGray500() => TextBuilder(data ?? '').color(Color(0xFF6B7280));
  TextBuilder textGray600() => TextBuilder(data ?? '').color(Color(0xFF4B5563));
  TextBuilder textGray700() => TextBuilder(data ?? '').color(Color(0xFF374151));
  TextBuilder textGray800() => TextBuilder(data ?? '').color(Color(0xFF1F2937));
  TextBuilder textGray900() => TextBuilder(data ?? '').color(Color(0xFF111827));
  
  TextBuilder textBlue50() => TextBuilder(data ?? '').color(Color(0xFFEFF6FF));
  TextBuilder textBlue100() => TextBuilder(data ?? '').color(Color(0xFFDBEAFE));
  TextBuilder textBlue200() => TextBuilder(data ?? '').color(Color(0xFFBFDBFE));
  TextBuilder textBlue300() => TextBuilder(data ?? '').color(Color(0xFF93C5FD));
  TextBuilder textBlue400() => TextBuilder(data ?? '').color(Color(0xFF60A5FA));
  TextBuilder textBlue500() => TextBuilder(data ?? '').color(Color(0xFF3B82F6));
  TextBuilder textBlue600() => TextBuilder(data ?? '').color(Color(0xFF2563EB));
  TextBuilder textBlue700() => TextBuilder(data ?? '').color(Color(0xFF1D4ED8));
  TextBuilder textBlue800() => TextBuilder(data ?? '').color(Color(0xFF1E40AF));
  TextBuilder textBlue900() => TextBuilder(data ?? '').color(Color(0xFF1E3A8A));
  
  TextBuilder textRed50() => TextBuilder(data ?? '').color(Color(0xFFFEF2F2));
  TextBuilder textRed100() => TextBuilder(data ?? '').color(Color(0xFFFEE2E2));
  TextBuilder textRed200() => TextBuilder(data ?? '').color(Color(0xFFFECACA));
  TextBuilder textRed300() => TextBuilder(data ?? '').color(Color(0xFFFCA5A5));
  TextBuilder textRed400() => TextBuilder(data ?? '').color(Color(0xFFF87171));
  TextBuilder textRed500() => TextBuilder(data ?? '').color(Color(0xFFEF4444));
  TextBuilder textRed600() => TextBuilder(data ?? '').color(Color(0xFFDC2626));
  TextBuilder textRed700() => TextBuilder(data ?? '').color(Color(0xFFB91C1C));
  TextBuilder textRed800() => TextBuilder(data ?? '').color(Color(0xFF991B1B));
  TextBuilder textRed900() => TextBuilder(data ?? '').color(Color(0xFF7F1D1D));
  
  TextBuilder textGreen50() => TextBuilder(data ?? '').color(Color(0xFFF0FDF4));
  TextBuilder textGreen100() => TextBuilder(data ?? '').color(Color(0xFFDCFCE7));
  TextBuilder textGreen200() => TextBuilder(data ?? '').color(Color(0xFFBBF7D0));
  TextBuilder textGreen300() => TextBuilder(data ?? '').color(Color(0xFF86EFAC));
  TextBuilder textGreen400() => TextBuilder(data ?? '').color(Color(0xFF4ADE80));
  TextBuilder textGreen500() => TextBuilder(data ?? '').color(Color(0xFF22C55E));
  TextBuilder textGreen600() => TextBuilder(data ?? '').color(Color(0xFF16A34A));
  TextBuilder textGreen700() => TextBuilder(data ?? '').color(Color(0xFF15803D));
  TextBuilder textGreen800() => TextBuilder(data ?? '').color(Color(0xFF166534));
  TextBuilder textGreen900() => TextBuilder(data ?? '').color(Color(0xFF14532D));
  
  TextBuilder textYellow50() => TextBuilder(data ?? '').color(Color(0xFFFEFCE8));
  TextBuilder textYellow100() => TextBuilder(data ?? '').color(Color(0xFFFEF3C7));
  TextBuilder textYellow200() => TextBuilder(data ?? '').color(Color(0xFFFDE68A));
  TextBuilder textYellow300() => TextBuilder(data ?? '').color(Color(0xFFFCD34D));
  TextBuilder textYellow400() => TextBuilder(data ?? '').color(Color(0xFFFBBF24));
  TextBuilder textYellow500() => TextBuilder(data ?? '').color(Color(0xFFF59E0B));
  TextBuilder textYellow600() => TextBuilder(data ?? '').color(Color(0xFFD97706));
  TextBuilder textYellow700() => TextBuilder(data ?? '').color(Color(0xFFB45309));
  TextBuilder textYellow800() => TextBuilder(data ?? '').color(Color(0xFF92400E));
  TextBuilder textYellow900() => TextBuilder(data ?? '').color(Color(0xFF78350F));
  
  TextBuilder textPurple50() => TextBuilder(data ?? '').color(Color(0xFFFAF5FF));
  TextBuilder textPurple100() => TextBuilder(data ?? '').color(Color(0xFFF3E8FF));
  TextBuilder textPurple200() => TextBuilder(data ?? '').color(Color(0xFFE9D5FF));
  TextBuilder textPurple300() => TextBuilder(data ?? '').color(Color(0xFFD8B4FE));
  TextBuilder textPurple400() => TextBuilder(data ?? '').color(Color(0xFFC084FC));
  TextBuilder textPurple500() => TextBuilder(data ?? '').color(Color(0xFFA855F7));
  TextBuilder textPurple600() => TextBuilder(data ?? '').color(Color(0xFF9333EA));
  TextBuilder textPurple700() => TextBuilder(data ?? '').color(Color(0xFF7C3AED));
  TextBuilder textPurple800() => TextBuilder(data ?? '').color(Color(0xFF6B21A8));
  TextBuilder textPurple900() => TextBuilder(data ?? '').color(Color(0xFF581C87));
  
  TextBuilder textOrange50() => TextBuilder(data ?? '').color(Color(0xFFFFF7ED));
  TextBuilder textOrange100() => TextBuilder(data ?? '').color(Color(0xFFFFEDD5));
  TextBuilder textOrange200() => TextBuilder(data ?? '').color(Color(0xFFFED7AA));
  TextBuilder textOrange300() => TextBuilder(data ?? '').color(Color(0xFFFDBA74));
  TextBuilder textOrange400() => TextBuilder(data ?? '').color(Color(0xFFFB923C));
  TextBuilder textOrange500() => TextBuilder(data ?? '').color(Color(0xFFF97316));
  TextBuilder textOrange600() => TextBuilder(data ?? '').color(Color(0xFFEA580C));
  TextBuilder textOrange700() => TextBuilder(data ?? '').color(Color(0xFFC2410C));
  TextBuilder textOrange800() => TextBuilder(data ?? '').color(Color(0xFF9A3412));
  TextBuilder textOrange900() => TextBuilder(data ?? '').color(Color(0xFF7C2D12));
  
  // === 字体大小快捷方法 ===
  TextBuilder textXs() => TextBuilder(data ?? '').fontSize(12);
  TextBuilder textSm() => TextBuilder(data ?? '').fontSize(14);
  TextBuilder textBase() => TextBuilder(data ?? '').fontSize(16);
  TextBuilder textLg() => TextBuilder(data ?? '').fontSize(18);
  TextBuilder textXl() => TextBuilder(data ?? '').fontSize(20);
  TextBuilder text2xl() => TextBuilder(data ?? '').fontSize(24);
  TextBuilder text3xl() => TextBuilder(data ?? '').fontSize(30);
  TextBuilder text4xl() => TextBuilder(data ?? '').fontSize(36);
  TextBuilder text5xl() => TextBuilder(data ?? '').fontSize(48);
  TextBuilder text6xl() => TextBuilder(data ?? '').fontSize(60);
  TextBuilder text7xl() => TextBuilder(data ?? '').fontSize(72);
  TextBuilder text8xl() => TextBuilder(data ?? '').fontSize(96);
  TextBuilder text9xl() => TextBuilder(data ?? '').fontSize(128);
  
  // === 字体粗细快捷方法 ===
  TextBuilder fontThin() => TextBuilder(data ?? '').fontWeight(FontWeight.w100);
  TextBuilder fontExtralight() => TextBuilder(data ?? '').fontWeight(FontWeight.w200);
  TextBuilder fontLight() => TextBuilder(data ?? '').fontWeight(FontWeight.w300);
  TextBuilder fontNormal() => TextBuilder(data ?? '').fontWeight(FontWeight.w400);
  TextBuilder fontMedium() => TextBuilder(data ?? '').fontWeight(FontWeight.w500);
  TextBuilder fontSemibold() => TextBuilder(data ?? '').fontWeight(FontWeight.w600);
  TextBuilder fontBold() => TextBuilder(data ?? '').fontWeight(FontWeight.w700);
  TextBuilder fontExtrabold() => TextBuilder(data ?? '').fontWeight(FontWeight.w800);
  TextBuilder fontBlack() => TextBuilder(data ?? '').fontWeight(FontWeight.w900);
  
  // === 字体样式快捷方法 ===
  TextBuilder italic() => TextBuilder(data ?? '').fontStyle(FontStyle.italic);
  TextBuilder notItalic() => TextBuilder(data ?? '').fontStyle(FontStyle.normal);
  
  // === 文本装饰快捷方法 ===
  TextBuilder underline() => TextBuilder(data ?? '').decoration(TextDecoration.underline);
  TextBuilder overline() => TextBuilder(data ?? '').decoration(TextDecoration.overline);
  TextBuilder lineThrough() => TextBuilder(data ?? '').decoration(TextDecoration.lineThrough);
  TextBuilder noUnderline() => TextBuilder(data ?? '').decoration(TextDecoration.none);
  
  // === 文本对齐快捷方法 ===
  TextBuilder textLeft() => TextBuilder(data ?? '').textAlign(TextAlign.left);
  TextBuilder textCenter() => TextBuilder(data ?? '').textAlign(TextAlign.center);
  TextBuilder textRight() => TextBuilder(data ?? '').textAlign(TextAlign.right);
  TextBuilder textJustify() => TextBuilder(data ?? '').textAlign(TextAlign.justify);
  
  // === 字符间距快捷方法 ===
  TextBuilder trackingTighter() => TextBuilder(data ?? '').letterSpacing(-0.05);
  TextBuilder trackingTight() => TextBuilder(data ?? '').letterSpacing(-0.025);
  TextBuilder trackingNormal() => TextBuilder(data ?? '').letterSpacing(0);
  TextBuilder trackingWide() => TextBuilder(data ?? '').letterSpacing(0.025);
  TextBuilder trackingWider() => TextBuilder(data ?? '').letterSpacing(0.05);
  TextBuilder trackingWidest() => TextBuilder(data ?? '').letterSpacing(0.1);
  
  // === 行高快捷方法 ===
  TextBuilder leadingNone() => TextBuilder(data ?? '').lineHeight(1);
  TextBuilder leadingTight() => TextBuilder(data ?? '').lineHeight(1.25);
  TextBuilder leadingSnug() => TextBuilder(data ?? '').lineHeight(1.375);
  TextBuilder leadingNormal() => TextBuilder(data ?? '').lineHeight(1.5);
  TextBuilder leadingRelaxed() => TextBuilder(data ?? '').lineHeight(1.625);
  TextBuilder leadingLoose() => TextBuilder(data ?? '').lineHeight(2);
}

/// TextBuilder 扩展 - 添加转换方法
extension TextBuilderConversion on TextBuilder {
  /// 直接构建 Text 并转换为 ContainerBuilder
  ContainerBuilder asContainer() {
    return ContainerBuilder(build());
  }
}
