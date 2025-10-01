import 'package:flutter/material.dart';

import 'colors.dart';

/// 基础颜色扩展类 - 所有颜色相关的扩展都应该继承自这个类
/// Base color extension class - All color-related extensions should inherit from this class
mixin BaseColorsExt on Widget {
  
  // ===== 特殊颜色 Special Colors =====
  
  /// inherit -->gt; color: inherit;
  Color get inheritColor => TwColors.current;
  
  /// current -->gt; color: currentColor;
  Color get currentColor => TwColors.current;
  
  /// transparent -->gt; color: transparent;
  Color get transparentColor => TwColors.transparent;
  
  /// black -->gt; color: rgb(0 0 0);
  Color get blackColor => TwColors.black;
  
  /// white -->gt; color: rgb(255 255 255);
  Color get whiteColor => TwColors.white;

  // ===== Slate 颜色系列 =====
  
  /// slate-50 -->gt; color: rgb(248 250 252);
  Color get slate50Color => TwColors.slate50;
  
  /// slate-100 -->gt; color: rgb(241 245 249);
  Color get slate100Color => TwColors.slate100;
  
  /// slate-200 -->gt; color: rgb(226 232 240);
  Color get slate200Color => TwColors.slate200;
  
  /// slate-300 -->gt; color: rgb(203 213 225);
  Color get slate300Color => TwColors.slate300;
  
  /// slate-400 -->gt; color: rgb(148 163 184);
  Color get slate400Color => TwColors.slate400;
  
  /// slate-500 -->gt; color: rgb(100 116 139);
  Color get slate500Color => TwColors.slate500;
  
  /// slate-600 -->gt; color: rgb(71 85 105);
  Color get slate600Color => TwColors.slate600;
  
  /// slate-700 -->gt; color: rgb(51 65 85);
  Color get slate700Color => TwColors.slate700;
  
  /// slate-800 -->gt; color: rgb(30 41 59);
  Color get slate800Color => TwColors.slate800;
  
  /// slate-900 -->gt; color: rgb(15 23 42);
  Color get slate900Color => TwColors.slate900;
  
  /// slate-950 -->gt; color: rgb(2 6 23);
  Color get slate950Color => TwColors.slate950;

  // ===== Gray 颜色系列 =====
  
  /// gray-50 -->gt; color: rgb(249 250 251);
  Color get gray50Color => TwColors.gray50;
  
  /// gray-100 -->gt; color: rgb(243 244 246);
  Color get gray100Color => TwColors.gray100;
  
  /// gray-200 -->gt; color: rgb(229 231 235);
  Color get gray200Color => TwColors.gray200;
  
  /// gray-300 -->gt; color: rgb(209 213 219);
  Color get gray300Color => TwColors.gray300;
  
  /// gray-400 -->gt; color: rgb(156 163 175);
  Color get gray400Color => TwColors.gray400;
  
  /// gray-500 -->gt; color: rgb(107 114 128);
  Color get gray500Color => TwColors.gray500;
  
  /// gray-600 -->gt; color: rgb(75 85 99);
  Color get gray600Color => TwColors.gray600;
  
  /// gray-700 -->gt; color: rgb(55 65 81);
  Color get gray700Color => TwColors.gray700;
  
  /// gray-800 -->gt; color: rgb(31 41 55);
  Color get gray800Color => TwColors.gray800;
  
  /// gray-900 -->gt; color: rgb(17 24 39);
  Color get gray900Color => TwColors.gray900;
  
  /// gray-950 -->gt; color: rgb(3 7 18);
  Color get gray950Color => TwColors.gray950;

  // ===== Zinc 颜色系列 =====
  
  /// zinc-50 -->gt; color: rgb(250 250 250);
  Color get zinc50Color => TwColors.zinc50;
  
  /// zinc-100 -->gt; color: rgb(244 244 245);
  Color get zinc100Color => TwColors.zinc100;
  
  /// zinc-200 -->gt; color: rgb(228 228 231);
  Color get zinc200Color => TwColors.zinc200;
  
  /// zinc-300 -->gt; color: rgb(212 212 216);
  Color get zinc300Color => TwColors.zinc300;
  
  /// zinc-400 -->gt; color: rgb(161 161 170);
  Color get zinc400Color => TwColors.zinc400;
  
  /// zinc-500 -->gt; color: rgb(113 113 122);
  Color get zinc500Color => TwColors.zinc500;
  
  /// zinc-600 -->gt; color: rgb(82 82 91);
  Color get zinc600Color => TwColors.zinc600;
  
  /// zinc-700 -->gt; color: rgb(63 63 70);
  Color get zinc700Color => TwColors.zinc700;
  
  /// zinc-800 -->gt; color: rgb(39 39 42);
  Color get zinc800Color => TwColors.zinc800;
  
  /// zinc-900 -->gt; color: rgb(24 24 27);
  Color get zinc900Color => TwColors.zinc900;
  
  /// zinc-950 -->gt; color: rgb(9 9 11);
  Color get zinc950Color => TwColors.zinc950;

  // ===== Neutral 颜色系列 =====
  
  /// neutral-50 -->gt; color: rgb(250 250 250);
  Color get neutral50Color => TwColors.neutral50;
  
  /// neutral-100 -->gt; color: rgb(245 245 245);
  Color get neutral100Color => TwColors.neutral100;
  
  /// neutral-200 -->gt; color: rgb(229 229 229);
  Color get neutral200Color => TwColors.neutral200;
  
  /// neutral-300 -->gt; color: rgb(212 212 212);
  Color get neutral300Color => TwColors.neutral300;
  
  /// neutral-400 -->gt; color: rgb(163 163 163);
  Color get neutral400Color => TwColors.neutral400;
  
  /// neutral-500 -->gt; color: rgb(115 115 115);
  Color get neutral500Color => TwColors.neutral500;
  
  /// neutral-600 -->gt; color: rgb(82 82 82);
  Color get neutral600Color => TwColors.neutral600;
  
  /// neutral-700 -->gt; color: rgb(64 64 64);
  Color get neutral700Color => TwColors.neutral700;
  
  /// neutral-800 -->gt; color: rgb(38 38 38);
  Color get neutral800Color => TwColors.neutral800;
  
  /// neutral-900 -->gt; color: rgb(23 23 23);
  Color get neutral900Color => TwColors.neutral900;
  
  /// neutral-950 -->gt; color: rgb(10 10 10);
  Color get neutral950Color => TwColors.neutral950;

  // ===== Stone 颜色系列 =====
  
  /// stone-50 -->gt; color: rgb(250 250 249);
  Color get stone50Color => TwColors.stone50;
  
  /// stone-100 -->gt; color: rgb(245 245 244);
  Color get stone100Color => TwColors.stone100;
  
  /// stone-200 -->gt; color: rgb(231 229 228);
  Color get stone200Color => TwColors.stone200;
  
  /// stone-300 -->gt; color: rgb(214 211 209);
  Color get stone300Color => TwColors.stone300;
  
  /// stone-400 -->gt; color: rgb(168 162 158);
  Color get stone400Color => TwColors.stone400;
  
  /// stone-500 -->gt; color: rgb(120 113 108);
  Color get stone500Color => TwColors.stone500;
  
  /// stone-600 -->gt; color: rgb(87 83 78);
  Color get stone600Color => TwColors.stone600;
  
  /// stone-700 -->gt; color: rgb(68 64 60);
  Color get stone700Color => TwColors.stone700;
  
  /// stone-800 -->gt; color: rgb(41 37 36);
  Color get stone800Color => TwColors.stone800;
  
  /// stone-900 -->gt; color: rgb(28 25 23);
  Color get stone900Color => TwColors.stone900;
  
  /// stone-950 -->gt; color: rgb(12 10 9);
  Color get stone950Color => TwColors.stone950;

  // ===== Red 颜色系列 =====
  
  /// red-50 -->gt; color: rgb(254 242 242);
  Color get red50Color => TwColors.red50;
  
  /// red-100 -->gt; color: rgb(254 226 226);
  Color get red100Color => TwColors.red100;
  
  /// red-200 -->gt; color: rgb(254 202 202);
  Color get red200Color => TwColors.red200;
  
  /// red-300 -->gt; color: rgb(252 165 165);
  Color get red300Color => TwColors.red300;
  
  /// red-400 -->gt; color: rgb(248 113 113);
  Color get red400Color => TwColors.red400;
  
  /// red-500 -->gt; color: rgb(239 68 68);
  Color get red500Color => TwColors.red500;
  
  /// red-600 -->gt; color: rgb(220 38 38);
  Color get red600Color => TwColors.red600;
  
  /// red-700 -->gt; color: rgb(185 28 28);
  Color get red700Color => TwColors.red700;
  
  /// red-800 -->gt; color: rgb(153 27 27);
  Color get red800Color => TwColors.red800;
  
  /// red-900 -->gt; color: rgb(127 29 29);
  Color get red900Color => TwColors.red900;
  
  /// red-950 -->gt; color: rgb(69 10 10);
  Color get red950Color => TwColors.red950;

  // ===== Orange 颜色系列 =====
  
  /// orange-50 -->gt; color: rgb(255 247 237);
  Color get orange50Color => TwColors.orange50;
  
  /// orange-100 -->gt; color: rgb(255 237 213);
  Color get orange100Color => TwColors.orange100;
  
  /// orange-200 -->gt; color: rgb(254 215 170);
  Color get orange200Color => TwColors.orange200;
  
  /// orange-300 -->gt; color: rgb(253 186 116);
  Color get orange300Color => TwColors.orange300;
  
  /// orange-400 -->gt; color: rgb(251 146 60);
  Color get orange400Color => TwColors.orange400;
  
  /// orange-500 -->gt; color: rgb(249 115 22);
  Color get orange500Color => TwColors.orange500;
  
  /// orange-600 -->gt; color: rgb(234 88 12);
  Color get orange600Color => TwColors.orange600;
  
  /// orange-700 -->gt; color: rgb(194 65 12);
  Color get orange700Color => TwColors.orange700;
  
  /// orange-800 -->gt; color: rgb(154 52 18);
  Color get orange800Color => TwColors.orange800;
  
  /// orange-900 -->gt; color: rgb(124 45 18);
  Color get orange900Color => TwColors.orange900;
  
  /// orange-950 -->gt; color: rgb(67 20 7);
  Color get orange950Color => TwColors.orange950;

  // ===== Amber 颜色系列 =====
  
  /// amber-50 -->gt; color: rgb(255 251 235);
  Color get amber50Color => TwColors.amber50;
  
  /// amber-100 -->gt; color: rgb(254 243 199);
  Color get amber100Color => TwColors.amber100;
  
  /// amber-200 -->gt; color: rgb(253 230 138);
  Color get amber200Color => TwColors.amber200;
  
  /// amber-300 -->gt; color: rgb(252 211 77);
  Color get amber300Color => TwColors.amber300;
  
  /// amber-400 -->gt; color: rgb(251 191 36);
  Color get amber400Color => TwColors.amber400;
  
  /// amber-500 -->gt; color: rgb(245 158 11);
  Color get amber500Color => TwColors.amber500;
  
  /// amber-600 -->gt; color: rgb(217 119 6);
  Color get amber600Color => TwColors.amber600;
  
  /// amber-700 -->gt; color: rgb(180 83 9);
  Color get amber700Color => TwColors.amber700;
  
  /// amber-800 -->gt; color: rgb(146 64 14);
  Color get amber800Color => TwColors.amber800;
  
  /// amber-900 -->gt; color: rgb(120 53 15);
  Color get amber900Color => TwColors.amber900;
  
  /// amber-950 -->gt; color: rgb(69 26 3);
  Color get amber950Color => TwColors.amber950;

  // ===== Yellow 颜色系列 =====
  
  /// yellow-50 -->gt; color: rgb(254 252 232);
  Color get yellow50Color => TwColors.yellow50;
  
  /// yellow-100 -->gt; color: rgb(254 249 195);
  Color get yellow100Color => TwColors.yellow100;
  
  /// yellow-200 -->gt; color: rgb(254 240 138);
  Color get yellow200Color => TwColors.yellow200;
  
  /// yellow-300 -->gt; color: rgb(253 224 71);
  Color get yellow300Color => TwColors.yellow300;
  
  /// yellow-400 -->gt; color: rgb(250 204 21);
  Color get yellow400Color => TwColors.yellow400;
  
  /// yellow-500 -->gt; color: rgb(234 179 8);
  Color get yellow500Color => TwColors.yellow500;
  
  /// yellow-600 -->gt; color: rgb(202 138 4);
  Color get yellow600Color => TwColors.yellow600;
  
  /// yellow-700 -->gt; color: rgb(161 98 7);
  Color get yellow700Color => TwColors.yellow700;
  
  /// yellow-800 -->gt; color: rgb(133 77 14);
  Color get yellow800Color => TwColors.yellow800;
  
  /// yellow-900 -->gt; color: rgb(113 63 18);
  Color get yellow900Color => TwColors.yellow900;
  
  /// yellow-950 -->gt; color: rgb(66 32 6);
  Color get yellow950Color => TwColors.yellow950;

  // ===== Lime 颜色系列 =====
  
  /// lime-50 -->gt; color: rgb(247 254 231);
  Color get lime50Color => TwColors.lime50;
  
  /// lime-100 -->gt; color: rgb(236 252 203);
  Color get lime100Color => TwColors.lime100;
  
  /// lime-200 -->gt; color: rgb(217 249 157);
  Color get lime200Color => TwColors.lime200;
  
  /// lime-300 -->gt; color: rgb(190 242 100);
  Color get lime300Color => TwColors.lime300;
  
  /// lime-400 -->gt; color: rgb(163 230 53);
  Color get lime400Color => TwColors.lime400;
  
  /// lime-500 -->gt; color: rgb(132 204 22);
  Color get lime500Color => TwColors.lime500;
  
  /// lime-600 -->gt; color: rgb(101 163 13);
  Color get lime600Color => TwColors.lime600;
  
  /// lime-700 -->gt; color: rgb(77 124 15);
  Color get lime700Color => TwColors.lime700;
  
  /// lime-800 -->gt; color: rgb(63 98 18);
  Color get lime800Color => TwColors.lime800;
  
  /// lime-900 -->gt; color: rgb(54 83 20);
  Color get lime900Color => TwColors.lime900;
  
  /// lime-950 -->gt; color: rgb(26 46 5);
  Color get lime950Color => TwColors.lime950;

  // ===== Green 颜色系列 =====
  
  /// green-50 -->gt; color: rgb(240 253 244);
  Color get green50Color => TwColors.green50;
  
  /// green-100 -->gt; color: rgb(220 252 231);
  Color get green100Color => TwColors.green100;
  
  /// green-200 -->gt; color: rgb(187 247 208);
  Color get green200Color => TwColors.green200;
  
  /// green-300 -->gt; color: rgb(134 239 172);
  Color get green300Color => TwColors.green300;
  
  /// green-400 -->gt; color: rgb(74 222 128);
  Color get green400Color => TwColors.green400;
  
  /// green-500 -->gt; color: rgb(34 197 94);
  Color get green500Color => TwColors.green500;
  
  /// green-600 -->gt; color: rgb(22 163 74);
  Color get green600Color => TwColors.green600;
  
  /// green-700 -->gt; color: rgb(21 128 61);
  Color get green700Color => TwColors.green700;
  
  /// green-800 -->gt; color: rgb(22 101 52);
  Color get green800Color => TwColors.green800;
  
  /// green-900 -->gt; color: rgb(20 83 45);
  Color get green900Color => TwColors.green900;
  
  /// green-950 -->gt; color: rgb(5 46 22);
  Color get green950Color => TwColors.green950;

  // ===== Emerald 颜色系列 =====
  
  /// emerald-50 -->gt; color: rgb(236 253 245);
  Color get emerald50Color => TwColors.emerald50;
  
  /// emerald-100 -->gt; color: rgb(209 250 229);
  Color get emerald100Color => TwColors.emerald100;
  
  /// emerald-200 -->gt; color: rgb(167 243 208);
  Color get emerald200Color => TwColors.emerald200;
  
  /// emerald-300 -->gt; color: rgb(110 231 183);
  Color get emerald300Color => TwColors.emerald300;
  
  /// emerald-400 -->gt; color: rgb(52 211 153);
  Color get emerald400Color => TwColors.emerald400;
  
  /// emerald-500 -->gt; color: rgb(16 185 129);
  Color get emerald500Color => TwColors.emerald500;
  
  /// emerald-600 -->gt; color: rgb(5 150 105);
  Color get emerald600Color => TwColors.emerald600;
  
  /// emerald-700 -->gt; color: rgb(4 120 87);
  Color get emerald700Color => TwColors.emerald700;
  
  /// emerald-800 -->gt; color: rgb(6 95 70);
  Color get emerald800Color => TwColors.emerald800;
  
  /// emerald-900 -->gt; color: rgb(6 78 59);
  Color get emerald900Color => TwColors.emerald900;
  
  /// emerald-950 -->gt; color: rgb(2 44 34);
  Color get emerald950Color => TwColors.emerald950;

  // ===== Teal 颜色系列 =====
  
  /// teal-50 -->gt; color: rgb(240 253 250);
  Color get teal50Color => TwColors.teal50;
  
  /// teal-100 -->gt; color: rgb(204 251 241);
  Color get teal100Color => TwColors.teal100;
  
  /// teal-200 -->gt; color: rgb(153 246 228);
  Color get teal200Color => TwColors.teal200;
  
  /// teal-300 -->gt; color: rgb(94 234 212);
  Color get teal300Color => TwColors.teal300;
  
  /// teal-400 -->gt; color: rgb(45 212 191);
  Color get teal400Color => TwColors.teal400;
  
  /// teal-500 -->gt; color: rgb(20 184 166);
  Color get teal500Color => TwColors.teal500;
  
  /// teal-600 -->gt; color: rgb(13 148 136);
  Color get teal600Color => TwColors.teal600;
  
  /// teal-700 -->gt; color: rgb(15 118 110);
  Color get teal700Color => TwColors.teal700;
  
  /// teal-800 -->gt; color: rgb(17 94 89);
  Color get teal800Color => TwColors.teal800;
  
  /// teal-900 -->gt; color: rgb(19 78 74);
  Color get teal900Color => TwColors.teal900;
  
  /// teal-950 -->gt; color: rgb(4 47 46);
  Color get teal950Color => TwColors.teal950;

  // ===== Cyan 颜色系列 =====
  
  /// cyan-50 -->gt; color: rgb(236 254 255);
  Color get cyan50Color => TwColors.cyan50;
  
  /// cyan-100 -->gt; color: rgb(207 250 254);
  Color get cyan100Color => TwColors.cyan100;
  
  /// cyan-200 -->gt; color: rgb(165 243 252);
  Color get cyan200Color => TwColors.cyan200;
  
  /// cyan-300 -->gt; color: rgb(103 232 249);
  Color get cyan300Color => TwColors.cyan300;
  
  /// cyan-400 -->gt; color: rgb(34 211 238);
  Color get cyan400Color => TwColors.cyan400;
  
  /// cyan-500 -->gt; color: rgb(6 182 212);
  Color get cyan500Color => TwColors.cyan500;
  
  /// cyan-600 -->gt; color: rgb(8 145 178);
  Color get cyan600Color => TwColors.cyan600;
  
  /// cyan-700 -->gt; color: rgb(14 116 144);
  Color get cyan700Color => TwColors.cyan700;
  
  /// cyan-800 -->gt; color: rgb(21 94 117);
  Color get cyan800Color => TwColors.cyan800;
  
  /// cyan-900 -->gt; color: rgb(22 78 99);
  Color get cyan900Color => TwColors.cyan900;
  
  /// cyan-950 -->gt; color: rgb(8 51 68);
  Color get cyan950Color => TwColors.cyan950;

  // ===== Sky 颜色系列 =====
  
  /// sky-50 -->gt; color: rgb(240 249 255);
  Color get sky50Color => TwColors.sky50;
  
  /// sky-100 -->gt; color: rgb(224 242 254);
  Color get sky100Color => TwColors.sky100;
  
  /// sky-200 -->gt; color: rgb(186 230 253);
  Color get sky200Color => TwColors.sky200;
  
  /// sky-300 -->gt; color: rgb(125 211 252);
  Color get sky300Color => TwColors.sky300;
  
  /// sky-400 -->gt; color: rgb(56 189 248);
  Color get sky400Color => TwColors.sky400;
  
  /// sky-500 -->gt; color: rgb(14 165 233);
  Color get sky500Color => TwColors.sky500;
  
  /// sky-600 -->gt; color: rgb(2 132 199);
  Color get sky600Color => TwColors.sky600;
  
  /// sky-700 -->gt; color: rgb(3 105 161);
  Color get sky700Color => TwColors.sky700;
  
  /// sky-800 -->gt; color: rgb(7 89 133);
  Color get sky800Color => TwColors.sky800;
  
  /// sky-900 -->gt; color: rgb(12 74 110);
  Color get sky900Color => TwColors.sky900;
  
  /// sky-950 -->gt; color: rgb(8 47 73);
  Color get sky950Color => TwColors.sky950;

  // ===== Blue 颜色系列 =====
  
  /// blue-50 -->gt; color: rgb(239 246 255);
  Color get blue50Color => TwColors.blue50;
  
  /// blue-100 -->gt; color: rgb(219 234 254);
  Color get blue100Color => TwColors.blue100;
  
  /// blue-200 -->gt; color: rgb(191 219 254);
  Color get blue200Color => TwColors.blue200;
  
  /// blue-300 -->gt; color: rgb(147 197 253);
  Color get blue300Color => TwColors.blue300;
  
  /// blue-400 -->gt; color: rgb(96 165 250);
  Color get blue400Color => TwColors.blue400;
  
  /// blue-500 -->gt; color: rgb(59 130 246);
  Color get blue500Color => TwColors.blue500;
  
  /// blue-600 -->gt; color: rgb(37 99 235);
  Color get blue600Color => TwColors.blue600;
  
  /// blue-700 -->gt; color: rgb(29 78 216);
  Color get blue700Color => TwColors.blue700;
  
  /// blue-800 -->gt; color: rgb(30 64 175);
  Color get blue800Color => TwColors.blue800;
  
  /// blue-900 -->gt; color: rgb(30 58 138);
  Color get blue900Color => TwColors.blue900;
  
  /// blue-950 -->gt; color: rgb(23 37 84);
  Color get blue950Color => TwColors.blue950;

  // ===== Indigo 颜色系列 =====
  
  /// indigo-50 -->gt; color: rgb(238 242 255);
  Color get indigo50Color => TwColors.indigo50;
  
  /// indigo-100 -->gt; color: rgb(224 231 255);
  Color get indigo100Color => TwColors.indigo100;
  
  /// indigo-200 -->gt; color: rgb(199 210 254);
  Color get indigo200Color => TwColors.indigo200;
  
  /// indigo-300 -->gt; color: rgb(165 180 252);
  Color get indigo300Color => TwColors.indigo300;
  
  /// indigo-400 -->gt; color: rgb(129 140 248);
  Color get indigo400Color => TwColors.indigo400;
  
  /// indigo-500 -->gt; color: rgb(99 102 241);
  Color get indigo500Color => TwColors.indigo500;
  
  /// indigo-600 -->gt; color: rgb(79 70 229);
  Color get indigo600Color => TwColors.indigo600;
  
  /// indigo-700 -->gt; color: rgb(67 56 202);
  Color get indigo700Color => TwColors.indigo700;
  
  /// indigo-800 -->gt; color: rgb(55 48 163);
  Color get indigo800Color => TwColors.indigo800;
  
  /// indigo-900 -->gt; color: rgb(49 46 129);
  Color get indigo900Color => TwColors.indigo900;
  
  /// indigo-950 -->gt; color: rgb(30 27 75);
  Color get indigo950Color => TwColors.indigo950;

  // ===== Violet 颜色系列 =====
  
  /// violet-50 -->gt; color: rgb(245 243 255);
  Color get violet50Color => TwColors.violet50;
  
  /// violet-100 -->gt; color: rgb(237 233 254);
  Color get violet100Color => TwColors.violet100;
  
  /// violet-200 -->gt; color: rgb(221 214 254);
  Color get violet200Color => TwColors.violet200;
  
  /// violet-300 -->gt; color: rgb(196 181 253);
  Color get violet300Color => TwColors.violet300;
  
  /// violet-400 -->gt; color: rgb(167 139 250);
  Color get violet400Color => TwColors.violet400;
  
  /// violet-500 -->gt; color: rgb(139 92 246);
  Color get violet500Color => TwColors.violet500;
  
  /// violet-600 -->gt; color: rgb(124 58 237);
  Color get violet600Color => TwColors.violet600;
  
  /// violet-700 -->gt; color: rgb(109 40 217);
  Color get violet700Color => TwColors.violet700;
  
  /// violet-800 -->gt; color: rgb(91 33 182);
  Color get violet800Color => TwColors.violet800;
  
  /// violet-900 -->gt; color: rgb(76 29 149);
  Color get violet900Color => TwColors.violet900;
  
  /// violet-950 -->gt; color: rgb(46 16 101);
  Color get violet950Color => TwColors.violet950;

  // ===== Purple 颜色系列 =====
  
  /// purple-50 -->gt; color: rgb(250 245 255);
  Color get purple50Color => TwColors.purple50;
  
  /// purple-100 -->gt; color: rgb(243 232 255);
  Color get purple100Color => TwColors.purple100;
  
  /// purple-200 -->gt; color: rgb(233 213 255);
  Color get purple200Color => TwColors.purple200;
  
  /// purple-300 -->gt; color: rgb(216 180 254);
  Color get purple300Color => TwColors.purple300;
  
  /// purple-400 -->gt; color: rgb(196 145 253);
  Color get purple400Color => TwColors.purple400;
  
  /// purple-500 -->gt; color: rgb(168 85 247);
  Color get purple500Color => TwColors.purple500;
  
  /// purple-600 -->gt; color: rgb(147 51 234);
  Color get purple600Color => TwColors.purple600;
  
  /// purple-700 -->gt; color: rgb(126 34 206);
  Color get purple700Color => TwColors.purple700;
  
  /// purple-800 -->gt; color: rgb(107 33 168);
  Color get purple800Color => TwColors.purple800;
  
  /// purple-900 -->gt; color: rgb(88 28 135);
  Color get purple900Color => TwColors.purple900;
  
  /// purple-950 -->gt; color: rgb(59 7 100);
  Color get purple950Color => TwColors.purple950;

  // ===== Fuchsia 颜色系列 =====
  
  /// fuchsia-50 -->gt; color: rgb(253 244 255);
  Color get fuchsia50Color => TwColors.fuchsia50;
  
  /// fuchsia-100 -->gt; color: rgb(250 232 255);
  Color get fuchsia100Color => TwColors.fuchsia100;
  
  /// fuchsia-200 -->gt; color: rgb(245 208 254);
  Color get fuchsia200Color => TwColors.fuchsia200;
  
  /// fuchsia-300 -->gt; color: rgb(240 171 252);
  Color get fuchsia300Color => TwColors.fuchsia300;
  
  /// fuchsia-400 -->gt; color: rgb(232 121 249);
  Color get fuchsia400Color => TwColors.fuchsia400;
  
  /// fuchsia-500 -->gt; color: rgb(217 70 239);
  Color get fuchsia500Color => TwColors.fuchsia500;
  
  /// fuchsia-600 -->gt; color: rgb(192 38 211);
  Color get fuchsia600Color => TwColors.fuchsia600;
  
  /// fuchsia-700 -->gt; color: rgb(162 28 175);
  Color get fuchsia700Color => TwColors.fuchsia700;
  
  /// fuchsia-800 -->gt; color: rgb(134 25 143);
  Color get fuchsia800Color => TwColors.fuchsia800;
  
  /// fuchsia-900 -->gt; color: rgb(112 26 117);
  Color get fuchsia900Color => TwColors.fuchsia900;
  
  /// fuchsia-950 -->gt; color: rgb(74 4 78);
  Color get fuchsia950Color => TwColors.fuchsia950;

  // ===== Pink 颜色系列 =====
  
  /// pink-50 -->gt; color: rgb(253 242 248);
  Color get pink50Color => TwColors.pink50;
  
  /// pink-100 -->gt; color: rgb(252 231 243);
  Color get pink100Color => TwColors.pink100;
  
  /// pink-200 -->gt; color: rgb(251 207 232);
  Color get pink200Color => TwColors.pink200;
  
  /// pink-300 -->gt; color: rgb(249 168 212);
  Color get pink300Color => TwColors.pink300;
  
  /// pink-400 -->gt; color: rgb(244 114 182);
  Color get pink400Color => TwColors.pink400;
  
  /// pink-500 -->gt; color: rgb(236 72 153);
  Color get pink500Color => TwColors.pink500;
  
  /// pink-600 -->gt; color: rgb(219 39 119);
  Color get pink600Color => TwColors.pink600;
  
  /// pink-700 -->gt; color: rgb(190 24 93);
  Color get pink700Color => TwColors.pink700;
  
  /// pink-800 -->gt; color: rgb(157 23 77);
  Color get pink800Color => TwColors.pink800;
  
  /// pink-900 -->gt; color: rgb(131 24 67);
  Color get pink900Color => TwColors.pink900;
  
  /// pink-950 -->gt; color: rgb(80 7 36);
  Color get pink950Color => TwColors.pink950;

  // ===== Rose 颜色系列 =====
  
  /// rose-50 -->gt; color: rgb(255 241 242);
  Color get rose50Color => TwColors.rose50;
  
  /// rose-100 -->gt; color: rgb(255 228 230);
  Color get rose100Color => TwColors.rose100;
  
  /// rose-200 -->gt; color: rgb(254 205 211);
  Color get rose200Color => TwColors.rose200;
  
  /// rose-300 -->gt; color: rgb(253 164 175);
  Color get rose300Color => TwColors.rose300;
  
  /// rose-400 -->gt; color: rgb(251 113 133);
  Color get rose400Color => TwColors.rose400;
  
  /// rose-500 -->gt; color: rgb(244 63 94);
  Color get rose500Color => TwColors.rose500;
  
  /// rose-600 -->gt; color: rgb(225 29 72);
  Color get rose600Color => TwColors.rose600;
  
  /// rose-700 -->gt; color: rgb(190 18 60);
  Color get rose700Color => TwColors.rose700;
  
  /// rose-800 -->gt; color: rgb(159 18 57);
  Color get rose800Color => TwColors.rose800;
  
  /// rose-900 -->gt; color: rgb(136 19 55);
  Color get rose900Color => TwColors.rose900;
  
  /// rose-950 -->gt; color: rgb(76 5 25);
  Color get rose950Color => TwColors.rose950;

  // ===== 动态颜色获取方法 Dynamic Color Access Methods =====
  
  /// 根据颜色名称和变体获取颜色
  /// Get color by name and variant
  Color? getColor(String colorName, int variant) {
    return TwColors.getColor(colorName, variant);
  }
  
  /// 获取默认颜色变体 (500)
  /// Get default color variant (500) by name
  Color? getDefaultColor(String colorName) {
    return TwColors.getDefaultColor(colorName);
  }
  
  /// 检查颜色名称是否存在
  /// Check if color name exists
  bool hasColor(String colorName) {
    return TwColors.hasColor(colorName);
  }
  
  /// 获取所有可用的颜色名称
  /// Get all available color names
  List<String> get colorNames => TwColors.colorNames;
  
  /// 获取所有可用的颜色变体
  /// Get all available color variants
  List<int> get colorVariants => TwColors.colorVariants;

  // ===== 主题颜色切换支持 Theme Color Switching Support =====
  
  /// 主题颜色映射 - 可以通过覆盖这个getter来实现主题切换
  /// Theme color mapping - Override this getter to implement theme switching
  Map<String, Color> get themeColorOverrides => {};
  
  /// 获取主题颜色，如果有覆盖则返回覆盖的颜色，否则返回默认颜色
  /// Get theme color, return override color if available, otherwise return default color
  Color getThemeColor(String colorName, int variant) {
    final overrideKey = '$colorName-$variant';
    if (themeColorOverrides.containsKey(overrideKey)) {
      return themeColorOverrides[overrideKey]!;
    }
    return getColor(colorName, variant) ?? TwColors.gray500;
  }
  
  /// 应用颜色自定义函数 - 子类可以覆盖这个方法来实现颜色转换
  /// Apply color customization function - Subclasses can override this method to implement color transformation
  Color applyColorCustomization(Color color) {
    return color;
  }
}
