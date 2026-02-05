import 'package:flutter/material.dart';

import 'colors.dart';
import 'container_builder.dart';

/// Text 建造者 - 收集所有文本样式属性，最后一次性构建
/// 
/// A builder class for creating styled text widgets with Tailwind CSS-like utility methods.
/// Collects all text style properties and builds a Text widget at the end.
/// 
/// Example:
/// ```dart
/// TextBuilder('Hello World')
///   .textXl()
///   .fontBold()
///   .textBlue500()
///   .textCenter()
///   .build()
/// ```
class TextBuilder {
  /// The text string to be displayed.
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
  
  /// Creates a [TextBuilder] with the given [text].
  /// 
  /// The [text] will be displayed in a Text widget when [build] is called.
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
  
  TextBuilder decorationStyle(TextDecorationStyle style) {
    _decorationStyle = style;
    return this;
  }
  
  TextBuilder decorationThickness(double thickness) {
    _decorationThickness = thickness;
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
  TextBuilder textGray100() => color(const Color(0xFFF3F4F6));
  TextBuilder textGray200() => color(const Color(0xFFE5E7EB));
  TextBuilder textGray300() => color(const Color(0xFFD1D5DB));
  TextBuilder textGray400() => color(const Color(0xFF9CA3AF));
  TextBuilder textGray500() => color(const Color(0xFF6B7280));
  TextBuilder textGray600() => color(const Color(0xFF4B5563));
  TextBuilder textGray700() => color(const Color(0xFF374151));
  TextBuilder textGray800() => color(const Color(0xFF1F2937));
  TextBuilder textGray900() => color(const Color(0xFF111827));
  
  TextBuilder textBlue50() => color(const Color(0xFFEFF6FF));
  TextBuilder textBlue100() => color(const Color(0xFFDBEAFE));
  TextBuilder textBlue200() => color(const Color(0xFFBFDBFE));
  TextBuilder textBlue300() => color(const Color(0xFF93C5FD));
  TextBuilder textBlue400() => color(const Color(0xFF60A5FA));
  TextBuilder textBlue500() => color(const Color(0xFF3B82F6));
  TextBuilder textBlue600() => color(const Color(0xFF2563EB));
  TextBuilder textBlue700() => color(const Color(0xFF1D4ED8));
  TextBuilder textBlue800() => color(const Color(0xFF1E40AF));
  TextBuilder textBlue900() => color(const Color(0xFF1E3A8A));
  
  TextBuilder textRed50() => color(const Color(0xFFFEF2F2));
  TextBuilder textRed100() => color(const Color(0xFFFEE2E2));
  TextBuilder textRed200() => color(const Color(0xFFFECACA));
  TextBuilder textRed300() => color(const Color(0xFFFCA5A5));
  TextBuilder textRed400() => color(const Color(0xFFF87171));
  TextBuilder textRed500() => color(const Color(0xFFEF4444));
  TextBuilder textRed600() => color(const Color(0xFFDC2626));
  TextBuilder textRed700() => color(const Color(0xFFB91C1C));
  TextBuilder textRed800() => color(const Color(0xFF991B1B));
  TextBuilder textRed900() => color(const Color(0xFF7F1D1D));
  
  TextBuilder textGreen50() => color(const Color(0xFFF0FDF4));
  TextBuilder textGreen100() => color(const Color(0xFFDCFCE7));
  TextBuilder textGreen200() => color(const Color(0xFFBBF7D0));
  TextBuilder textGreen300() => color(const Color(0xFF86EFAC));
  TextBuilder textGreen400() => color(const Color(0xFF4ADE80));
  TextBuilder textGreen500() => color(const Color(0xFF22C55E));
  TextBuilder textGreen600() => color(const Color(0xFF16A34A));
  TextBuilder textGreen700() => color(const Color(0xFF15803D));
  TextBuilder textGreen800() => color(const Color(0xFF166534));
  TextBuilder textGreen900() => color(const Color(0xFF14532D));
  
  TextBuilder textPurple50() => color(const Color(0xFFFAF5FF));
  TextBuilder textPurple100() => color(const Color(0xFFF3E8FF));
  TextBuilder textPurple200() => color(const Color(0xFFE9D5FF));
  TextBuilder textPurple300() => color(const Color(0xFFD8B4FE));
  TextBuilder textPurple400() => color(const Color(0xFFC084FC));
  TextBuilder textPurple500() => color(const Color(0xFFA855F7));
  TextBuilder textPurple600() => color(const Color(0xFF9333EA));
  TextBuilder textPurple700() => color(const Color(0xFF7C3AED));
  TextBuilder textPurple800() => color(const Color(0xFF6B21A8));
  TextBuilder textPurple900() => color(const Color(0xFF581C87));
  
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
  
  // === Text Decoration Line (Tailwind CSS 命名) ===
  /// text-decoration-line: underline;
  TextBuilder underline() => decoration(TextDecoration.underline);
  
  /// text-decoration-line: overline;
  TextBuilder overline() => decoration(TextDecoration.overline);
  
  /// text-decoration-line: line-through;
  TextBuilder lineThrough() => decoration(TextDecoration.lineThrough);
  
  /// text-decoration-line: none;
  TextBuilder noUnderline() => decoration(TextDecoration.none);
  
  // === Text Decoration Style (Tailwind CSS 命名) ===
  /// text-decoration-style: solid;
  TextBuilder decorationSolid() => decorationStyle(TextDecorationStyle.solid);
  
  /// text-decoration-style: double;
  TextBuilder decorationDouble() => decorationStyle(TextDecorationStyle.double);
  
  /// text-decoration-style: dotted;
  TextBuilder decorationDotted() => decorationStyle(TextDecorationStyle.dotted);
  
  /// text-decoration-style: dashed;
  TextBuilder decorationDashed() => decorationStyle(TextDecorationStyle.dashed);
  
  /// text-decoration-style: wavy;
  TextBuilder decorationWavy() => decorationStyle(TextDecorationStyle.wavy);
  
  // === Text Decoration Thickness (Tailwind CSS 命名) ===
  
  /// decoration-auto: text-decoration-thickness: auto;
  /// ⚠️ 限制：Flutter 不完全支持 CSS auto 值，使用默认 1.0px
  TextBuilder decorationAuto() => decorationThickness(1.0);
  
  /// decoration-from-font: text-decoration-thickness: from-font;
  /// ⚠️ 限制：Flutter 不支持 from-font 值，使用默认 1.0px
  TextBuilder decorationFromFont() => decorationThickness(1.0);
  
  /// decoration-0: text-decoration-thickness: 0px;
  TextBuilder decoration0() => decorationThickness(0.0);
  
  /// decoration-1: text-decoration-thickness: 1px;
  TextBuilder decoration1() => decorationThickness(1.0);
  
  /// decoration-2: text-decoration-thickness: 2px;
  TextBuilder decoration2() => decorationThickness(2.0);
  
  /// decoration-4: text-decoration-thickness: 4px;
  TextBuilder decoration4() => decorationThickness(4.0);
  
  /// decoration-8: text-decoration-thickness: 8px;
  TextBuilder decoration8() => decorationThickness(8.0);
  
  /// decoration-[&lt;value&gt;]: text-decoration-thickness: &lt;value&gt;;
  /// 自定义厚度值，接受任意数值
  /// 用法: decorationCustom(3.5) 设置 3.5px 厚度
  TextBuilder decorationCustom(double value) => decorationThickness(value);
  
  /// decoration-(length:&lt;custom-property&gt;): text-decoration-thickness: var(&lt;custom-property&gt;);
  /// ❌ 不支持：Flutter 不支持 CSS 自定义属性和 var() 语法
  /// 这个功能在 Flutter 中无法实现，因为 Flutter 没有 CSS 变量系统
  
  // === Text Underline Offset (Tailwind CSS 命名) ===
  /// ❌ 全部不支持：Flutter 不支持 text-underline-offset 属性
  /// Flutter 的 TextStyle 没有提供控制下划线偏移的API
  /// 以下方法仅作为占位符，实际无法改变下划线位置
  
  /// underline-offset-&lt;number&gt;: text-underline-offset: &lt;number&gt;px;
  /// ❌ 不支持：Flutter 无法控制下划线偏移
  TextBuilder underlineOffsetCustom(double offset) {
    // Flutter 不支持下划线偏移，此方法无实际效果
    return this;
  }
  
  /// -underline-offset-&lt;number&gt;: text-underline-offset: calc(&lt;number&gt;px * -1);
  /// ❌ 不支持：Flutter 无法控制下划线偏移
  TextBuilder underlineOffsetNegative(double offset) {
    // Flutter 不支持下划线偏移，此方法无实际效果
    return this;
  }
  
  /// underline-offset-auto: text-underline-offset: auto;
  /// ❌ 不支持：Flutter 无法控制下划线偏移
  TextBuilder underlineOffsetAuto() {
    // Flutter 不支持下划线偏移，此方法无实际效果
    return this;
  }
  
  // === Text Transform (Tailwind CSS 命名) ===
  
  /// uppercase: text-transform: uppercase;
  /// ✅ 支持：通过字符串转换实现
  TextBuilder uppercase() {
    // 注意：这会修改原始文本内容
    return TextBuilder(text.toUpperCase())
      .._color = _color
      .._fontSize = _fontSize
      .._fontWeight = _fontWeight
      .._fontStyle = _fontStyle
      .._letterSpacing = _letterSpacing
      .._wordSpacing = _wordSpacing
      .._height = _height
      .._decoration = _decoration
      .._decorationColor = _decorationColor
      .._decorationStyle = _decorationStyle
      .._decorationThickness = _decorationThickness
      .._shadows = _shadows
      .._fontFamily = _fontFamily
      .._textBaseline = _textBaseline
      .._overflow = _overflow
      .._maxLines = _maxLines
      .._textAlign = _textAlign
      .._locale = _locale;
  }
  
  /// lowercase: text-transform: lowercase;
  /// ✅ 支持：通过字符串转换实现
  TextBuilder lowercase() {
    return TextBuilder(text.toLowerCase())
      .._color = _color
      .._fontSize = _fontSize
      .._fontWeight = _fontWeight
      .._fontStyle = _fontStyle
      .._letterSpacing = _letterSpacing
      .._wordSpacing = _wordSpacing
      .._height = _height
      .._decoration = _decoration
      .._decorationColor = _decorationColor
      .._decorationStyle = _decorationStyle
      .._decorationThickness = _decorationThickness
      .._shadows = _shadows
      .._fontFamily = _fontFamily
      .._textBaseline = _textBaseline
      .._overflow = _overflow
      .._maxLines = _maxLines
      .._textAlign = _textAlign
      .._locale = _locale;
  }
  
  /// capitalize: text-transform: capitalize;
  /// ✅ 支持：通过字符串转换实现，首字母大写
  TextBuilder capitalize() {
    String capitalizedText = text.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
    
    return TextBuilder(capitalizedText)
      .._color = _color
      .._fontSize = _fontSize
      .._fontWeight = _fontWeight
      .._fontStyle = _fontStyle
      .._letterSpacing = _letterSpacing
      .._wordSpacing = _wordSpacing
      .._height = _height
      .._decoration = _decoration
      .._decorationColor = _decorationColor
      .._decorationStyle = _decorationStyle
      .._decorationThickness = _decorationThickness
      .._shadows = _shadows
      .._fontFamily = _fontFamily
      .._textBaseline = _textBaseline
      .._overflow = _overflow
      .._maxLines = _maxLines
      .._textAlign = _textAlign
      .._locale = _locale;
  }
  
  /// normal-case: text-transform: none;
  /// ✅ 支持：保持原始文本不变
  TextBuilder normalCase() {
    return this; // 不做任何转换
  }
  
  // === Text Overflow (Tailwind CSS 命名) ===
  
  /// truncate: overflow: hidden; text-overflow: ellipsis; white-space: nowrap;
  /// ✅ 支持：通过 TextOverflow.ellipsis 实现
  TextBuilder truncate() {
    _overflow = TextOverflow.ellipsis;
    _maxLines = 1; // 单行显示以配合截断
    return this;
  }
  
  /// text-ellipsis: text-overflow: ellipsis;
  /// ✅ 支持：显示省略号
  TextBuilder textEllipsis() {
    _overflow = TextOverflow.ellipsis;
    return this;
  }
  
  /// text-clip: text-overflow: clip;
  /// ✅ 支持：直接裁剪，不显示省略号
  TextBuilder textClip() {
    _overflow = TextOverflow.clip;
    return this;
  }
  
  // === Text Wrap (Tailwind CSS 命名) ===
  /// ⚠️ 部分支持：Flutter 通过其他属性间接控制文本换行
  
  /// text-wrap: text-wrap: wrap;
  /// ✅ 支持：允许文本自动换行（默认行为）
  TextBuilder textWrap() {
    _maxLines = null; // 允许多行
    return this;
  }
  
  /// text-nowrap: text-wrap: nowrap;
  /// ✅ 支持：禁止文本换行，单行显示
  TextBuilder textNowrap() {
    _maxLines = 1; // 强制单行
    _overflow ??= TextOverflow.ellipsis; // 默认显示省略号
    return this;
  }
  
  /// text-balance: text-wrap: balance;
  /// ⚠️ 部分支持：Flutter 没有直接的 balance 支持，使用默认换行
  TextBuilder textBalance() {
    _maxLines = null; // 允许多行，尽可能平衡显示
    return this;
  }
  
  /// text-pretty: text-wrap: pretty;
  /// ⚠️ 部分支持：Flutter 没有直接的 pretty 支持，使用默认换行
  TextBuilder textPretty() {
    _maxLines = null; // 允许多行，尽可能美观显示
    return this;
  }
  
  // === White Space (Tailwind CSS 命名) ===
  /// ⚠️ 部分支持：Flutter 通过 maxLines 和 overflow 间接控制
  
  /// whitespace-normal: white-space: normal;
  /// ✅ 支持：正常换行（默认行为）
  TextBuilder whitespaceNormal() {
    _maxLines = null;
    return this;
  }
  
  /// whitespace-nowrap: white-space: nowrap;
  /// ✅ 支持：不换行，单行显示
  TextBuilder whitespaceNowrap() {
    _maxLines = 1;
    _overflow ??= TextOverflow.ellipsis;
    return this;
  }
  
  /// whitespace-pre: white-space: pre;
  /// ❌ 不支持：Flutter 不支持保留空格和换行符
  TextBuilder whitespacePre() {
    // Flutter 不支持 pre，使用 nowrap 作为替代
    _maxLines = 1;
    return this;
  }
  
  /// whitespace-pre-line: white-space: pre-line;
  /// ❌ 不支持：Flutter 不支持保留换行符
  TextBuilder whitespacePreLine() {
    // Flutter 不支持 pre-line，使用正常换行作为替代
    _maxLines = null;
    return this;
  }
  
  /// whitespace-pre-wrap: white-space: pre-wrap;
  /// ❌ 不支持：Flutter 不支持保留空格和换行符
  TextBuilder whitespacePreWrap() {
    // Flutter 不支持 pre-wrap，使用正常换行作为替代
    _maxLines = null;
    return this;
  }
  
  /// whitespace-break-spaces: white-space: break-spaces;
  /// ❌ 不支持：Flutter 不支持 break-spaces
  TextBuilder whitespaceBreakSpaces() {
    // Flutter 不支持 break-spaces，使用正常换行作为替代
    _maxLines = null;
    return this;
  }
  
  // === Word Break (Tailwind CSS 命名) ===
  /// ⚠️ 部分支持：Flutter 通过 TextOverflow 间接控制
  
  /// break-normal: word-break: normal;
  /// ✅ 支持：正常断词（默认行为）
  TextBuilder breakNormal() {
    _overflow = null;
    return this;
  }
  
  /// break-words: word-break: break-word;
  /// ⚠️ 部分支持：通过 TextOverflow.ellipsis 实现
  TextBuilder breakWords() {
    _overflow = TextOverflow.ellipsis;
    return this;
  }
  
  /// break-all: word-break: break-all;
  /// ⚠️ 部分支持：Flutter 不完全支持 break-all
  TextBuilder breakAll() {
    // Flutter 不完全支持 break-all，使用 clip 作为替代
    _overflow = TextOverflow.clip;
    return this;
  }
  
  /// break-keep: word-break: keep-all;
  /// ❌ 不支持：Flutter 不支持 keep-all
  TextBuilder breakKeep() {
    // Flutter 不支持 keep-all，使用正常行为作为替代
    _overflow = null;
    return this;
  }
  
  // === Text Indent (Tailwind CSS 命名) ===
  /// ❌ 不支持：Flutter 的 TextStyle 不支持 text-indent 属性
  /// Flutter 没有直接的文本首行缩进支持，以下方法仅作为占位符
  /// 可以通过在文本前添加空格来模拟，但这不是真正的 CSS text-indent
  
  /// indent-&lt;number&gt;: text-indent: calc(var(--spacing) * &lt;number&gt;);
  /// ❌ 不支持：Flutter 无法设置首行缩进
  TextBuilder indentCustom(int spacing) {
    // Flutter 不支持 text-indent，此方法无实际效果
    // 可以考虑在文本前添加空格作为替代方案，但这会改变文本内容
    return this;
  }
  
  /// -indent-&lt;number&gt;: text-indent: calc(var(--spacing) * -&lt;number&gt;);
  /// ❌ 不支持：Flutter 无法设置负的首行缩进
  TextBuilder indentNegative(int spacing) {
    // Flutter 不支持负缩进，此方法无实际效果
    return this;
  }
  
  /// indent-px: text-indent: 1px;
  /// ❌ 不支持：Flutter 无法设置像素级首行缩进
  TextBuilder indentPx() {
    // Flutter 不支持 text-indent，此方法无实际效果
    return this;
  }
  
  /// -indent-px: text-indent: -1px;
  /// ❌ 不支持：Flutter 无法设置负像素级首行缩进
  TextBuilder indentNegativePx() {
    // Flutter 不支持负缩进，此方法无实际效果
    return this;
  }
  
  // === Text Decoration Color (Tailwind CSS 命名) ===
  /// decoration-inherit: text-decoration-color: inherit;
  TextBuilder decorationInherit() => this; // 继承父元素颜色
  
  /// decoration-current: text-decoration-color: current;
  TextBuilder decorationCurrent() => decorationColor(_color ?? Colors.black);
  
  /// decoration-transparent: text-decoration-color: transparent;
  TextBuilder decorationTransparent() => decorationColor(Colors.transparent);
  
  /// decoration-black: text-decoration-color: black;
  TextBuilder decorationBlack() => decorationColor(TwColors.black);
  
  /// decoration-white: text-decoration-color: white;
  TextBuilder decorationWhite() => decorationColor(TwColors.white);
  
  // === Red Decoration Colors ===
  TextBuilder decorationRed50() => decorationColor(TwColors.red50);
  TextBuilder decorationRed100() => decorationColor(TwColors.red100);
  TextBuilder decorationRed200() => decorationColor(TwColors.red200);
  TextBuilder decorationRed300() => decorationColor(TwColors.red300);
  TextBuilder decorationRed400() => decorationColor(TwColors.red400);
  TextBuilder decorationRed500() => decorationColor(TwColors.red500);
  TextBuilder decorationRed600() => decorationColor(TwColors.red600);
  TextBuilder decorationRed700() => decorationColor(TwColors.red700);
  TextBuilder decorationRed800() => decorationColor(TwColors.red800);
  TextBuilder decorationRed900() => decorationColor(TwColors.red900);
  TextBuilder decorationRed950() => decorationColor(TwColors.red950);
  
  // === Blue Decoration Colors ===
  TextBuilder decorationBlue50() => decorationColor(TwColors.blue50);
  TextBuilder decorationBlue100() => decorationColor(TwColors.blue100);
  TextBuilder decorationBlue200() => decorationColor(TwColors.blue200);
  TextBuilder decorationBlue300() => decorationColor(TwColors.blue300);
  TextBuilder decorationBlue400() => decorationColor(TwColors.blue400);
  TextBuilder decorationBlue500() => decorationColor(TwColors.blue500);
  TextBuilder decorationBlue600() => decorationColor(TwColors.blue600);
  TextBuilder decorationBlue700() => decorationColor(TwColors.blue700);
  TextBuilder decorationBlue800() => decorationColor(TwColors.blue800);
  TextBuilder decorationBlue900() => decorationColor(TwColors.blue900);
  TextBuilder decorationBlue950() => decorationColor(TwColors.blue950);
  
  // === Green Decoration Colors ===
  TextBuilder decorationGreen50() => decorationColor(TwColors.green50);
  TextBuilder decorationGreen100() => decorationColor(TwColors.green100);
  TextBuilder decorationGreen200() => decorationColor(TwColors.green200);
  TextBuilder decorationGreen300() => decorationColor(TwColors.green300);
  TextBuilder decorationGreen400() => decorationColor(TwColors.green400);
  TextBuilder decorationGreen500() => decorationColor(TwColors.green500);
  TextBuilder decorationGreen600() => decorationColor(TwColors.green600);
  TextBuilder decorationGreen700() => decorationColor(TwColors.green700);
  TextBuilder decorationGreen800() => decorationColor(TwColors.green800);
  TextBuilder decorationGreen900() => decorationColor(TwColors.green900);
  TextBuilder decorationGreen950() => decorationColor(TwColors.green950);
  
  // === Gray Decoration Colors ===
  TextBuilder decorationGray50() => decorationColor(TwColors.gray50);
  TextBuilder decorationGray100() => decorationColor(TwColors.gray100);
  TextBuilder decorationGray200() => decorationColor(TwColors.gray200);
  TextBuilder decorationGray300() => decorationColor(TwColors.gray300);
  TextBuilder decorationGray400() => decorationColor(TwColors.gray400);
  TextBuilder decorationGray500() => decorationColor(TwColors.gray500);
  TextBuilder decorationGray600() => decorationColor(TwColors.gray600);
  TextBuilder decorationGray700() => decorationColor(TwColors.gray700);
  TextBuilder decorationGray800() => decorationColor(TwColors.gray800);
  TextBuilder decorationGray900() => decorationColor(TwColors.gray900);
  TextBuilder decorationGray950() => decorationColor(TwColors.gray950);
  
  // === Purple Decoration Colors ===
  TextBuilder decorationPurple50() => decorationColor(TwColors.purple50);
  TextBuilder decorationPurple100() => decorationColor(TwColors.purple100);
  TextBuilder decorationPurple200() => decorationColor(TwColors.purple200);
  TextBuilder decorationPurple300() => decorationColor(TwColors.purple300);
  TextBuilder decorationPurple400() => decorationColor(TwColors.purple400);
  TextBuilder decorationPurple500() => decorationColor(TwColors.purple500);
  TextBuilder decorationPurple600() => decorationColor(TwColors.purple600);
  TextBuilder decorationPurple700() => decorationColor(TwColors.purple700);
  TextBuilder decorationPurple800() => decorationColor(TwColors.purple800);
  TextBuilder decorationPurple900() => decorationColor(TwColors.purple900);
  TextBuilder decorationPurple950() => decorationColor(TwColors.purple950);
  
  // === Yellow/Amber Decoration Colors ===
  TextBuilder decorationYellow50() => decorationColor(TwColors.yellow50);
  TextBuilder decorationYellow100() => decorationColor(TwColors.yellow100);
  TextBuilder decorationYellow200() => decorationColor(TwColors.yellow200);
  TextBuilder decorationYellow300() => decorationColor(TwColors.yellow300);
  TextBuilder decorationYellow400() => decorationColor(TwColors.yellow400);
  TextBuilder decorationYellow500() => decorationColor(TwColors.yellow500);
  TextBuilder decorationYellow600() => decorationColor(TwColors.yellow600);
  TextBuilder decorationYellow700() => decorationColor(TwColors.yellow700);
  TextBuilder decorationYellow800() => decorationColor(TwColors.yellow800);
  TextBuilder decorationYellow900() => decorationColor(TwColors.yellow900);
  TextBuilder decorationYellow950() => decorationColor(TwColors.yellow950);
  
  // === Orange Decoration Colors ===
  TextBuilder decorationOrange50() => decorationColor(TwColors.orange50);
  TextBuilder decorationOrange100() => decorationColor(TwColors.orange100);
  TextBuilder decorationOrange200() => decorationColor(TwColors.orange200);
  TextBuilder decorationOrange300() => decorationColor(TwColors.orange300);
  TextBuilder decorationOrange400() => decorationColor(TwColors.orange400);
  TextBuilder decorationOrange500() => decorationColor(TwColors.orange500);
  TextBuilder decorationOrange600() => decorationColor(TwColors.orange600);
  TextBuilder decorationOrange700() => decorationColor(TwColors.orange700);
  TextBuilder decorationOrange800() => decorationColor(TwColors.orange800);
  TextBuilder decorationOrange900() => decorationColor(TwColors.orange900);
  TextBuilder decorationOrange950() => decorationColor(TwColors.orange950);
  
  // === Pink Decoration Colors ===
  TextBuilder decorationPink50() => decorationColor(TwColors.pink50);
  TextBuilder decorationPink100() => decorationColor(TwColors.pink100);
  TextBuilder decorationPink200() => decorationColor(TwColors.pink200);
  TextBuilder decorationPink300() => decorationColor(TwColors.pink300);
  TextBuilder decorationPink400() => decorationColor(TwColors.pink400);
  TextBuilder decorationPink500() => decorationColor(TwColors.pink500);
  TextBuilder decorationPink600() => decorationColor(TwColors.pink600);
  TextBuilder decorationPink700() => decorationColor(TwColors.pink700);
  TextBuilder decorationPink800() => decorationColor(TwColors.pink800);
  TextBuilder decorationPink900() => decorationColor(TwColors.pink900);
  TextBuilder decorationPink950() => decorationColor(TwColors.pink950);
  
  // === Indigo Decoration Colors ===
  TextBuilder decorationIndigo50() => decorationColor(TwColors.indigo50);
  TextBuilder decorationIndigo100() => decorationColor(TwColors.indigo100);
  TextBuilder decorationIndigo200() => decorationColor(TwColors.indigo200);
  TextBuilder decorationIndigo300() => decorationColor(TwColors.indigo300);
  TextBuilder decorationIndigo400() => decorationColor(TwColors.indigo400);
  TextBuilder decorationIndigo500() => decorationColor(TwColors.indigo500);
  TextBuilder decorationIndigo600() => decorationColor(TwColors.indigo600);
  TextBuilder decorationIndigo700() => decorationColor(TwColors.indigo700);
  TextBuilder decorationIndigo800() => decorationColor(TwColors.indigo800);
  TextBuilder decorationIndigo900() => decorationColor(TwColors.indigo900);
  TextBuilder decorationIndigo950() => decorationColor(TwColors.indigo950);
  
  // === Text Decoration 组合方法 (Combined decorations) ===
  /// 组合装饰：下划线 + 删除线
  TextBuilder underlineLineThrough() => decoration(TextDecoration.combine([
    TextDecoration.underline,
    TextDecoration.lineThrough,
  ]));
  
  /// 组合装饰：下划线 + 上划线
  TextBuilder underlineOverline() => decoration(TextDecoration.combine([
    TextDecoration.underline,
    TextDecoration.overline,
  ]));
  
  /// 组合装饰：上划线 + 删除线
  TextBuilder overlineLineThrough() => decoration(TextDecoration.combine([
    TextDecoration.overline,
    TextDecoration.lineThrough,
  ]));
  
  /// 组合装饰：所有装饰线
  TextBuilder allDecorations() => decoration(TextDecoration.combine([
    TextDecoration.underline,
    TextDecoration.overline,
    TextDecoration.lineThrough,
  ]));
  
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
  TextBuilder textOrange50() => color(const Color(0xFFFFF7ED));
  TextBuilder textOrange100() => color(const Color(0xFFFFEDD5));
  TextBuilder textOrange200() => color(const Color(0xFFFED7AA));
  TextBuilder textOrange300() => color(const Color(0xFFFDBA74));
  TextBuilder textOrange400() => color(const Color(0xFFFB923C));
  TextBuilder textOrange500() => color(const Color(0xFFF97316));
  TextBuilder textOrange600() => color(const Color(0xFFEA580C));
  TextBuilder textOrange700() => color(const Color(0xFFC2410C));
  TextBuilder textOrange800() => color(const Color(0xFF9A3412));
  TextBuilder textOrange900() => color(const Color(0xFF7C2D12));
  
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
  TextBuilder textGray100() => TextBuilder(data ?? '').color(const Color(0xFFF3F4F6));
  TextBuilder textGray200() => TextBuilder(data ?? '').color(const Color(0xFFE5E7EB));
  TextBuilder textGray300() => TextBuilder(data ?? '').color(const Color(0xFFD1D5DB));
  TextBuilder textGray400() => TextBuilder(data ?? '').color(const Color(0xFF9CA3AF));
  TextBuilder textGray500() => TextBuilder(data ?? '').color(const Color(0xFF6B7280));
  TextBuilder textGray600() => TextBuilder(data ?? '').color(const Color(0xFF4B5563));
  TextBuilder textGray700() => TextBuilder(data ?? '').color(const Color(0xFF374151));
  TextBuilder textGray800() => TextBuilder(data ?? '').color(const Color(0xFF1F2937));
  TextBuilder textGray900() => TextBuilder(data ?? '').color(const Color(0xFF111827));
  
  TextBuilder textBlue50() => TextBuilder(data ?? '').color(const Color(0xFFEFF6FF));
  TextBuilder textBlue100() => TextBuilder(data ?? '').color(const Color(0xFFDBEAFE));
  TextBuilder textBlue200() => TextBuilder(data ?? '').color(const Color(0xFFBFDBFE));
  TextBuilder textBlue300() => TextBuilder(data ?? '').color(const Color(0xFF93C5FD));
  TextBuilder textBlue400() => TextBuilder(data ?? '').color(const Color(0xFF60A5FA));
  TextBuilder textBlue500() => TextBuilder(data ?? '').color(const Color(0xFF3B82F6));
  TextBuilder textBlue600() => TextBuilder(data ?? '').color(const Color(0xFF2563EB));
  TextBuilder textBlue700() => TextBuilder(data ?? '').color(const Color(0xFF1D4ED8));
  TextBuilder textBlue800() => TextBuilder(data ?? '').color(const Color(0xFF1E40AF));
  TextBuilder textBlue900() => TextBuilder(data ?? '').color(const Color(0xFF1E3A8A));
  
  TextBuilder textRed50() => TextBuilder(data ?? '').color(const Color(0xFFFEF2F2));
  TextBuilder textRed100() => TextBuilder(data ?? '').color(const Color(0xFFFEE2E2));
  TextBuilder textRed200() => TextBuilder(data ?? '').color(const Color(0xFFFECACA));
  TextBuilder textRed300() => TextBuilder(data ?? '').color(const Color(0xFFFCA5A5));
  TextBuilder textRed400() => TextBuilder(data ?? '').color(const Color(0xFFF87171));
  TextBuilder textRed500() => TextBuilder(data ?? '').color(const Color(0xFFEF4444));
  TextBuilder textRed600() => TextBuilder(data ?? '').color(const Color(0xFFDC2626));
  TextBuilder textRed700() => TextBuilder(data ?? '').color(const Color(0xFFB91C1C));
  TextBuilder textRed800() => TextBuilder(data ?? '').color(const Color(0xFF991B1B));
  TextBuilder textRed900() => TextBuilder(data ?? '').color(const Color(0xFF7F1D1D));
  
  TextBuilder textGreen50() => TextBuilder(data ?? '').color(const Color(0xFFF0FDF4));
  TextBuilder textGreen100() => TextBuilder(data ?? '').color(const Color(0xFFDCFCE7));
  TextBuilder textGreen200() => TextBuilder(data ?? '').color(const Color(0xFFBBF7D0));
  TextBuilder textGreen300() => TextBuilder(data ?? '').color(const Color(0xFF86EFAC));
  TextBuilder textGreen400() => TextBuilder(data ?? '').color(const Color(0xFF4ADE80));
  TextBuilder textGreen500() => TextBuilder(data ?? '').color(const Color(0xFF22C55E));
  TextBuilder textGreen600() => TextBuilder(data ?? '').color(const Color(0xFF16A34A));
  TextBuilder textGreen700() => TextBuilder(data ?? '').color(const Color(0xFF15803D));
  TextBuilder textGreen800() => TextBuilder(data ?? '').color(const Color(0xFF166534));
  TextBuilder textGreen900() => TextBuilder(data ?? '').color(const Color(0xFF14532D));
  
  TextBuilder textYellow50() => TextBuilder(data ?? '').color(const Color(0xFFFEFCE8));
  TextBuilder textYellow100() => TextBuilder(data ?? '').color(const Color(0xFFFEF3C7));
  TextBuilder textYellow200() => TextBuilder(data ?? '').color(const Color(0xFFFDE68A));
  TextBuilder textYellow300() => TextBuilder(data ?? '').color(const Color(0xFFFCD34D));
  TextBuilder textYellow400() => TextBuilder(data ?? '').color(const Color(0xFFFBBF24));
  TextBuilder textYellow500() => TextBuilder(data ?? '').color(const Color(0xFFF59E0B));
  TextBuilder textYellow600() => TextBuilder(data ?? '').color(const Color(0xFFD97706));
  TextBuilder textYellow700() => TextBuilder(data ?? '').color(const Color(0xFFB45309));
  TextBuilder textYellow800() => TextBuilder(data ?? '').color(const Color(0xFF92400E));
  TextBuilder textYellow900() => TextBuilder(data ?? '').color(const Color(0xFF78350F));
  
  TextBuilder textPurple50() => TextBuilder(data ?? '').color(const Color(0xFFFAF5FF));
  TextBuilder textPurple100() => TextBuilder(data ?? '').color(const Color(0xFFF3E8FF));
  TextBuilder textPurple200() => TextBuilder(data ?? '').color(const Color(0xFFE9D5FF));
  TextBuilder textPurple300() => TextBuilder(data ?? '').color(const Color(0xFFD8B4FE));
  TextBuilder textPurple400() => TextBuilder(data ?? '').color(const Color(0xFFC084FC));
  TextBuilder textPurple500() => TextBuilder(data ?? '').color(const Color(0xFFA855F7));
  TextBuilder textPurple600() => TextBuilder(data ?? '').color(const Color(0xFF9333EA));
  TextBuilder textPurple700() => TextBuilder(data ?? '').color(const Color(0xFF7C3AED));
  TextBuilder textPurple800() => TextBuilder(data ?? '').color(const Color(0xFF6B21A8));
  TextBuilder textPurple900() => TextBuilder(data ?? '').color(const Color(0xFF581C87));
  
  TextBuilder textOrange50() => TextBuilder(data ?? '').color(const Color(0xFFFFF7ED));
  TextBuilder textOrange100() => TextBuilder(data ?? '').color(const Color(0xFFFFEDD5));
  TextBuilder textOrange200() => TextBuilder(data ?? '').color(const Color(0xFFFED7AA));
  TextBuilder textOrange300() => TextBuilder(data ?? '').color(const Color(0xFFFDBA74));
  TextBuilder textOrange400() => TextBuilder(data ?? '').color(const Color(0xFFFB923C));
  TextBuilder textOrange500() => TextBuilder(data ?? '').color(const Color(0xFFF97316));
  TextBuilder textOrange600() => TextBuilder(data ?? '').color(const Color(0xFFEA580C));
  TextBuilder textOrange700() => TextBuilder(data ?? '').color(const Color(0xFFC2410C));
  TextBuilder textOrange800() => TextBuilder(data ?? '').color(const Color(0xFF9A3412));
  TextBuilder textOrange900() => TextBuilder(data ?? '').color(const Color(0xFF7C2D12));
  
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
  
  // === Text Decoration Line (Tailwind CSS 命名) ===
  TextBuilder underline() => TextBuilder(data ?? '').decoration(TextDecoration.underline);
  TextBuilder overline() => TextBuilder(data ?? '').decoration(TextDecoration.overline);
  TextBuilder lineThrough() => TextBuilder(data ?? '').decoration(TextDecoration.lineThrough);
  TextBuilder noUnderline() => TextBuilder(data ?? '').decoration(TextDecoration.none);
  
  // === Text Decoration Style ===
  TextBuilder decorationSolid() => TextBuilder(data ?? '').decorationStyle(TextDecorationStyle.solid);
  TextBuilder decorationDouble() => TextBuilder(data ?? '').decorationStyle(TextDecorationStyle.double);
  TextBuilder decorationDotted() => TextBuilder(data ?? '').decorationStyle(TextDecorationStyle.dotted);
  TextBuilder decorationDashed() => TextBuilder(data ?? '').decorationStyle(TextDecorationStyle.dashed);
  TextBuilder decorationWavy() => TextBuilder(data ?? '').decorationStyle(TextDecorationStyle.wavy);
  
  // === Text Decoration Thickness ===
  TextBuilder decorationAuto() => TextBuilder(data ?? '').decorationThickness(1.0);
  TextBuilder decorationFromFont() => TextBuilder(data ?? '').decorationThickness(1.0);
  TextBuilder decoration0() => TextBuilder(data ?? '').decorationThickness(0.0);
  TextBuilder decoration1() => TextBuilder(data ?? '').decorationThickness(1.0);
  TextBuilder decoration2() => TextBuilder(data ?? '').decorationThickness(2.0);
  TextBuilder decoration4() => TextBuilder(data ?? '').decorationThickness(4.0);
  TextBuilder decoration8() => TextBuilder(data ?? '').decorationThickness(8.0);
  TextBuilder decorationCustom(double value) => TextBuilder(data ?? '').decorationThickness(value);
  
  // === Text Transform ===
  TextBuilder uppercase() => TextBuilder(data ?? '').uppercase();
  TextBuilder lowercase() => TextBuilder(data ?? '').lowercase();
  TextBuilder capitalize() => TextBuilder(data ?? '').capitalize();
  TextBuilder normalCase() => TextBuilder(data ?? '').normalCase();
  
  // === Text Overflow ===
  TextBuilder truncate() => TextBuilder(data ?? '').truncate();
  TextBuilder textEllipsis() => TextBuilder(data ?? '').textEllipsis();
  TextBuilder textClip() => TextBuilder(data ?? '').textClip();
  
  // === Text Wrap ===
  TextBuilder textWrap() => TextBuilder(data ?? '').textWrap();
  TextBuilder textNowrap() => TextBuilder(data ?? '').textNowrap();
  TextBuilder textBalance() => TextBuilder(data ?? '').textBalance();
  TextBuilder textPretty() => TextBuilder(data ?? '').textPretty();
  
  // === Text Decoration Color ===
  TextBuilder decorationBlack() => TextBuilder(data ?? '').decorationColor(TwColors.black);
  TextBuilder decorationWhite() => TextBuilder(data ?? '').decorationColor(TwColors.white);
  TextBuilder decorationTransparent() => TextBuilder(data ?? '').decorationColor(TwColors.transparent);
  
  // Red decoration colors
  TextBuilder decorationRed500() => TextBuilder(data ?? '').decorationColor(TwColors.red500);
  TextBuilder decorationRed600() => TextBuilder(data ?? '').decorationColor(TwColors.red600);
  TextBuilder decorationRed700() => TextBuilder(data ?? '').decorationColor(TwColors.red700);
  
  // Blue decoration colors
  TextBuilder decorationBlue500() => TextBuilder(data ?? '').decorationColor(TwColors.blue500);
  TextBuilder decorationBlue600() => TextBuilder(data ?? '').decorationColor(TwColors.blue600);
  TextBuilder decorationBlue700() => TextBuilder(data ?? '').decorationColor(TwColors.blue700);
  
  // Green decoration colors
  TextBuilder decorationGreen500() => TextBuilder(data ?? '').decorationColor(TwColors.green500);
  TextBuilder decorationGreen600() => TextBuilder(data ?? '').decorationColor(TwColors.green600);
  TextBuilder decorationGreen700() => TextBuilder(data ?? '').decorationColor(TwColors.green700);
  
  // Purple decoration colors
  TextBuilder decorationPurple500() => TextBuilder(data ?? '').decorationColor(TwColors.purple500);
  TextBuilder decorationPurple600() => TextBuilder(data ?? '').decorationColor(TwColors.purple600);
  TextBuilder decorationPurple700() => TextBuilder(data ?? '').decorationColor(TwColors.purple700);
  
  // Gray decoration colors
  TextBuilder decorationGray500() => TextBuilder(data ?? '').decorationColor(TwColors.gray500);
  TextBuilder decorationGray600() => TextBuilder(data ?? '').decorationColor(TwColors.gray600);
  TextBuilder decorationGray700() => TextBuilder(data ?? '').decorationColor(TwColors.gray700);
  
  // === Text Decoration 组合方法 ===
  TextBuilder underlineLineThrough() => TextBuilder(data ?? '').decoration(TextDecoration.combine([
    TextDecoration.underline,
    TextDecoration.lineThrough,
  ]));
  TextBuilder underlineOverline() => TextBuilder(data ?? '').decoration(TextDecoration.combine([
    TextDecoration.underline,
    TextDecoration.overline,
  ]));
  
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
