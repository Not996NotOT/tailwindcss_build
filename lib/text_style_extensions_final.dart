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

  // 橙色系
  Text textOrange50() => textColor(BaseStyles.orange50);
  Text textOrange100() => textColor(BaseStyles.orange100);
  Text textOrange200() => textColor(BaseStyles.orange200);
  Text textOrange300() => textColor(BaseStyles.orange300);
  Text textOrange400() => textColor(BaseStyles.orange400);
  Text textOrange500() => textColor(BaseStyles.orange500);
  Text textOrange600() => textColor(BaseStyles.orange600);
  Text textOrange700() => textColor(BaseStyles.orange700);
  Text textOrange800() => textColor(BaseStyles.orange800);
  Text textOrange900() => textColor(BaseStyles.orange900);
  Text textOrange950() => textColor(BaseStyles.orange950);

  // 黄色系
  Text textYellow50() => textColor(BaseStyles.yellow50);
  Text textYellow100() => textColor(BaseStyles.yellow100);
  Text textYellow200() => textColor(BaseStyles.yellow200);
  Text textYellow300() => textColor(BaseStyles.yellow300);
  Text textYellow400() => textColor(BaseStyles.yellow400);
  Text textYellow500() => textColor(BaseStyles.yellow500);
  Text textYellow600() => textColor(BaseStyles.yellow600);
  Text textYellow700() => textColor(BaseStyles.yellow700);
  Text textYellow800() => textColor(BaseStyles.yellow800);
  Text textYellow900() => textColor(BaseStyles.yellow900);
  Text textYellow950() => textColor(BaseStyles.yellow950);

  // 紫色系
  Text textPurple50() => textColor(BaseStyles.purple50);
  Text textPurple100() => textColor(BaseStyles.purple100);
  Text textPurple200() => textColor(BaseStyles.purple200);
  Text textPurple300() => textColor(BaseStyles.purple300);
  Text textPurple400() => textColor(BaseStyles.purple400);
  Text textPurple500() => textColor(BaseStyles.purple500);
  Text textPurple600() => textColor(BaseStyles.purple600);
  Text textPurple700() => textColor(BaseStyles.purple700);
  Text textPurple800() => textColor(BaseStyles.purple800);
  Text textPurple900() => textColor(BaseStyles.purple900);
  Text textPurple950() => textColor(BaseStyles.purple950);

  // 紫罗兰色系
  Text textViolet50() => textColor(BaseStyles.violet50);
  Text textViolet100() => textColor(BaseStyles.violet100);
  Text textViolet200() => textColor(BaseStyles.violet200);
  Text textViolet300() => textColor(BaseStyles.violet300);
  Text textViolet400() => textColor(BaseStyles.violet400);
  Text textViolet500() => textColor(BaseStyles.violet500);
  Text textViolet600() => textColor(BaseStyles.violet600);
  Text textViolet700() => textColor(BaseStyles.violet700);
  Text textViolet800() => textColor(BaseStyles.violet800);
  Text textViolet900() => textColor(BaseStyles.violet900);
  Text textViolet950() => textColor(BaseStyles.violet950);

  // 靛蓝色系
  Text textIndigo50() => textColor(BaseStyles.indigo50);
  Text textIndigo100() => textColor(BaseStyles.indigo100);
  Text textIndigo200() => textColor(BaseStyles.indigo200);
  Text textIndigo300() => textColor(BaseStyles.indigo300);
  Text textIndigo400() => textColor(BaseStyles.indigo400);
  Text textIndigo500() => textColor(BaseStyles.indigo500);
  Text textIndigo600() => textColor(BaseStyles.indigo600);
  Text textIndigo700() => textColor(BaseStyles.indigo700);
  Text textIndigo800() => textColor(BaseStyles.indigo800);
  Text textIndigo900() => textColor(BaseStyles.indigo900);
  Text textIndigo950() => textColor(BaseStyles.indigo950);

  // 青色系
  Text textCyan50() => textColor(BaseStyles.cyan50);
  Text textCyan100() => textColor(BaseStyles.cyan100);
  Text textCyan200() => textColor(BaseStyles.cyan200);
  Text textCyan300() => textColor(BaseStyles.cyan300);
  Text textCyan400() => textColor(BaseStyles.cyan400);
  Text textCyan500() => textColor(BaseStyles.cyan500);
  Text textCyan600() => textColor(BaseStyles.cyan600);
  Text textCyan700() => textColor(BaseStyles.cyan700);
  Text textCyan800() => textColor(BaseStyles.cyan800);
  Text textCyan900() => textColor(BaseStyles.cyan900);
  Text textCyan950() => textColor(BaseStyles.cyan950);

  // 天蓝色系
  Text textSky50() => textColor(BaseStyles.sky50);
  Text textSky100() => textColor(BaseStyles.sky100);
  Text textSky200() => textColor(BaseStyles.sky200);
  Text textSky300() => textColor(BaseStyles.sky300);
  Text textSky400() => textColor(BaseStyles.sky400);
  Text textSky500() => textColor(BaseStyles.sky500);
  Text textSky600() => textColor(BaseStyles.sky600);
  Text textSky700() => textColor(BaseStyles.sky700);
  Text textSky800() => textColor(BaseStyles.sky800);
  Text textSky900() => textColor(BaseStyles.sky900);
  Text textSky950() => textColor(BaseStyles.sky950);

  // 青绿色系
  Text textTeal50() => textColor(BaseStyles.teal50);
  Text textTeal100() => textColor(BaseStyles.teal100);
  Text textTeal200() => textColor(BaseStyles.teal200);
  Text textTeal300() => textColor(BaseStyles.teal300);
  Text textTeal400() => textColor(BaseStyles.teal400);
  Text textTeal500() => textColor(BaseStyles.teal500);
  Text textTeal600() => textColor(BaseStyles.teal600);
  Text textTeal700() => textColor(BaseStyles.teal700);
  Text textTeal800() => textColor(BaseStyles.teal800);
  Text textTeal900() => textColor(BaseStyles.teal900);
  Text textTeal950() => textColor(BaseStyles.teal950);

  // 翠绿色系
  Text textEmerald50() => textColor(BaseStyles.emerald50);
  Text textEmerald100() => textColor(BaseStyles.emerald100);
  Text textEmerald200() => textColor(BaseStyles.emerald200);
  Text textEmerald300() => textColor(BaseStyles.emerald300);
  Text textEmerald400() => textColor(BaseStyles.emerald400);
  Text textEmerald500() => textColor(BaseStyles.emerald500);
  Text textEmerald600() => textColor(BaseStyles.emerald600);
  Text textEmerald700() => textColor(BaseStyles.emerald700);
  Text textEmerald800() => textColor(BaseStyles.emerald800);
  Text textEmerald900() => textColor(BaseStyles.emerald900);
  Text textEmerald950() => textColor(BaseStyles.emerald950);

  // 石灰绿色系
  Text textLime50() => textColor(BaseStyles.lime50);
  Text textLime100() => textColor(BaseStyles.lime100);
  Text textLime200() => textColor(BaseStyles.lime200);
  Text textLime300() => textColor(BaseStyles.lime300);
  Text textLime400() => textColor(BaseStyles.lime400);
  Text textLime500() => textColor(BaseStyles.lime500);
  Text textLime600() => textColor(BaseStyles.lime600);
  Text textLime700() => textColor(BaseStyles.lime700);
  Text textLime800() => textColor(BaseStyles.lime800);
  Text textLime900() => textColor(BaseStyles.lime900);
  Text textLime950() => textColor(BaseStyles.lime950);

  // 琥珀色系
  Text textAmber50() => textColor(BaseStyles.amber50);
  Text textAmber100() => textColor(BaseStyles.amber100);
  Text textAmber200() => textColor(BaseStyles.amber200);
  Text textAmber300() => textColor(BaseStyles.amber300);
  Text textAmber400() => textColor(BaseStyles.amber400);
  Text textAmber500() => textColor(BaseStyles.amber500);
  Text textAmber600() => textColor(BaseStyles.amber600);
  Text textAmber700() => textColor(BaseStyles.amber700);
  Text textAmber800() => textColor(BaseStyles.amber800);
  Text textAmber900() => textColor(BaseStyles.amber900);
  Text textAmber950() => textColor(BaseStyles.amber950);

  // 紫红色系
  Text textFuchsia50() => textColor(BaseStyles.fuchsia50);
  Text textFuchsia100() => textColor(BaseStyles.fuchsia100);
  Text textFuchsia200() => textColor(BaseStyles.fuchsia200);
  Text textFuchsia300() => textColor(BaseStyles.fuchsia300);
  Text textFuchsia400() => textColor(BaseStyles.fuchsia400);
  Text textFuchsia500() => textColor(BaseStyles.fuchsia500);
  Text textFuchsia600() => textColor(BaseStyles.fuchsia600);
  Text textFuchsia700() => textColor(BaseStyles.fuchsia700);
  Text textFuchsia800() => textColor(BaseStyles.fuchsia800);
  Text textFuchsia900() => textColor(BaseStyles.fuchsia900);
  Text textFuchsia950() => textColor(BaseStyles.fuchsia950);

  // 粉色系
  Text textPink50() => textColor(BaseStyles.pink50);
  Text textPink100() => textColor(BaseStyles.pink100);
  Text textPink200() => textColor(BaseStyles.pink200);
  Text textPink300() => textColor(BaseStyles.pink300);
  Text textPink400() => textColor(BaseStyles.pink400);
  Text textPink500() => textColor(BaseStyles.pink500);
  Text textPink600() => textColor(BaseStyles.pink600);
  Text textPink700() => textColor(BaseStyles.pink700);
  Text textPink800() => textColor(BaseStyles.pink800);
  Text textPink900() => textColor(BaseStyles.pink900);
  Text textPink950() => textColor(BaseStyles.pink950);

  // 玫瑰色系
  Text textRose50() => textColor(BaseStyles.rose50);
  Text textRose100() => textColor(BaseStyles.rose100);
  Text textRose200() => textColor(BaseStyles.rose200);
  Text textRose300() => textColor(BaseStyles.rose300);
  Text textRose400() => textColor(BaseStyles.rose400);
  Text textRose500() => textColor(BaseStyles.rose500);
  Text textRose600() => textColor(BaseStyles.rose600);
  Text textRose700() => textColor(BaseStyles.rose700);
  Text textRose800() => textColor(BaseStyles.rose800);
  Text textRose900() => textColor(BaseStyles.rose900);
  Text textRose950() => textColor(BaseStyles.rose950);

  // 锌色系
  Text textZinc50() => textColor(BaseStyles.zinc50);
  Text textZinc100() => textColor(BaseStyles.zinc100);
  Text textZinc200() => textColor(BaseStyles.zinc200);
  Text textZinc300() => textColor(BaseStyles.zinc300);
  Text textZinc400() => textColor(BaseStyles.zinc400);
  Text textZinc500() => textColor(BaseStyles.zinc500);
  Text textZinc600() => textColor(BaseStyles.zinc600);
  Text textZinc700() => textColor(BaseStyles.zinc700);
  Text textZinc800() => textColor(BaseStyles.zinc800);
  Text textZinc900() => textColor(BaseStyles.zinc900);
  Text textZinc950() => textColor(BaseStyles.zinc950);

  // 中性色系
  Text textNeutral50() => textColor(BaseStyles.neutral50);
  Text textNeutral100() => textColor(BaseStyles.neutral100);
  Text textNeutral200() => textColor(BaseStyles.neutral200);
  Text textNeutral300() => textColor(BaseStyles.neutral300);
  Text textNeutral400() => textColor(BaseStyles.neutral400);
  Text textNeutral500() => textColor(BaseStyles.neutral500);
  Text textNeutral600() => textColor(BaseStyles.neutral600);
  Text textNeutral700() => textColor(BaseStyles.neutral700);
  Text textNeutral800() => textColor(BaseStyles.neutral800);
  Text textNeutral900() => textColor(BaseStyles.neutral900);
  Text textNeutral950() => textColor(BaseStyles.neutral950);

  // 石板色系
  Text textStone50() => textColor(BaseStyles.stone50);
  Text textStone100() => textColor(BaseStyles.stone100);
  Text textStone200() => textColor(BaseStyles.stone200);
  Text textStone300() => textColor(BaseStyles.stone300);
  Text textStone400() => textColor(BaseStyles.stone400);
  Text textStone500() => textColor(BaseStyles.stone500);
  Text textStone600() => textColor(BaseStyles.stone600);
  Text textStone700() => textColor(BaseStyles.stone700);
  Text textStone800() => textColor(BaseStyles.stone800);
  Text textStone900() => textColor(BaseStyles.stone900);
  Text textStone950() => textColor(BaseStyles.stone950);
}
