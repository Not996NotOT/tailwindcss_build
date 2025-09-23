import 'package:flutter/material.dart';

import 'colors.dart';

/// Icon专用扩展 - 支持颜色和大小语法糖
/// 让Icon组件也能使用链式调用
extension IconColorExt on Icon {
  // ===== 基础颜色方法 =====
  Icon iconColor(Color color) {
    return Icon(
      icon,
      color: color,
      size: size,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
    );
  }

  // ===== 大小方法 =====
  Icon iconSize(double size) {
    return Icon(
      icon,
      color: color,
      size: size,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
    );
  }

  // ===== 语义大小 =====
  Icon iconXs() => iconSize(12);
  Icon iconSm() => iconSize(14);
  Icon iconBase() => iconSize(16);
  Icon iconLg() => iconSize(18);
  Icon iconXl() => iconSize(20);
  Icon icon2Xl() => iconSize(24);
  Icon icon3Xl() => iconSize(30);
  Icon icon4Xl() => iconSize(36);
  Icon icon5Xl() => iconSize(48);
  Icon icon6Xl() => iconSize(60);

  // ===== 白色系 =====
  Icon iconWhite() => iconColor(TwColors.white);

  // ===== 黑色系 =====
  Icon iconBlack() => iconColor(TwColors.black);

  // ===== 灰色系 =====
  Icon iconSlate50() => iconColor(TwColors.slate50);
  Icon iconSlate100() => iconColor(TwColors.slate100);
  Icon iconSlate200() => iconColor(TwColors.slate200);
  Icon iconSlate300() => iconColor(TwColors.slate300);
  Icon iconSlate400() => iconColor(TwColors.slate400);
  Icon iconSlate500() => iconColor(TwColors.slate500);
  Icon iconSlate600() => iconColor(TwColors.slate600);
  Icon iconSlate700() => iconColor(TwColors.slate700);
  Icon iconSlate800() => iconColor(TwColors.slate800);
  Icon iconSlate900() => iconColor(TwColors.slate900);
  Icon iconSlate950() => iconColor(TwColors.slate950);

  Icon iconGray50() => iconColor(TwColors.gray50);
  Icon iconGray100() => iconColor(TwColors.gray100);
  Icon iconGray200() => iconColor(TwColors.gray200);
  Icon iconGray300() => iconColor(TwColors.gray300);
  Icon iconGray400() => iconColor(TwColors.gray400);
  Icon iconGray500() => iconColor(TwColors.gray500);
  Icon iconGray600() => iconColor(TwColors.gray600);
  Icon iconGray700() => iconColor(TwColors.gray700);
  Icon iconGray800() => iconColor(TwColors.gray800);
  Icon iconGray900() => iconColor(TwColors.gray900);
  Icon iconGray950() => iconColor(TwColors.gray950);

  // ===== 红色系 =====
  Icon iconRed50() => iconColor(TwColors.red50);
  Icon iconRed100() => iconColor(TwColors.red100);
  Icon iconRed200() => iconColor(TwColors.red200);
  Icon iconRed300() => iconColor(TwColors.red300);
  Icon iconRed400() => iconColor(TwColors.red400);
  Icon iconRed500() => iconColor(TwColors.red500);
  Icon iconRed600() => iconColor(TwColors.red600);
  Icon iconRed700() => iconColor(TwColors.red700);
  Icon iconRed800() => iconColor(TwColors.red800);
  Icon iconRed900() => iconColor(TwColors.red900);
  Icon iconRed950() => iconColor(TwColors.red950);

  // ===== 橙色系 =====
  Icon iconOrange50() => iconColor(TwColors.orange50);
  Icon iconOrange100() => iconColor(TwColors.orange100);
  Icon iconOrange200() => iconColor(TwColors.orange200);
  Icon iconOrange300() => iconColor(TwColors.orange300);
  Icon iconOrange400() => iconColor(TwColors.orange400);
  Icon iconOrange500() => iconColor(TwColors.orange500);
  Icon iconOrange600() => iconColor(TwColors.orange600);
  Icon iconOrange700() => iconColor(TwColors.orange700);
  Icon iconOrange800() => iconColor(TwColors.orange800);
  Icon iconOrange900() => iconColor(TwColors.orange900);
  Icon iconOrange950() => iconColor(TwColors.orange950);

  // ===== 琥珀色系 =====
  Icon iconAmber50() => iconColor(TwColors.amber50);
  Icon iconAmber100() => iconColor(TwColors.amber100);
  Icon iconAmber200() => iconColor(TwColors.amber200);
  Icon iconAmber300() => iconColor(TwColors.amber300);
  Icon iconAmber400() => iconColor(TwColors.amber400);
  Icon iconAmber500() => iconColor(TwColors.amber500);
  Icon iconAmber600() => iconColor(TwColors.amber600);
  Icon iconAmber700() => iconColor(TwColors.amber700);
  Icon iconAmber800() => iconColor(TwColors.amber800);
  Icon iconAmber900() => iconColor(TwColors.amber900);
  Icon iconAmber950() => iconColor(TwColors.amber950);

  // ===== 黄色系 =====
  Icon iconYellow50() => iconColor(TwColors.yellow50);
  Icon iconYellow100() => iconColor(TwColors.yellow100);
  Icon iconYellow200() => iconColor(TwColors.yellow200);
  Icon iconYellow300() => iconColor(TwColors.yellow300);
  Icon iconYellow400() => iconColor(TwColors.yellow400);
  Icon iconYellow500() => iconColor(TwColors.yellow500);
  Icon iconYellow600() => iconColor(TwColors.yellow600);
  Icon iconYellow700() => iconColor(TwColors.yellow700);
  Icon iconYellow800() => iconColor(TwColors.yellow800);
  Icon iconYellow900() => iconColor(TwColors.yellow900);
  Icon iconYellow950() => iconColor(TwColors.yellow950);

  // ===== 青柠色系 =====
  Icon iconLime50() => iconColor(TwColors.lime50);
  Icon iconLime100() => iconColor(TwColors.lime100);
  Icon iconLime200() => iconColor(TwColors.lime200);
  Icon iconLime300() => iconColor(TwColors.lime300);
  Icon iconLime400() => iconColor(TwColors.lime400);
  Icon iconLime500() => iconColor(TwColors.lime500);
  Icon iconLime600() => iconColor(TwColors.lime600);
  Icon iconLime700() => iconColor(TwColors.lime700);
  Icon iconLime800() => iconColor(TwColors.lime800);
  Icon iconLime900() => iconColor(TwColors.lime900);
  Icon iconLime950() => iconColor(TwColors.lime950);

  // ===== 绿色系 =====
  Icon iconGreen50() => iconColor(TwColors.green50);
  Icon iconGreen100() => iconColor(TwColors.green100);
  Icon iconGreen200() => iconColor(TwColors.green200);
  Icon iconGreen300() => iconColor(TwColors.green300);
  Icon iconGreen400() => iconColor(TwColors.green400);
  Icon iconGreen500() => iconColor(TwColors.green500);
  Icon iconGreen600() => iconColor(TwColors.green600);
  Icon iconGreen700() => iconColor(TwColors.green700);
  Icon iconGreen800() => iconColor(TwColors.green800);
  Icon iconGreen900() => iconColor(TwColors.green900);
  Icon iconGreen950() => iconColor(TwColors.green950);

  // ===== 翠绿色系 =====
  Icon iconEmerald50() => iconColor(TwColors.emerald50);
  Icon iconEmerald100() => iconColor(TwColors.emerald100);
  Icon iconEmerald200() => iconColor(TwColors.emerald200);
  Icon iconEmerald300() => iconColor(TwColors.emerald300);
  Icon iconEmerald400() => iconColor(TwColors.emerald400);
  Icon iconEmerald500() => iconColor(TwColors.emerald500);
  Icon iconEmerald600() => iconColor(TwColors.emerald600);
  Icon iconEmerald700() => iconColor(TwColors.emerald700);
  Icon iconEmerald800() => iconColor(TwColors.emerald800);
  Icon iconEmerald900() => iconColor(TwColors.emerald900);
  Icon iconEmerald950() => iconColor(TwColors.emerald950);

  // ===== 青蓝色系 =====
  Icon iconTeal50() => iconColor(TwColors.teal50);
  Icon iconTeal100() => iconColor(TwColors.teal100);
  Icon iconTeal200() => iconColor(TwColors.teal200);
  Icon iconTeal300() => iconColor(TwColors.teal300);
  Icon iconTeal400() => iconColor(TwColors.teal400);
  Icon iconTeal500() => iconColor(TwColors.teal500);
  Icon iconTeal600() => iconColor(TwColors.teal600);
  Icon iconTeal700() => iconColor(TwColors.teal700);
  Icon iconTeal800() => iconColor(TwColors.teal800);
  Icon iconTeal900() => iconColor(TwColors.teal900);
  Icon iconTeal950() => iconColor(TwColors.teal950);

  // ===== 青色系 =====
  Icon iconCyan50() => iconColor(TwColors.cyan50);
  Icon iconCyan100() => iconColor(TwColors.cyan100);
  Icon iconCyan200() => iconColor(TwColors.cyan200);
  Icon iconCyan300() => iconColor(TwColors.cyan300);
  Icon iconCyan400() => iconColor(TwColors.cyan400);
  Icon iconCyan500() => iconColor(TwColors.cyan500);
  Icon iconCyan600() => iconColor(TwColors.cyan600);
  Icon iconCyan700() => iconColor(TwColors.cyan700);
  Icon iconCyan800() => iconColor(TwColors.cyan800);
  Icon iconCyan900() => iconColor(TwColors.cyan900);
  Icon iconCyan950() => iconColor(TwColors.cyan950);

  // ===== 天蓝色系 =====
  Icon iconSky50() => iconColor(TwColors.sky50);
  Icon iconSky100() => iconColor(TwColors.sky100);
  Icon iconSky200() => iconColor(TwColors.sky200);
  Icon iconSky300() => iconColor(TwColors.sky300);
  Icon iconSky400() => iconColor(TwColors.sky400);
  Icon iconSky500() => iconColor(TwColors.sky500);
  Icon iconSky600() => iconColor(TwColors.sky600);
  Icon iconSky700() => iconColor(TwColors.sky700);
  Icon iconSky800() => iconColor(TwColors.sky800);
  Icon iconSky900() => iconColor(TwColors.sky900);
  Icon iconSky950() => iconColor(TwColors.sky950);

  // ===== 蓝色系 =====
  Icon iconBlue50() => iconColor(TwColors.blue50);
  Icon iconBlue100() => iconColor(TwColors.blue100);
  Icon iconBlue200() => iconColor(TwColors.blue200);
  Icon iconBlue300() => iconColor(TwColors.blue300);
  Icon iconBlue400() => iconColor(TwColors.blue400);
  Icon iconBlue500() => iconColor(TwColors.blue500);
  Icon iconBlue600() => iconColor(TwColors.blue600);
  Icon iconBlue700() => iconColor(TwColors.blue700);
  Icon iconBlue800() => iconColor(TwColors.blue800);
  Icon iconBlue900() => iconColor(TwColors.blue900);
  Icon iconBlue950() => iconColor(TwColors.blue950);

  // ===== 靛蓝色系 =====
  Icon iconIndigo50() => iconColor(TwColors.indigo50);
  Icon iconIndigo100() => iconColor(TwColors.indigo100);
  Icon iconIndigo200() => iconColor(TwColors.indigo200);
  Icon iconIndigo300() => iconColor(TwColors.indigo300);
  Icon iconIndigo400() => iconColor(TwColors.indigo400);
  Icon iconIndigo500() => iconColor(TwColors.indigo500);
  Icon iconIndigo600() => iconColor(TwColors.indigo600);
  Icon iconIndigo700() => iconColor(TwColors.indigo700);
  Icon iconIndigo800() => iconColor(TwColors.indigo800);
  Icon iconIndigo900() => iconColor(TwColors.indigo900);
  Icon iconIndigo950() => iconColor(TwColors.indigo950);

  // ===== 紫色系 =====
  Icon iconViolet50() => iconColor(TwColors.violet50);
  Icon iconViolet100() => iconColor(TwColors.violet100);
  Icon iconViolet200() => iconColor(TwColors.violet200);
  Icon iconViolet300() => iconColor(TwColors.violet300);
  Icon iconViolet400() => iconColor(TwColors.violet400);
  Icon iconViolet500() => iconColor(TwColors.violet500);
  Icon iconViolet600() => iconColor(TwColors.violet600);
  Icon iconViolet700() => iconColor(TwColors.violet700);
  Icon iconViolet800() => iconColor(TwColors.violet800);
  Icon iconViolet900() => iconColor(TwColors.violet900);
  Icon iconViolet950() => iconColor(TwColors.violet950);

  // ===== 紫罗兰色系 =====
  Icon iconPurple50() => iconColor(TwColors.purple50);
  Icon iconPurple100() => iconColor(TwColors.purple100);
  Icon iconPurple200() => iconColor(TwColors.purple200);
  Icon iconPurple300() => iconColor(TwColors.purple300);
  Icon iconPurple400() => iconColor(TwColors.purple400);
  Icon iconPurple500() => iconColor(TwColors.purple500);
  Icon iconPurple600() => iconColor(TwColors.purple600);
  Icon iconPurple700() => iconColor(TwColors.purple700);
  Icon iconPurple800() => iconColor(TwColors.purple800);
  Icon iconPurple900() => iconColor(TwColors.purple900);
  Icon iconPurple950() => iconColor(TwColors.purple950);

  // ===== 紫红色系 =====
  Icon iconFuchsia50() => iconColor(TwColors.fuchsia50);
  Icon iconFuchsia100() => iconColor(TwColors.fuchsia100);
  Icon iconFuchsia200() => iconColor(TwColors.fuchsia200);
  Icon iconFuchsia300() => iconColor(TwColors.fuchsia300);
  Icon iconFuchsia400() => iconColor(TwColors.fuchsia400);
  Icon iconFuchsia500() => iconColor(TwColors.fuchsia500);
  Icon iconFuchsia600() => iconColor(TwColors.fuchsia600);
  Icon iconFuchsia700() => iconColor(TwColors.fuchsia700);
  Icon iconFuchsia800() => iconColor(TwColors.fuchsia800);
  Icon iconFuchsia900() => iconColor(TwColors.fuchsia900);
  Icon iconFuchsia950() => iconColor(TwColors.fuchsia950);

  // ===== 粉色系 =====
  Icon iconPink50() => iconColor(TwColors.pink50);
  Icon iconPink100() => iconColor(TwColors.pink100);
  Icon iconPink200() => iconColor(TwColors.pink200);
  Icon iconPink300() => iconColor(TwColors.pink300);
  Icon iconPink400() => iconColor(TwColors.pink400);
  Icon iconPink500() => iconColor(TwColors.pink500);
  Icon iconPink600() => iconColor(TwColors.pink600);
  Icon iconPink700() => iconColor(TwColors.pink700);
  Icon iconPink800() => iconColor(TwColors.pink800);
  Icon iconPink900() => iconColor(TwColors.pink900);
  Icon iconPink950() => iconColor(TwColors.pink950);

  // ===== 玫瑰色系 =====
  Icon iconRose50() => iconColor(TwColors.rose50);
  Icon iconRose100() => iconColor(TwColors.rose100);
  Icon iconRose200() => iconColor(TwColors.rose200);
  Icon iconRose300() => iconColor(TwColors.rose300);
  Icon iconRose400() => iconColor(TwColors.rose400);
  Icon iconRose500() => iconColor(TwColors.rose500);
  Icon iconRose600() => iconColor(TwColors.rose600);
  Icon iconRose700() => iconColor(TwColors.rose700);
  Icon iconRose800() => iconColor(TwColors.rose800);
  Icon iconRose900() => iconColor(TwColors.rose900);
  Icon iconRose950() => iconColor(TwColors.rose950);
}
