import 'package:flutter/material.dart';

import 'base_styles.dart';

/// Text组件的样式扩展 - 重构版
/// 使用BaseStyles避免重复代码
extension TextStyleExt on Text {
  
  // ===== 私有辅助方法 =====
  Text _applyStyle(TextStyle newStyle) {
    final currentStyle = style ?? const TextStyle();
    return Text(
      data!,
      style: currentStyle.copyWith(
        inherit: newStyle.inherit,
        color: newStyle.color ?? currentStyle.color,
        backgroundColor: newStyle.backgroundColor ?? currentStyle.backgroundColor,
        fontSize: newStyle.fontSize ?? currentStyle.fontSize,
        fontWeight: newStyle.fontWeight ?? currentStyle.fontWeight,
        fontStyle: newStyle.fontStyle ?? currentStyle.fontStyle,
        letterSpacing: newStyle.letterSpacing ?? currentStyle.letterSpacing,
        wordSpacing: newStyle.wordSpacing ?? currentStyle.wordSpacing,
        textBaseline: newStyle.textBaseline ?? currentStyle.textBaseline,
        height: newStyle.height ?? currentStyle.height,
        leadingDistribution: newStyle.leadingDistribution ?? currentStyle.leadingDistribution,
        locale: newStyle.locale ?? currentStyle.locale,
        foreground: newStyle.foreground ?? currentStyle.foreground,
        background: newStyle.background ?? currentStyle.background,
        shadows: newStyle.shadows ?? currentStyle.shadows,
        fontFeatures: newStyle.fontFeatures ?? currentStyle.fontFeatures,
        fontVariations: newStyle.fontVariations ?? currentStyle.fontVariations,
        decoration: newStyle.decoration ?? currentStyle.decoration,
        decorationColor: newStyle.decorationColor ?? currentStyle.decorationColor,
        decorationStyle: newStyle.decorationStyle ?? currentStyle.decorationStyle,
        decorationThickness: newStyle.decorationThickness ?? currentStyle.decorationThickness,
        debugLabel: newStyle.debugLabel ?? currentStyle.debugLabel,
        fontFamily: newStyle.fontFamily ?? currentStyle.fontFamily,
        fontFamilyFallback: newStyle.fontFamilyFallback ?? currentStyle.fontFamilyFallback,
        overflow: newStyle.overflow ?? currentStyle.overflow,
      ),
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      strutStyle: strutStyle,
    );
  }

  Text _applyProperty({
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    StrutStyle? strutStyle,
  }) {
    return Text(
      data!,
      style: style,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection ?? this.textDirection,
      locale: locale ?? this.locale,
      softWrap: softWrap ?? this.softWrap,
      overflow: overflow ?? this.overflow,
      textScaler: textScaler ?? textScaler,
      maxLines: maxLines ?? this.maxLines,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
      strutStyle: strutStyle ?? this.strutStyle,
    );
  }

  // ===== 基础样式方法 =====
  Text textColor(Color color) => _applyStyle(TextStyle(color: color));
  Text fontSize(double size) => _applyStyle(TextStyle(fontSize: size));
  Text fontWeight(FontWeight weight) => _applyStyle(TextStyle(fontWeight: weight));
  Text fontFamily(String family) => _applyStyle(TextStyle(fontFamily: family));

  // ===== 字体粗细（使用BaseStyles常量） =====
  Text fontThin() => fontWeight(BaseStyles.fontThin);
  Text fontExtraLight() => fontWeight(BaseStyles.fontExtraLight);
  Text fontLight() => fontWeight(BaseStyles.fontLight);
  Text fontNormal() => fontWeight(BaseStyles.fontNormal);
  Text fontMedium() => fontWeight(BaseStyles.fontMedium);
  Text fontSemiBold() => fontWeight(BaseStyles.fontSemiBold);
  Text fontBold() => fontWeight(BaseStyles.fontBold);
  Text fontExtraBold() => fontWeight(BaseStyles.fontExtraBold);
  Text fontBlack() => fontWeight(BaseStyles.fontBlack);

  // ===== 字体大小（使用BaseStyles常量） =====
  Text textXs() => fontSize(BaseStyles.textXs);
  Text textSm() => fontSize(BaseStyles.textSm);
  Text textBase() => fontSize(BaseStyles.textBase);
  Text textLg() => fontSize(BaseStyles.textLg);
  Text textXl() => fontSize(BaseStyles.textXl);
  Text text2Xl() => fontSize(BaseStyles.text2Xl);
  Text text3Xl() => fontSize(BaseStyles.text3Xl);
  Text text4Xl() => fontSize(BaseStyles.text4Xl);
  Text text5Xl() => fontSize(BaseStyles.text5Xl);
  Text text6Xl() => fontSize(BaseStyles.text6Xl);
  Text text7Xl() => fontSize(BaseStyles.text7Xl);
  Text text8Xl() => fontSize(BaseStyles.text8Xl);
  Text text9Xl() => fontSize(BaseStyles.text9Xl);

  // ===== 对齐方式 =====
  Text textLeft() => _applyProperty(textAlign: TextAlign.left);
  Text textCenter() => _applyProperty(textAlign: TextAlign.center);
  Text textRight() => _applyProperty(textAlign: TextAlign.right);
  Text textJustify() => _applyProperty(textAlign: TextAlign.justify);

  // ===== 溢出处理 =====
  Text textEllipsis() => _applyProperty(overflow: TextOverflow.ellipsis);
  Text textClip() => _applyProperty(overflow: TextOverflow.clip);
  Text textFade() => _applyProperty(overflow: TextOverflow.fade);
  Text textVisible() => _applyProperty(overflow: TextOverflow.visible);

  // ===== 最大行数 =====
  Text maxLinesCount(int lines) => _applyProperty(maxLines: lines);

  // ===== 颜色系统（使用BaseStyles常量） =====
  
  // 基础颜色
  Text textWhite() => textColor(BaseStyles.white);
  Text textBlack() => textColor(BaseStyles.black);
  
  // 灰色系
  Text textSlate50() => textColor(BaseStyles.slate50);
  Text textSlate100() => textColor(BaseStyles.slate100);
  Text textSlate200() => textColor(BaseStyles.slate200);
  Text textSlate300() => textColor(BaseStyles.slate300);
  Text textSlate400() => textColor(BaseStyles.slate400);
  Text textSlate500() => textColor(BaseStyles.slate500);
  Text textSlate600() => textColor(BaseStyles.slate600);
  Text textSlate700() => textColor(BaseStyles.slate700);
  Text textSlate800() => textColor(BaseStyles.slate800);
  Text textSlate900() => textColor(BaseStyles.slate900);
  Text textSlate950() => textColor(BaseStyles.slate950);

  Text textGray50() => textColor(BaseStyles.gray50);
  Text textGray100() => textColor(BaseStyles.gray100);
  Text textGray200() => textColor(BaseStyles.gray200);
  Text textGray300() => textColor(BaseStyles.gray300);
  Text textGray400() => textColor(BaseStyles.gray400);
  Text textGray500() => textColor(BaseStyles.gray500);
  Text textGray600() => textColor(BaseStyles.gray600);
  Text textGray700() => textColor(BaseStyles.gray700);
  Text textGray800() => textColor(BaseStyles.gray800);
  Text textGray900() => textColor(BaseStyles.gray900);
  Text textGray950() => textColor(BaseStyles.gray950);

  // 红色系
  Text textRed50() => textColor(BaseStyles.red50);
  Text textRed100() => textColor(BaseStyles.red100);
  Text textRed200() => textColor(BaseStyles.red200);
  Text textRed300() => textColor(BaseStyles.red300);
  Text textRed400() => textColor(BaseStyles.red400);
  Text textRed500() => textColor(BaseStyles.red500);
  Text textRed600() => textColor(BaseStyles.red600);
  Text textRed700() => textColor(BaseStyles.red700);
  Text textRed800() => textColor(BaseStyles.red800);
  Text textRed900() => textColor(BaseStyles.red900);
  Text textRed950() => textColor(BaseStyles.red950);

  // 蓝色系
  Text textBlue50() => textColor(BaseStyles.blue50);
  Text textBlue100() => textColor(BaseStyles.blue100);
  Text textBlue200() => textColor(BaseStyles.blue200);
  Text textBlue300() => textColor(BaseStyles.blue300);
  Text textBlue400() => textColor(BaseStyles.blue400);
  Text textBlue500() => textColor(BaseStyles.blue500);
  Text textBlue600() => textColor(BaseStyles.blue600);
  Text textBlue700() => textColor(BaseStyles.blue700);
  Text textBlue800() => textColor(BaseStyles.blue800);
  Text textBlue900() => textColor(BaseStyles.blue900);
  Text textBlue950() => textColor(BaseStyles.blue950);

  // 绿色系
  Text textGreen50() => textColor(BaseStyles.green50);
  Text textGreen100() => textColor(BaseStyles.green100);
  Text textGreen200() => textColor(BaseStyles.green200);
  Text textGreen300() => textColor(BaseStyles.green300);
  Text textGreen400() => textColor(BaseStyles.green400);
  Text textGreen500() => textColor(BaseStyles.green500);
  Text textGreen600() => textColor(BaseStyles.green600);
  Text textGreen700() => textColor(BaseStyles.green700);
  Text textGreen800() => textColor(BaseStyles.green800);
  Text textGreen900() => textColor(BaseStyles.green900);
  Text textGreen950() => textColor(BaseStyles.green950);
}
