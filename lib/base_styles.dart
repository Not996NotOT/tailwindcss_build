import 'package:flutter/material.dart';

import 'colors.dart';

/// 基础样式抽象类
/// 包含所有通用的样式定义，避免重复代码
abstract class BaseStyles {
  // ===== 颜色系统 =====
  
  // 基础颜色
  static const Color white = TwColors.white;
  static const Color black = TwColors.black;
  
  // 灰色系
  static const Color slate50 = TwColors.slate50;
  static const Color slate100 = TwColors.slate100;
  static const Color slate200 = TwColors.slate200;
  static const Color slate300 = TwColors.slate300;
  static const Color slate400 = TwColors.slate400;
  static const Color slate500 = TwColors.slate500;
  static const Color slate600 = TwColors.slate600;
  static const Color slate700 = TwColors.slate700;
  static const Color slate800 = TwColors.slate800;
  static const Color slate900 = TwColors.slate900;
  static const Color slate950 = TwColors.slate950;

  static const Color gray50 = TwColors.gray50;
  static const Color gray100 = TwColors.gray100;
  static const Color gray200 = TwColors.gray200;
  static const Color gray300 = TwColors.gray300;
  static const Color gray400 = TwColors.gray400;
  static const Color gray500 = TwColors.gray500;
  static const Color gray600 = TwColors.gray600;
  static const Color gray700 = TwColors.gray700;
  static const Color gray800 = TwColors.gray800;
  static const Color gray900 = TwColors.gray900;
  static const Color gray950 = TwColors.gray950;

  // 红色系
  static const Color red50 = TwColors.red50;
  static const Color red100 = TwColors.red100;
  static const Color red200 = TwColors.red200;
  static const Color red300 = TwColors.red300;
  static const Color red400 = TwColors.red400;
  static const Color red500 = TwColors.red500;
  static const Color red600 = TwColors.red600;
  static const Color red700 = TwColors.red700;
  static const Color red800 = TwColors.red800;
  static const Color red900 = TwColors.red900;
  static const Color red950 = TwColors.red950;

  // 橙色系
  static const Color orange50 = TwColors.orange50;
  static const Color orange100 = TwColors.orange100;
  static const Color orange200 = TwColors.orange200;
  static const Color orange300 = TwColors.orange300;
  static const Color orange400 = TwColors.orange400;
  static const Color orange500 = TwColors.orange500;
  static const Color orange600 = TwColors.orange600;
  static const Color orange700 = TwColors.orange700;
  static const Color orange800 = TwColors.orange800;
  static const Color orange900 = TwColors.orange900;
  static const Color orange950 = TwColors.orange950;

  // 琥珀色系
  static const Color amber50 = TwColors.amber50;
  static const Color amber100 = TwColors.amber100;
  static const Color amber200 = TwColors.amber200;
  static const Color amber300 = TwColors.amber300;
  static const Color amber400 = TwColors.amber400;
  static const Color amber500 = TwColors.amber500;
  static const Color amber600 = TwColors.amber600;
  static const Color amber700 = TwColors.amber700;
  static const Color amber800 = TwColors.amber800;
  static const Color amber900 = TwColors.amber900;
  static const Color amber950 = TwColors.amber950;

  // 黄色系
  static const Color yellow50 = TwColors.yellow50;
  static const Color yellow100 = TwColors.yellow100;
  static const Color yellow200 = TwColors.yellow200;
  static const Color yellow300 = TwColors.yellow300;
  static const Color yellow400 = TwColors.yellow400;
  static const Color yellow500 = TwColors.yellow500;
  static const Color yellow600 = TwColors.yellow600;
  static const Color yellow700 = TwColors.yellow700;
  static const Color yellow800 = TwColors.yellow800;
  static const Color yellow900 = TwColors.yellow900;
  static const Color yellow950 = TwColors.yellow950;

  // 青柠色系
  static const Color lime50 = TwColors.lime50;
  static const Color lime100 = TwColors.lime100;
  static const Color lime200 = TwColors.lime200;
  static const Color lime300 = TwColors.lime300;
  static const Color lime400 = TwColors.lime400;
  static const Color lime500 = TwColors.lime500;
  static const Color lime600 = TwColors.lime600;
  static const Color lime700 = TwColors.lime700;
  static const Color lime800 = TwColors.lime800;
  static const Color lime900 = TwColors.lime900;
  static const Color lime950 = TwColors.lime950;

  // 绿色系
  static const Color green50 = TwColors.green50;
  static const Color green100 = TwColors.green100;
  static const Color green200 = TwColors.green200;
  static const Color green300 = TwColors.green300;
  static const Color green400 = TwColors.green400;
  static const Color green500 = TwColors.green500;
  static const Color green600 = TwColors.green600;
  static const Color green700 = TwColors.green700;
  static const Color green800 = TwColors.green800;
  static const Color green900 = TwColors.green900;
  static const Color green950 = TwColors.green950;

  // 翠绿色系
  static const Color emerald50 = TwColors.emerald50;
  static const Color emerald100 = TwColors.emerald100;
  static const Color emerald200 = TwColors.emerald200;
  static const Color emerald300 = TwColors.emerald300;
  static const Color emerald400 = TwColors.emerald400;
  static const Color emerald500 = TwColors.emerald500;
  static const Color emerald600 = TwColors.emerald600;
  static const Color emerald700 = TwColors.emerald700;
  static const Color emerald800 = TwColors.emerald800;
  static const Color emerald900 = TwColors.emerald900;
  static const Color emerald950 = TwColors.emerald950;

  // 青蓝色系
  static const Color teal50 = TwColors.teal50;
  static const Color teal100 = TwColors.teal100;
  static const Color teal200 = TwColors.teal200;
  static const Color teal300 = TwColors.teal300;
  static const Color teal400 = TwColors.teal400;
  static const Color teal500 = TwColors.teal500;
  static const Color teal600 = TwColors.teal600;
  static const Color teal700 = TwColors.teal700;
  static const Color teal800 = TwColors.teal800;
  static const Color teal900 = TwColors.teal900;
  static const Color teal950 = TwColors.teal950;

  // 青色系
  static const Color cyan50 = TwColors.cyan50;
  static const Color cyan100 = TwColors.cyan100;
  static const Color cyan200 = TwColors.cyan200;
  static const Color cyan300 = TwColors.cyan300;
  static const Color cyan400 = TwColors.cyan400;
  static const Color cyan500 = TwColors.cyan500;
  static const Color cyan600 = TwColors.cyan600;
  static const Color cyan700 = TwColors.cyan700;
  static const Color cyan800 = TwColors.cyan800;
  static const Color cyan900 = TwColors.cyan900;
  static const Color cyan950 = TwColors.cyan950;

  // 天蓝色系
  static const Color sky50 = TwColors.sky50;
  static const Color sky100 = TwColors.sky100;
  static const Color sky200 = TwColors.sky200;
  static const Color sky300 = TwColors.sky300;
  static const Color sky400 = TwColors.sky400;
  static const Color sky500 = TwColors.sky500;
  static const Color sky600 = TwColors.sky600;
  static const Color sky700 = TwColors.sky700;
  static const Color sky800 = TwColors.sky800;
  static const Color sky900 = TwColors.sky900;
  static const Color sky950 = TwColors.sky950;

  // 蓝色系
  static const Color blue50 = TwColors.blue50;
  static const Color blue100 = TwColors.blue100;
  static const Color blue200 = TwColors.blue200;
  static const Color blue300 = TwColors.blue300;
  static const Color blue400 = TwColors.blue400;
  static const Color blue500 = TwColors.blue500;
  static const Color blue600 = TwColors.blue600;
  static const Color blue700 = TwColors.blue700;
  static const Color blue800 = TwColors.blue800;
  static const Color blue900 = TwColors.blue900;
  static const Color blue950 = TwColors.blue950;

  // 靛蓝色系
  static const Color indigo50 = TwColors.indigo50;
  static const Color indigo100 = TwColors.indigo100;
  static const Color indigo200 = TwColors.indigo200;
  static const Color indigo300 = TwColors.indigo300;
  static const Color indigo400 = TwColors.indigo400;
  static const Color indigo500 = TwColors.indigo500;
  static const Color indigo600 = TwColors.indigo600;
  static const Color indigo700 = TwColors.indigo700;
  static const Color indigo800 = TwColors.indigo800;
  static const Color indigo900 = TwColors.indigo900;
  static const Color indigo950 = TwColors.indigo950;

  // 紫色系
  static const Color violet50 = TwColors.violet50;
  static const Color violet100 = TwColors.violet100;
  static const Color violet200 = TwColors.violet200;
  static const Color violet300 = TwColors.violet300;
  static const Color violet400 = TwColors.violet400;
  static const Color violet500 = TwColors.violet500;
  static const Color violet600 = TwColors.violet600;
  static const Color violet700 = TwColors.violet700;
  static const Color violet800 = TwColors.violet800;
  static const Color violet900 = TwColors.violet900;
  static const Color violet950 = TwColors.violet950;

  // 紫罗兰色系
  static const Color purple50 = TwColors.purple50;
  static const Color purple100 = TwColors.purple100;
  static const Color purple200 = TwColors.purple200;
  static const Color purple300 = TwColors.purple300;
  static const Color purple400 = TwColors.purple400;
  static const Color purple500 = TwColors.purple500;
  static const Color purple600 = TwColors.purple600;
  static const Color purple700 = TwColors.purple700;
  static const Color purple800 = TwColors.purple800;
  static const Color purple900 = TwColors.purple900;
  static const Color purple950 = TwColors.purple950;

  // 紫红色系
  static const Color fuchsia50 = TwColors.fuchsia50;
  static const Color fuchsia100 = TwColors.fuchsia100;
  static const Color fuchsia200 = TwColors.fuchsia200;
  static const Color fuchsia300 = TwColors.fuchsia300;
  static const Color fuchsia400 = TwColors.fuchsia400;
  static const Color fuchsia500 = TwColors.fuchsia500;
  static const Color fuchsia600 = TwColors.fuchsia600;
  static const Color fuchsia700 = TwColors.fuchsia700;
  static const Color fuchsia800 = TwColors.fuchsia800;
  static const Color fuchsia900 = TwColors.fuchsia900;
  static const Color fuchsia950 = TwColors.fuchsia950;

  // 粉色系
  static const Color pink50 = TwColors.pink50;
  static const Color pink100 = TwColors.pink100;
  static const Color pink200 = TwColors.pink200;
  static const Color pink300 = TwColors.pink300;
  static const Color pink400 = TwColors.pink400;
  static const Color pink500 = TwColors.pink500;
  static const Color pink600 = TwColors.pink600;
  static const Color pink700 = TwColors.pink700;
  static const Color pink800 = TwColors.pink800;
  static const Color pink900 = TwColors.pink900;
  static const Color pink950 = TwColors.pink950;

  // 玫瑰色系
  static const Color rose50 = TwColors.rose50;
  static const Color rose100 = TwColors.rose100;
  static const Color rose200 = TwColors.rose200;
  static const Color rose300 = TwColors.rose300;
  static const Color rose400 = TwColors.rose400;
  static const Color rose500 = TwColors.rose500;
  static const Color rose600 = TwColors.rose600;
  static const Color rose700 = TwColors.rose700;
  static const Color rose800 = TwColors.rose800;
  static const Color rose900 = TwColors.rose900;
  static const Color rose950 = TwColors.rose950;

  // ===== 尺寸系统 =====
  
  // 字体大小
  static const double textXs = 12;
  static const double textSm = 14;
  static const double textBase = 16;
  static const double textLg = 18;
  static const double textXl = 20;
  static const double text2Xl = 24;
  static const double text3Xl = 30;
  static const double text4Xl = 36;
  static const double text5Xl = 48;
  static const double text6Xl = 60;
  static const double text7Xl = 72;
  static const double text8Xl = 96;
  static const double text9Xl = 128;

  // 图标大小
  static const double iconXs = 12;
  static const double iconSm = 14;
  static const double iconBase = 16;
  static const double iconLg = 18;
  static const double iconXl = 20;
  static const double icon2Xl = 24;
  static const double icon3Xl = 30;
  static const double icon4Xl = 36;
  static const double icon5Xl = 48;
  static const double icon6Xl = 60;

  // ===== 字体粗细 =====
  static const FontWeight fontThin = FontWeight.w100;
  static const FontWeight fontExtraLight = FontWeight.w200;
  static const FontWeight fontLight = FontWeight.w300;
  static const FontWeight fontNormal = FontWeight.w400;
  static const FontWeight fontMedium = FontWeight.w500;
  static const FontWeight fontSemiBold = FontWeight.w600;
  static const FontWeight fontBold = FontWeight.w700;
  static const FontWeight fontExtraBold = FontWeight.w800;
  static const FontWeight fontBlack = FontWeight.w900;
}
