import 'package:flutter/material.dart';

import 'colors.dart';

/// Text专用扩展 - 支持颜色、大小、粗细等语法糖
/// 让Text组件也能使用链式调用
extension TextStyleExt on Text {
  // ===== 基础方法 =====
  Text textColor(Color color) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(color: color),
      strutStyle: strutStyle,
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
    );
  }

  Text fontSize(double size) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(fontSize: size),
      strutStyle: strutStyle,
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
    );
  }

  Text fontWeight(FontWeight weight) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(fontWeight: weight),
      strutStyle: strutStyle,
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
    );
  }

  // ===== 字体粗细 =====
  Text fontThin() => fontWeight(FontWeight.w100);
  Text fontExtraLight() => fontWeight(FontWeight.w200);
  Text fontLight() => fontWeight(FontWeight.w300);
  Text fontNormal() => fontWeight(FontWeight.w400);
  Text fontMedium() => fontWeight(FontWeight.w500);
  Text fontSemiBold() => fontWeight(FontWeight.w600);
  Text fontBold() => fontWeight(FontWeight.w700);
  Text fontExtraBold() => fontWeight(FontWeight.w800);
  Text fontBlack() => fontWeight(FontWeight.w900);

  // ===== 字体大小 =====
  Text textXs() => fontSize(12);
  Text textSm() => fontSize(14);
  Text textBase() => fontSize(16);
  Text textLg() => fontSize(18);
  Text textXl() => fontSize(20);
  Text text2Xl() => fontSize(24);
  Text text3Xl() => fontSize(30);
  Text text4Xl() => fontSize(36);
  Text text5Xl() => fontSize(48);
  Text text6Xl() => fontSize(60);
  Text text7Xl() => fontSize(72);
  Text text8Xl() => fontSize(96);
  Text text9Xl() => fontSize(128);

  // ===== 白色系 =====
  Text textWhite() => textColor(TwColors.white);

  // ===== 黑色系 =====
  Text textBlack() => textColor(TwColors.black);

  // ===== 灰色系 =====
  Text textSlate50() => textColor(TwColors.slate50);
  Text textSlate100() => textColor(TwColors.slate100);
  Text textSlate200() => textColor(TwColors.slate200);
  Text textSlate300() => textColor(TwColors.slate300);
  Text textSlate400() => textColor(TwColors.slate400);
  Text textSlate500() => textColor(TwColors.slate500);
  Text textSlate600() => textColor(TwColors.slate600);
  Text textSlate700() => textColor(TwColors.slate700);
  Text textSlate800() => textColor(TwColors.slate800);
  Text textSlate900() => textColor(TwColors.slate900);
  Text textSlate950() => textColor(TwColors.slate950);

  Text textGray50() => textColor(TwColors.gray50);
  Text textGray100() => textColor(TwColors.gray100);
  Text textGray200() => textColor(TwColors.gray200);
  Text textGray300() => textColor(TwColors.gray300);
  Text textGray400() => textColor(TwColors.gray400);
  Text textGray500() => textColor(TwColors.gray500);
  Text textGray600() => textColor(TwColors.gray600);
  Text textGray700() => textColor(TwColors.gray700);
  Text textGray800() => textColor(TwColors.gray800);
  Text textGray900() => textColor(TwColors.gray900);
  Text textGray950() => textColor(TwColors.gray950);

  // ===== 红色系 =====
  Text textRed50() => textColor(TwColors.red50);
  Text textRed100() => textColor(TwColors.red100);
  Text textRed200() => textColor(TwColors.red200);
  Text textRed300() => textColor(TwColors.red300);
  Text textRed400() => textColor(TwColors.red400);
  Text textRed500() => textColor(TwColors.red500);
  Text textRed600() => textColor(TwColors.red600);
  Text textRed700() => textColor(TwColors.red700);
  Text textRed800() => textColor(TwColors.red800);
  Text textRed900() => textColor(TwColors.red900);
  Text textRed950() => textColor(TwColors.red950);

  // ===== 橙色系 =====
  Text textOrange50() => textColor(TwColors.orange50);
  Text textOrange100() => textColor(TwColors.orange100);
  Text textOrange200() => textColor(TwColors.orange200);
  Text textOrange300() => textColor(TwColors.orange300);
  Text textOrange400() => textColor(TwColors.orange400);
  Text textOrange500() => textColor(TwColors.orange500);
  Text textOrange600() => textColor(TwColors.orange600);
  Text textOrange700() => textColor(TwColors.orange700);
  Text textOrange800() => textColor(TwColors.orange800);
  Text textOrange900() => textColor(TwColors.orange900);
  Text textOrange950() => textColor(TwColors.orange950);

  // ===== 琥珀色系 =====
  Text textAmber50() => textColor(TwColors.amber50);
  Text textAmber100() => textColor(TwColors.amber100);
  Text textAmber200() => textColor(TwColors.amber200);
  Text textAmber300() => textColor(TwColors.amber300);
  Text textAmber400() => textColor(TwColors.amber400);
  Text textAmber500() => textColor(TwColors.amber500);
  Text textAmber600() => textColor(TwColors.amber600);
  Text textAmber700() => textColor(TwColors.amber700);
  Text textAmber800() => textColor(TwColors.amber800);
  Text textAmber900() => textColor(TwColors.amber900);
  Text textAmber950() => textColor(TwColors.amber950);

  // ===== 黄色系 =====
  Text textYellow50() => textColor(TwColors.yellow50);
  Text textYellow100() => textColor(TwColors.yellow100);
  Text textYellow200() => textColor(TwColors.yellow200);
  Text textYellow300() => textColor(TwColors.yellow300);
  Text textYellow400() => textColor(TwColors.yellow400);
  Text textYellow500() => textColor(TwColors.yellow500);
  Text textYellow600() => textColor(TwColors.yellow600);
  Text textYellow700() => textColor(TwColors.yellow700);
  Text textYellow800() => textColor(TwColors.yellow800);
  Text textYellow900() => textColor(TwColors.yellow900);
  Text textYellow950() => textColor(TwColors.yellow950);

  // ===== 青柠色系 =====
  Text textLime50() => textColor(TwColors.lime50);
  Text textLime100() => textColor(TwColors.lime100);
  Text textLime200() => textColor(TwColors.lime200);
  Text textLime300() => textColor(TwColors.lime300);
  Text textLime400() => textColor(TwColors.lime400);
  Text textLime500() => textColor(TwColors.lime500);
  Text textLime600() => textColor(TwColors.lime600);
  Text textLime700() => textColor(TwColors.lime700);
  Text textLime800() => textColor(TwColors.lime800);
  Text textLime900() => textColor(TwColors.lime900);
  Text textLime950() => textColor(TwColors.lime950);

  // ===== 绿色系 =====
  Text textGreen50() => textColor(TwColors.green50);
  Text textGreen100() => textColor(TwColors.green100);
  Text textGreen200() => textColor(TwColors.green200);
  Text textGreen300() => textColor(TwColors.green300);
  Text textGreen400() => textColor(TwColors.green400);
  Text textGreen500() => textColor(TwColors.green500);
  Text textGreen600() => textColor(TwColors.green600);
  Text textGreen700() => textColor(TwColors.green700);
  Text textGreen800() => textColor(TwColors.green800);
  Text textGreen900() => textColor(TwColors.green900);
  Text textGreen950() => textColor(TwColors.green950);

  // ===== 翠绿色系 =====
  Text textEmerald50() => textColor(TwColors.emerald50);
  Text textEmerald100() => textColor(TwColors.emerald100);
  Text textEmerald200() => textColor(TwColors.emerald200);
  Text textEmerald300() => textColor(TwColors.emerald300);
  Text textEmerald400() => textColor(TwColors.emerald400);
  Text textEmerald500() => textColor(TwColors.emerald500);
  Text textEmerald600() => textColor(TwColors.emerald600);
  Text textEmerald700() => textColor(TwColors.emerald700);
  Text textEmerald800() => textColor(TwColors.emerald800);
  Text textEmerald900() => textColor(TwColors.emerald900);
  Text textEmerald950() => textColor(TwColors.emerald950);

  // ===== 青蓝色系 =====
  Text textTeal50() => textColor(TwColors.teal50);
  Text textTeal100() => textColor(TwColors.teal100);
  Text textTeal200() => textColor(TwColors.teal200);
  Text textTeal300() => textColor(TwColors.teal300);
  Text textTeal400() => textColor(TwColors.teal400);
  Text textTeal500() => textColor(TwColors.teal500);
  Text textTeal600() => textColor(TwColors.teal600);
  Text textTeal700() => textColor(TwColors.teal700);
  Text textTeal800() => textColor(TwColors.teal800);
  Text textTeal900() => textColor(TwColors.teal900);
  Text textTeal950() => textColor(TwColors.teal950);

  // ===== 青色系 =====
  Text textCyan50() => textColor(TwColors.cyan50);
  Text textCyan100() => textColor(TwColors.cyan100);
  Text textCyan200() => textColor(TwColors.cyan200);
  Text textCyan300() => textColor(TwColors.cyan300);
  Text textCyan400() => textColor(TwColors.cyan400);
  Text textCyan500() => textColor(TwColors.cyan500);
  Text textCyan600() => textColor(TwColors.cyan600);
  Text textCyan700() => textColor(TwColors.cyan700);
  Text textCyan800() => textColor(TwColors.cyan800);
  Text textCyan900() => textColor(TwColors.cyan900);
  Text textCyan950() => textColor(TwColors.cyan950);

  // ===== 天蓝色系 =====
  Text textSky50() => textColor(TwColors.sky50);
  Text textSky100() => textColor(TwColors.sky100);
  Text textSky200() => textColor(TwColors.sky200);
  Text textSky300() => textColor(TwColors.sky300);
  Text textSky400() => textColor(TwColors.sky400);
  Text textSky500() => textColor(TwColors.sky500);
  Text textSky600() => textColor(TwColors.sky600);
  Text textSky700() => textColor(TwColors.sky700);
  Text textSky800() => textColor(TwColors.sky800);
  Text textSky900() => textColor(TwColors.sky900);
  Text textSky950() => textColor(TwColors.sky950);

  // ===== 蓝色系 =====
  Text textBlue50() => textColor(TwColors.blue50);
  Text textBlue100() => textColor(TwColors.blue100);
  Text textBlue200() => textColor(TwColors.blue200);
  Text textBlue300() => textColor(TwColors.blue300);
  Text textBlue400() => textColor(TwColors.blue400);
  Text textBlue500() => textColor(TwColors.blue500);
  Text textBlue600() => textColor(TwColors.blue600);
  Text textBlue700() => textColor(TwColors.blue700);
  Text textBlue800() => textColor(TwColors.blue800);
  Text textBlue900() => textColor(TwColors.blue900);
  Text textBlue950() => textColor(TwColors.blue950);

  // ===== 靛蓝色系 =====
  Text textIndigo50() => textColor(TwColors.indigo50);
  Text textIndigo100() => textColor(TwColors.indigo100);
  Text textIndigo200() => textColor(TwColors.indigo200);
  Text textIndigo300() => textColor(TwColors.indigo300);
  Text textIndigo400() => textColor(TwColors.indigo400);
  Text textIndigo500() => textColor(TwColors.indigo500);
  Text textIndigo600() => textColor(TwColors.indigo600);
  Text textIndigo700() => textColor(TwColors.indigo700);
  Text textIndigo800() => textColor(TwColors.indigo800);
  Text textIndigo900() => textColor(TwColors.indigo900);
  Text textIndigo950() => textColor(TwColors.indigo950);

  // ===== 紫色系 =====
  Text textViolet50() => textColor(TwColors.violet50);
  Text textViolet100() => textColor(TwColors.violet100);
  Text textViolet200() => textColor(TwColors.violet200);
  Text textViolet300() => textColor(TwColors.violet300);
  Text textViolet400() => textColor(TwColors.violet400);
  Text textViolet500() => textColor(TwColors.violet500);
  Text textViolet600() => textColor(TwColors.violet600);
  Text textViolet700() => textColor(TwColors.violet700);
  Text textViolet800() => textColor(TwColors.violet800);
  Text textViolet900() => textColor(TwColors.violet900);
  Text textViolet950() => textColor(TwColors.violet950);

  // ===== 紫罗兰色系 =====
  Text textPurple50() => textColor(TwColors.purple50);
  Text textPurple100() => textColor(TwColors.purple100);
  Text textPurple200() => textColor(TwColors.purple200);
  Text textPurple300() => textColor(TwColors.purple300);
  Text textPurple400() => textColor(TwColors.purple400);
  Text textPurple500() => textColor(TwColors.purple500);
  Text textPurple600() => textColor(TwColors.purple600);
  Text textPurple700() => textColor(TwColors.purple700);
  Text textPurple800() => textColor(TwColors.purple800);
  Text textPurple900() => textColor(TwColors.purple900);
  Text textPurple950() => textColor(TwColors.purple950);

  // ===== 紫红色系 =====
  Text textFuchsia50() => textColor(TwColors.fuchsia50);
  Text textFuchsia100() => textColor(TwColors.fuchsia100);
  Text textFuchsia200() => textColor(TwColors.fuchsia200);
  Text textFuchsia300() => textColor(TwColors.fuchsia300);
  Text textFuchsia400() => textColor(TwColors.fuchsia400);
  Text textFuchsia500() => textColor(TwColors.fuchsia500);
  Text textFuchsia600() => textColor(TwColors.fuchsia600);
  Text textFuchsia700() => textColor(TwColors.fuchsia700);
  Text textFuchsia800() => textColor(TwColors.fuchsia800);
  Text textFuchsia900() => textColor(TwColors.fuchsia900);
  Text textFuchsia950() => textColor(TwColors.fuchsia950);

  // ===== 粉色系 =====
  Text textPink50() => textColor(TwColors.pink50);
  Text textPink100() => textColor(TwColors.pink100);
  Text textPink200() => textColor(TwColors.pink200);
  Text textPink300() => textColor(TwColors.pink300);
  Text textPink400() => textColor(TwColors.pink400);
  Text textPink500() => textColor(TwColors.pink500);
  Text textPink600() => textColor(TwColors.pink600);
  Text textPink700() => textColor(TwColors.pink700);
  Text textPink800() => textColor(TwColors.pink800);
  Text textPink900() => textColor(TwColors.pink900);
  Text textPink950() => textColor(TwColors.pink950);

  // ===== 玫瑰色系 =====
  Text textRose50() => textColor(TwColors.rose50);
  Text textRose100() => textColor(TwColors.rose100);
  Text textRose200() => textColor(TwColors.rose200);
  Text textRose300() => textColor(TwColors.rose300);
  Text textRose400() => textColor(TwColors.rose400);
  Text textRose500() => textColor(TwColors.rose500);
  Text textRose600() => textColor(TwColors.rose600);
  Text textRose700() => textColor(TwColors.rose700);
  Text textRose800() => textColor(TwColors.rose800);
  Text textRose900() => textColor(TwColors.rose900);
  Text textRose950() => textColor(TwColors.rose950);
}

/// Text转Container的扩展 - 让Text可以拥有容器特性
extension TextToContainerExt on Text {
  /// @deprecated 使用新的建造者模式 asContainer() 替代
  /// 将Text转换为Container，用于应用背景、尺寸等容器属性
  /// 这是专门为了支持类似头像这样需要背景和固定尺寸的Text组件
  @Deprecated('Use the new builder pattern asContainer() instead. This will be removed in a future version.')
  Container asLegacyContainer({
    double? width,
    double? height,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? decoration,
  }) {
    return Container(
      width: width,
      height: height,
      alignment: alignment ?? Alignment.center,
      padding: padding,
      margin: margin,
      decoration: decoration ?? BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: this,
    );
  }

  // ===== Margin 边距扩展 =====
  
  /// 自定义margin
  Container margin(EdgeInsetsGeometry margin) {
    return Container(margin: margin, child: this);
  }

  /// 所有方向margin
  Container m(double value) {
    return Container(margin: EdgeInsets.all(value), child: this);
  }

  /// 水平margin
  Container mx(double value) {
    return Container(margin: EdgeInsets.symmetric(horizontal: value), child: this);
  }

  /// 垂直margin
  Container my(double value) {
    return Container(margin: EdgeInsets.symmetric(vertical: value), child: this);
  }

  /// 顶部margin
  Container mt(double value) {
    return Container(margin: EdgeInsets.only(top: value), child: this);
  }

  /// 右侧margin
  Container mr(double value) {
    return Container(margin: EdgeInsets.only(right: value), child: this);
  }

  /// 底部margin
  Container mb(double value) {
    return Container(margin: EdgeInsets.only(bottom: value), child: this);
  }

  /// 左侧margin
  Container ml(double value) {
    return Container(margin: EdgeInsets.only(left: value), child: this);
  }

  // ===== Tailwind标准数值 margin =====
  Container m0() => m(0);
  Container m1() => m(4);
  Container m2() => m(8);
  Container m3() => m(12);
  Container m4() => m(16);
  Container m5() => m(20);
  Container m6() => m(24);
  Container m8() => m(32);
  Container m10() => m(40);
  Container m12() => m(48);
  Container m16() => m(64);
  Container m20() => m(80);
  Container m24() => m(96);
  Container m32() => m(128);

  // margin-top shortcuts
  Container mt0() => mt(0);
  Container mt1() => mt(4);
  Container mt2() => mt(8);
  Container mt3() => mt(12);
  Container mt4() => mt(16);
  Container mt5() => mt(20);
  Container mt6() => mt(24);
  Container mt8() => mt(32);

  // margin-bottom shortcuts
  Container mb0() => mb(0);
  Container mb1() => mb(4);
  Container mb2() => mb(8);
  Container mb3() => mb(12);
  Container mb4() => mb(16);
  Container mb5() => mb(20);
  Container mb6() => mb(24);
  Container mb8() => mb(32);

  // margin-left shortcuts
  Container ml0() => ml(0);
  Container ml1() => ml(4);
  Container ml2() => ml(8);
  Container ml3() => ml(12);
  Container ml4() => ml(16);
  Container ml5() => ml(20);
  Container ml6() => ml(24);
  Container ml8() => ml(32);

  // margin-right shortcuts
  Container mr0() => mr(0);
  Container mr1() => mr(4);
  Container mr2() => mr(8);
  Container mr3() => mr(12);
  Container mr4() => mr(16);
  Container mr5() => mr(20);
  Container mr6() => mr(24);
  Container mr8() => mr(32);

  // ===== Padding 内边距扩展 =====
  
  /// 自定义padding
  Container padding(EdgeInsetsGeometry padding) {
    return Container(padding: padding, child: this);
  }

  /// 所有方向padding
  Container p(double value) {
    return Container(padding: EdgeInsets.all(value), child: this);
  }

  /// 水平padding
  Container px(double value) {
    return Container(padding: EdgeInsets.symmetric(horizontal: value), child: this);
  }

  /// 垂直padding
  Container py(double value) {
    return Container(padding: EdgeInsets.symmetric(vertical: value), child: this);
  }

  /// 顶部padding
  Container pt(double value) {
    return Container(padding: EdgeInsets.only(top: value), child: this);
  }

  /// 右侧padding
  Container pr(double value) {
    return Container(padding: EdgeInsets.only(right: value), child: this);
  }

  /// 底部padding
  Container pb(double value) {
    return Container(padding: EdgeInsets.only(bottom: value), child: this);
  }

  /// 左侧padding
  Container pl(double value) {
    return Container(padding: EdgeInsets.only(left: value), child: this);
  }

  // ===== 颜色扩展 (为了链式调用) =====
  
  /// 自定义颜色
  Text color(Color color) {
    return textColor(color);
  }
}
