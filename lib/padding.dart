import 'package:flutter/material.dart';

/// Tailwind CSS Padding utilities for Flutter
/// Utilities for controlling an element's padding.
extension PaddingExt on Widget {
  
  // === p-<number> utilities (all sides padding) ===
  /// p-0 -> padding: 0;
  Widget p0() => Padding(padding: const EdgeInsets.all(0), child: this);
  
  /// p-px -> padding: 1px;
  Widget pPx() => Padding(padding: const EdgeInsets.all(1), child: this);
  
  /// p-0.5 -> padding: 2px;
  Widget p0_5() => Padding(padding: const EdgeInsets.all(2), child: this);
  
  /// p-1 -> padding: 4px;
  Widget p1() => Padding(padding: const EdgeInsets.all(4), child: this);
  
  /// p-1.5 -> padding: 6px;
  Widget p1_5() => Padding(padding: const EdgeInsets.all(6), child: this);
  
  /// p-2 -> padding: 8px;
  Widget p2() => Padding(padding: const EdgeInsets.all(8), child: this);
  
  /// p-2.5 -> padding: 10px;
  Widget p2_5() => Padding(padding: const EdgeInsets.all(10), child: this);
  
  /// p-3 -> padding: 12px;
  Widget p3() => Padding(padding: const EdgeInsets.all(12), child: this);
  
  /// p-3.5 -> padding: 14px;
  Widget p3_5() => Padding(padding: const EdgeInsets.all(14), child: this);
  
  /// p-4 -> padding: 16px;
  Widget p4() => Padding(padding: const EdgeInsets.all(16), child: this);
  
  /// p-5 -> padding: 20px;
  Widget p5() => Padding(padding: const EdgeInsets.all(20), child: this);
  
  /// p-6 -> padding: 24px;
  Widget p6() => Padding(padding: const EdgeInsets.all(24), child: this);
  
  /// p-7 -> padding: 28px;
  Widget p7() => Padding(padding: const EdgeInsets.all(28), child: this);
  
  /// p-8 -> padding: 32px;
  Widget p8() => Padding(padding: const EdgeInsets.all(32), child: this);
  
  /// p-9 -> padding: 36px;
  Widget p9() => Padding(padding: const EdgeInsets.all(36), child: this);
  
  /// p-10 -> padding: 40px;
  Widget p10() => Padding(padding: const EdgeInsets.all(40), child: this);
  
  /// p-11 -> padding: 44px;
  Widget p11() => Padding(padding: const EdgeInsets.all(44), child: this);
  
  /// p-12 -> padding: 48px;
  Widget p12() => Padding(padding: const EdgeInsets.all(48), child: this);
  
  /// p-14 -> padding: 56px;
  Widget p14() => Padding(padding: const EdgeInsets.all(56), child: this);
  
  /// p-16 -> padding: 64px;
  Widget p16() => Padding(padding: const EdgeInsets.all(64), child: this);
  
  /// p-20 -> padding: 80px;
  Widget p20() => Padding(padding: const EdgeInsets.all(80), child: this);
  
  /// p-24 -> padding: 96px;
  Widget p24() => Padding(padding: const EdgeInsets.all(96), child: this);
  
  /// p-28 -> padding: 112px;
  Widget p28() => Padding(padding: const EdgeInsets.all(112), child: this);
  
  /// p-32 -> padding: 128px;
  Widget p32() => Padding(padding: const EdgeInsets.all(128), child: this);
  
  /// p-36 -> padding: 144px;
  Widget p36() => Padding(padding: const EdgeInsets.all(144), child: this);
  
  /// p-40 -> padding: 160px;
  Widget p40() => Padding(padding: const EdgeInsets.all(160), child: this);
  
  /// p-44 -> padding: 176px;
  Widget p44() => Padding(padding: const EdgeInsets.all(176), child: this);
  
  /// p-48 -> padding: 192px;
  Widget p48() => Padding(padding: const EdgeInsets.all(192), child: this);
  
  /// p-52 -> padding: 208px;
  Widget p52() => Padding(padding: const EdgeInsets.all(208), child: this);
  
  /// p-56 -> padding: 224px;
  Widget p56() => Padding(padding: const EdgeInsets.all(224), child: this);
  
  /// p-60 -> padding: 240px;
  Widget p60() => Padding(padding: const EdgeInsets.all(240), child: this);
  
  /// p-64 -> padding: 256px;
  Widget p64() => Padding(padding: const EdgeInsets.all(256), child: this);
  
  /// p-72 -> padding: 288px;
  Widget p72() => Padding(padding: const EdgeInsets.all(288), child: this);
  
  /// p-80 -> padding: 320px;
  Widget p80() => Padding(padding: const EdgeInsets.all(320), child: this);
  
  /// p-96 -> padding: 384px;
  Widget p96() => Padding(padding: const EdgeInsets.all(384), child: this);

  // === px-<number> utilities (horizontal padding) ===
  /// px-0 -> padding-inline: 0;
  Widget px0() => Padding(padding: const EdgeInsets.symmetric(horizontal: 0), child: this);
  
  /// px-px -> padding-inline: 1px;
  Widget pxPx() => Padding(padding: const EdgeInsets.symmetric(horizontal: 1), child: this);
  
  /// px-0.5 -> padding-inline: 2px;
  Widget px0_5() => Padding(padding: const EdgeInsets.symmetric(horizontal: 2), child: this);
  
  /// px-1 -> padding-inline: 4px;
  Widget px1() => Padding(padding: const EdgeInsets.symmetric(horizontal: 4), child: this);
  
  /// px-1.5 -> padding-inline: 6px;
  Widget px1_5() => Padding(padding: const EdgeInsets.symmetric(horizontal: 6), child: this);
  
  /// px-2 -> padding-inline: 8px;
  Widget px2() => Padding(padding: const EdgeInsets.symmetric(horizontal: 8), child: this);
  
  /// px-2.5 -> padding-inline: 10px;
  Widget px2_5() => Padding(padding: const EdgeInsets.symmetric(horizontal: 10), child: this);
  
  /// px-3 -> padding-inline: 12px;
  Widget px3() => Padding(padding: const EdgeInsets.symmetric(horizontal: 12), child: this);
  
  /// px-3.5 -> padding-inline: 14px;
  Widget px3_5() => Padding(padding: const EdgeInsets.symmetric(horizontal: 14), child: this);
  
  /// px-4 -> padding-inline: 16px;
  Widget px4() => Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: this);
  
  /// px-5 -> padding-inline: 20px;
  Widget px5() => Padding(padding: const EdgeInsets.symmetric(horizontal: 20), child: this);
  
  /// px-6 -> padding-inline: 24px;
  Widget px6() => _applyPadding(horizontal: 24);
  
  /// px-7 -> padding-inline: 28px;
  Widget px7() => Padding(padding: const EdgeInsets.symmetric(horizontal: 28), child: this);
  
  /// px-8 -> padding-inline: 32px;
  Widget px8() => Padding(padding: const EdgeInsets.symmetric(horizontal: 32), child: this);
  
  /// px-9 -> padding-inline: 36px;
  Widget px9() => Padding(padding: const EdgeInsets.symmetric(horizontal: 36), child: this);
  
  /// px-10 -> padding-inline: 40px;
  Widget px10() => Padding(padding: const EdgeInsets.symmetric(horizontal: 40), child: this);
  
  /// px-11 -> padding-inline: 44px;
  Widget px11() => Padding(padding: const EdgeInsets.symmetric(horizontal: 44), child: this);
  
  /// px-12 -> padding-inline: 48px;
  Widget px12() => Padding(padding: const EdgeInsets.symmetric(horizontal: 48), child: this);
  
  /// px-14 -> padding-inline: 56px;
  Widget px14() => Padding(padding: const EdgeInsets.symmetric(horizontal: 56), child: this);
  
  /// px-16 -> padding-inline: 64px;
  Widget px16() => Padding(padding: const EdgeInsets.symmetric(horizontal: 64), child: this);
  
  /// px-20 -> padding-inline: 80px;
  Widget px20() => Padding(padding: const EdgeInsets.symmetric(horizontal: 80), child: this);
  
  /// px-24 -> padding-inline: 96px;
  Widget px24() => Padding(padding: const EdgeInsets.symmetric(horizontal: 96), child: this);
  
  /// px-28 -> padding-inline: 112px;
  Widget px28() => Padding(padding: const EdgeInsets.symmetric(horizontal: 112), child: this);
  
  /// px-32 -> padding-inline: 128px;
  Widget px32() => Padding(padding: const EdgeInsets.symmetric(horizontal: 128), child: this);
  
  /// px-36 -> padding-inline: 144px;
  Widget px36() => Padding(padding: const EdgeInsets.symmetric(horizontal: 144), child: this);
  
  /// px-40 -> padding-inline: 160px;
  Widget px40() => Padding(padding: const EdgeInsets.symmetric(horizontal: 160), child: this);
  
  /// px-44 -> padding-inline: 176px;
  Widget px44() => Padding(padding: const EdgeInsets.symmetric(horizontal: 176), child: this);
  
  /// px-48 -> padding-inline: 192px;
  Widget px48() => Padding(padding: const EdgeInsets.symmetric(horizontal: 192), child: this);
  
  /// px-52 -> padding-inline: 208px;
  Widget px52() => Padding(padding: const EdgeInsets.symmetric(horizontal: 208), child: this);
  
  /// px-56 -> padding-inline: 224px;
  Widget px56() => Padding(padding: const EdgeInsets.symmetric(horizontal: 224), child: this);
  
  /// px-60 -> padding-inline: 240px;
  Widget px60() => Padding(padding: const EdgeInsets.symmetric(horizontal: 240), child: this);
  
  /// px-64 -> padding-inline: 256px;
  Widget px64() => Padding(padding: const EdgeInsets.symmetric(horizontal: 256), child: this);
  
  /// px-72 -> padding-inline: 288px;
  Widget px72() => Padding(padding: const EdgeInsets.symmetric(horizontal: 288), child: this);
  
  /// px-80 -> padding-inline: 320px;
  Widget px80() => Padding(padding: const EdgeInsets.symmetric(horizontal: 320), child: this);
  
  /// px-96 -> padding-inline: 384px;
  Widget px96() => Padding(padding: const EdgeInsets.symmetric(horizontal: 384), child: this);

  // === py-<number> utilities (vertical padding) ===
  /// py-0 -> padding-block: 0;
  Widget py0() => Padding(padding: const EdgeInsets.symmetric(vertical: 0), child: this);
  
  /// py-px -> padding-block: 1px;
  Widget pyPx() => Padding(padding: const EdgeInsets.symmetric(vertical: 1), child: this);
  
  /// py-0.5 -> padding-block: 2px;
  Widget py0_5() => Padding(padding: const EdgeInsets.symmetric(vertical: 2), child: this);
  
  /// py-1 -> padding-block: 4px;
  Widget py1() => Padding(padding: const EdgeInsets.symmetric(vertical: 4), child: this);
  
  /// py-1.5 -> padding-block: 6px;
  Widget py1_5() => Padding(padding: const EdgeInsets.symmetric(vertical: 6), child: this);
  
  /// py-2 -> padding-block: 8px;
  Widget py2() => Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: this);
  
  /// py-2.5 -> padding-block: 10px;
  Widget py2_5() => Padding(padding: const EdgeInsets.symmetric(vertical: 10), child: this);
  
  /// py-3 -> padding-block: 12px;
  Widget py3() => _applyPadding(vertical: 12);
  
  /// py-3.5 -> padding-block: 14px;
  Widget py3_5() => Padding(padding: const EdgeInsets.symmetric(vertical: 14), child: this);
  
  /// py-4 -> padding-block: 16px;
  Widget py4() => Padding(padding: const EdgeInsets.symmetric(vertical: 16), child: this);
  
  /// py-5 -> padding-block: 20px;
  Widget py5() => Padding(padding: const EdgeInsets.symmetric(vertical: 20), child: this);
  
  /// py-6 -> padding-block: 24px;
  Widget py6() => Padding(padding: const EdgeInsets.symmetric(vertical: 24), child: this);
  
  /// py-7 -> padding-block: 28px;
  Widget py7() => Padding(padding: const EdgeInsets.symmetric(vertical: 28), child: this);
  
  /// py-8 -> padding-block: 32px;
  Widget py8() => Padding(padding: const EdgeInsets.symmetric(vertical: 32), child: this);
  
  /// py-9 -> padding-block: 36px;
  Widget py9() => Padding(padding: const EdgeInsets.symmetric(vertical: 36), child: this);
  
  /// py-10 -> padding-block: 40px;
  Widget py10() => Padding(padding: const EdgeInsets.symmetric(vertical: 40), child: this);
  
  /// py-11 -> padding-block: 44px;
  Widget py11() => Padding(padding: const EdgeInsets.symmetric(vertical: 44), child: this);
  
  /// py-12 -> padding-block: 48px;
  Widget py12() => Padding(padding: const EdgeInsets.symmetric(vertical: 48), child: this);
  
  /// py-14 -> padding-block: 56px;
  Widget py14() => Padding(padding: const EdgeInsets.symmetric(vertical: 56), child: this);
  
  /// py-16 -> padding-block: 64px;
  Widget py16() => Padding(padding: const EdgeInsets.symmetric(vertical: 64), child: this);
  
  /// py-20 -> padding-block: 80px;
  Widget py20() => Padding(padding: const EdgeInsets.symmetric(vertical: 80), child: this);
  
  /// py-24 -> padding-block: 96px;
  Widget py24() => Padding(padding: const EdgeInsets.symmetric(vertical: 96), child: this);
  
  /// py-28 -> padding-block: 112px;
  Widget py28() => Padding(padding: const EdgeInsets.symmetric(vertical: 112), child: this);
  
  /// py-32 -> padding-block: 128px;
  Widget py32() => Padding(padding: const EdgeInsets.symmetric(vertical: 128), child: this);
  
  /// py-36 -> padding-block: 144px;
  Widget py36() => Padding(padding: const EdgeInsets.symmetric(vertical: 144), child: this);
  
  /// py-40 -> padding-block: 160px;
  Widget py40() => Padding(padding: const EdgeInsets.symmetric(vertical: 160), child: this);
  
  /// py-44 -> padding-block: 176px;
  Widget py44() => Padding(padding: const EdgeInsets.symmetric(vertical: 176), child: this);
  
  /// py-48 -> padding-block: 192px;
  Widget py48() => Padding(padding: const EdgeInsets.symmetric(vertical: 192), child: this);
  
  /// py-52 -> padding-block: 208px;
  Widget py52() => Padding(padding: const EdgeInsets.symmetric(vertical: 208), child: this);
  
  /// py-56 -> padding-block: 224px;
  Widget py56() => Padding(padding: const EdgeInsets.symmetric(vertical: 224), child: this);
  
  /// py-60 -> padding-block: 240px;
  Widget py60() => Padding(padding: const EdgeInsets.symmetric(vertical: 240), child: this);
  
  /// py-64 -> padding-block: 256px;
  Widget py64() => Padding(padding: const EdgeInsets.symmetric(vertical: 256), child: this);
  
  /// py-72 -> padding-block: 288px;
  Widget py72() => Padding(padding: const EdgeInsets.symmetric(vertical: 288), child: this);
  
  /// py-80 -> padding-block: 320px;
  Widget py80() => Padding(padding: const EdgeInsets.symmetric(vertical: 320), child: this);
  
  /// py-96 -> padding-block: 384px;
  Widget py96() => Padding(padding: const EdgeInsets.symmetric(vertical: 384), child: this);

  // === pt-<number> utilities (top padding) ===
  /// pt-0 -> padding-top: 0;
  Widget pt0() => Padding(padding: const EdgeInsets.only(top: 0), child: this);
  
  /// pt-px -> padding-top: 1px;
  Widget ptPx() => Padding(padding: const EdgeInsets.only(top: 1), child: this);
  
  /// pt-0.5 -> padding-top: 2px;
  Widget pt0_5() => Padding(padding: const EdgeInsets.only(top: 2), child: this);
  
  /// pt-1 -> padding-top: 4px;
  Widget pt1() => Padding(padding: const EdgeInsets.only(top: 4), child: this);
  
  /// pt-1.5 -> padding-top: 6px;
  Widget pt1_5() => Padding(padding: const EdgeInsets.only(top: 6), child: this);
  
  /// pt-2 -> padding-top: 8px;
  Widget pt2() => Padding(padding: const EdgeInsets.only(top: 8), child: this);
  
  /// pt-2.5 -> padding-top: 10px;
  Widget pt2_5() => Padding(padding: const EdgeInsets.only(top: 10), child: this);
  
  /// pt-3 -> padding-top: 12px;
  Widget pt3() => Padding(padding: const EdgeInsets.only(top: 12), child: this);
  
  /// pt-3.5 -> padding-top: 14px;
  Widget pt3_5() => Padding(padding: const EdgeInsets.only(top: 14), child: this);
  
  /// pt-4 -> padding-top: 16px;
  Widget pt4() => Padding(padding: const EdgeInsets.only(top: 16), child: this);
  
  /// pt-5 -> padding-top: 20px;
  Widget pt5() => Padding(padding: const EdgeInsets.only(top: 20), child: this);
  
  /// pt-6 -> padding-top: 24px;
  Widget pt6() => Padding(padding: const EdgeInsets.only(top: 24), child: this);
  
  /// pt-7 -> padding-top: 28px;
  Widget pt7() => Padding(padding: const EdgeInsets.only(top: 28), child: this);
  
  /// pt-8 -> padding-top: 32px;
  Widget pt8() => Padding(padding: const EdgeInsets.only(top: 32), child: this);
  
  /// pt-9 -> padding-top: 36px;
  Widget pt9() => Padding(padding: const EdgeInsets.only(top: 36), child: this);
  
  /// pt-10 -> padding-top: 40px;
  Widget pt10() => Padding(padding: const EdgeInsets.only(top: 40), child: this);
  
  /// pt-11 -> padding-top: 44px;
  Widget pt11() => Padding(padding: const EdgeInsets.only(top: 44), child: this);
  
  /// pt-12 -> padding-top: 48px;
  Widget pt12() => Padding(padding: const EdgeInsets.only(top: 48), child: this);
  
  /// pt-14 -> padding-top: 56px;
  Widget pt14() => Padding(padding: const EdgeInsets.only(top: 56), child: this);
  
  /// pt-16 -> padding-top: 64px;
  Widget pt16() => Padding(padding: const EdgeInsets.only(top: 64), child: this);
  
  /// pt-20 -> padding-top: 80px;
  Widget pt20() => Padding(padding: const EdgeInsets.only(top: 80), child: this);
  
  /// pt-24 -> padding-top: 96px;
  Widget pt24() => Padding(padding: const EdgeInsets.only(top: 96), child: this);
  
  /// pt-28 -> padding-top: 112px;
  Widget pt28() => Padding(padding: const EdgeInsets.only(top: 112), child: this);
  
  /// pt-32 -> padding-top: 128px;
  Widget pt32() => Padding(padding: const EdgeInsets.only(top: 128), child: this);
  
  /// pt-36 -> padding-top: 144px;
  Widget pt36() => Padding(padding: const EdgeInsets.only(top: 144), child: this);
  
  /// pt-40 -> padding-top: 160px;
  Widget pt40() => Padding(padding: const EdgeInsets.only(top: 160), child: this);
  
  /// pt-44 -> padding-top: 176px;
  Widget pt44() => Padding(padding: const EdgeInsets.only(top: 176), child: this);
  
  /// pt-48 -> padding-top: 192px;
  Widget pt48() => Padding(padding: const EdgeInsets.only(top: 192), child: this);
  
  /// pt-52 -> padding-top: 208px;
  Widget pt52() => Padding(padding: const EdgeInsets.only(top: 208), child: this);
  
  /// pt-56 -> padding-top: 224px;
  Widget pt56() => Padding(padding: const EdgeInsets.only(top: 224), child: this);
  
  /// pt-60 -> padding-top: 240px;
  Widget pt60() => Padding(padding: const EdgeInsets.only(top: 240), child: this);
  
  /// pt-64 -> padding-top: 256px;
  Widget pt64() => Padding(padding: const EdgeInsets.only(top: 256), child: this);
  
  /// pt-72 -> padding-top: 288px;
  Widget pt72() => Padding(padding: const EdgeInsets.only(top: 288), child: this);
  
  /// pt-80 -> padding-top: 320px;
  Widget pt80() => Padding(padding: const EdgeInsets.only(top: 320), child: this);
  
  /// pt-96 -> padding-top: 384px;
  Widget pt96() => Padding(padding: const EdgeInsets.only(top: 384), child: this);

  // === pr-<number> utilities (right padding) ===
  /// pr-0 -> padding-right: 0;
  Widget pr0() => Padding(padding: const EdgeInsets.only(right: 0), child: this);
  
  /// pr-px -> padding-right: 1px;
  Widget prPx() => Padding(padding: const EdgeInsets.only(right: 1), child: this);
  
  /// pr-0.5 -> padding-right: 2px;
  Widget pr0_5() => Padding(padding: const EdgeInsets.only(right: 2), child: this);
  
  /// pr-1 -> padding-right: 4px;
  Widget pr1() => Padding(padding: const EdgeInsets.only(right: 4), child: this);
  
  /// pr-1.5 -> padding-right: 6px;
  Widget pr1_5() => Padding(padding: const EdgeInsets.only(right: 6), child: this);
  
  /// pr-2 -> padding-right: 8px;
  Widget pr2() => Padding(padding: const EdgeInsets.only(right: 8), child: this);
  
  /// pr-2.5 -> padding-right: 10px;
  Widget pr2_5() => Padding(padding: const EdgeInsets.only(right: 10), child: this);
  
  /// pr-3 -> padding-right: 12px;
  Widget pr3() => Padding(padding: const EdgeInsets.only(right: 12), child: this);
  
  /// pr-3.5 -> padding-right: 14px;
  Widget pr3_5() => Padding(padding: const EdgeInsets.only(right: 14), child: this);
  
  /// pr-4 -> padding-right: 16px;
  Widget pr4() => Padding(padding: const EdgeInsets.only(right: 16), child: this);
  
  /// pr-5 -> padding-right: 20px;
  Widget pr5() => Padding(padding: const EdgeInsets.only(right: 20), child: this);
  
  /// pr-6 -> padding-right: 24px;
  Widget pr6() => Padding(padding: const EdgeInsets.only(right: 24), child: this);
  
  /// pr-7 -> padding-right: 28px;
  Widget pr7() => Padding(padding: const EdgeInsets.only(right: 28), child: this);
  
  /// pr-8 -> padding-right: 32px;
  Widget pr8() => Padding(padding: const EdgeInsets.only(right: 32), child: this);
  
  /// pr-9 -> padding-right: 36px;
  Widget pr9() => Padding(padding: const EdgeInsets.only(right: 36), child: this);
  
  /// pr-10 -> padding-right: 40px;
  Widget pr10() => Padding(padding: const EdgeInsets.only(right: 40), child: this);
  
  /// pr-11 -> padding-right: 44px;
  Widget pr11() => Padding(padding: const EdgeInsets.only(right: 44), child: this);
  
  /// pr-12 -> padding-right: 48px;
  Widget pr12() => Padding(padding: const EdgeInsets.only(right: 48), child: this);
  
  /// pr-14 -> padding-right: 56px;
  Widget pr14() => Padding(padding: const EdgeInsets.only(right: 56), child: this);
  
  /// pr-16 -> padding-right: 64px;
  Widget pr16() => Padding(padding: const EdgeInsets.only(right: 64), child: this);
  
  /// pr-20 -> padding-right: 80px;
  Widget pr20() => Padding(padding: const EdgeInsets.only(right: 80), child: this);
  
  /// pr-24 -> padding-right: 96px;
  Widget pr24() => Padding(padding: const EdgeInsets.only(right: 96), child: this);
  
  /// pr-28 -> padding-right: 112px;
  Widget pr28() => Padding(padding: const EdgeInsets.only(right: 112), child: this);
  
  /// pr-32 -> padding-right: 128px;
  Widget pr32() => Padding(padding: const EdgeInsets.only(right: 128), child: this);
  
  /// pr-36 -> padding-right: 144px;
  Widget pr36() => Padding(padding: const EdgeInsets.only(right: 144), child: this);
  
  /// pr-40 -> padding-right: 160px;
  Widget pr40() => Padding(padding: const EdgeInsets.only(right: 160), child: this);
  
  /// pr-44 -> padding-right: 176px;
  Widget pr44() => Padding(padding: const EdgeInsets.only(right: 176), child: this);
  
  /// pr-48 -> padding-right: 192px;
  Widget pr48() => Padding(padding: const EdgeInsets.only(right: 192), child: this);
  
  /// pr-52 -> padding-right: 208px;
  Widget pr52() => Padding(padding: const EdgeInsets.only(right: 208), child: this);
  
  /// pr-56 -> padding-right: 224px;
  Widget pr56() => Padding(padding: const EdgeInsets.only(right: 224), child: this);
  
  /// pr-60 -> padding-right: 240px;
  Widget pr60() => Padding(padding: const EdgeInsets.only(right: 240), child: this);
  
  /// pr-64 -> padding-right: 256px;
  Widget pr64() => Padding(padding: const EdgeInsets.only(right: 256), child: this);
  
  /// pr-72 -> padding-right: 288px;
  Widget pr72() => Padding(padding: const EdgeInsets.only(right: 288), child: this);
  
  /// pr-80 -> padding-right: 320px;
  Widget pr80() => Padding(padding: const EdgeInsets.only(right: 320), child: this);
  
  /// pr-96 -> padding-right: 384px;
  Widget pr96() => Padding(padding: const EdgeInsets.only(right: 384), child: this);

  // === pb-<number> utilities (bottom padding) ===
  /// pb-0 -> padding-bottom: 0;
  Widget pb0() => Padding(padding: const EdgeInsets.only(bottom: 0), child: this);
  
  /// pb-px -> padding-bottom: 1px;
  Widget pbPx() => Padding(padding: const EdgeInsets.only(bottom: 1), child: this);
  
  /// pb-0.5 -> padding-bottom: 2px;
  Widget pb0_5() => Padding(padding: const EdgeInsets.only(bottom: 2), child: this);
  
  /// pb-1 -> padding-bottom: 4px;
  Widget pb1() => Padding(padding: const EdgeInsets.only(bottom: 4), child: this);
  
  /// pb-1.5 -> padding-bottom: 6px;
  Widget pb1_5() => Padding(padding: const EdgeInsets.only(bottom: 6), child: this);
  
  /// pb-2 -> padding-bottom: 8px;
  Widget pb2() => Padding(padding: const EdgeInsets.only(bottom: 8), child: this);
  
  /// pb-2.5 -> padding-bottom: 10px;
  Widget pb2_5() => Padding(padding: const EdgeInsets.only(bottom: 10), child: this);
  
  /// pb-3 -> padding-bottom: 12px;
  Widget pb3() => Padding(padding: const EdgeInsets.only(bottom: 12), child: this);
  
  /// pb-3.5 -> padding-bottom: 14px;
  Widget pb3_5() => Padding(padding: const EdgeInsets.only(bottom: 14), child: this);
  
  /// pb-4 -> padding-bottom: 16px;
  Widget pb4() => Padding(padding: const EdgeInsets.only(bottom: 16), child: this);
  
  /// pb-5 -> padding-bottom: 20px;
  Widget pb5() => Padding(padding: const EdgeInsets.only(bottom: 20), child: this);
  
  /// pb-6 -> padding-bottom: 24px;
  Widget pb6() => Padding(padding: const EdgeInsets.only(bottom: 24), child: this);
  
  /// pb-7 -> padding-bottom: 28px;
  Widget pb7() => Padding(padding: const EdgeInsets.only(bottom: 28), child: this);
  
  /// pb-8 -> padding-bottom: 32px;
  Widget pb8() => Padding(padding: const EdgeInsets.only(bottom: 32), child: this);
  
  /// pb-9 -> padding-bottom: 36px;
  Widget pb9() => Padding(padding: const EdgeInsets.only(bottom: 36), child: this);
  
  /// pb-10 -> padding-bottom: 40px;
  Widget pb10() => Padding(padding: const EdgeInsets.only(bottom: 40), child: this);
  
  /// pb-11 -> padding-bottom: 44px;
  Widget pb11() => Padding(padding: const EdgeInsets.only(bottom: 44), child: this);
  
  /// pb-12 -> padding-bottom: 48px;
  Widget pb12() => Padding(padding: const EdgeInsets.only(bottom: 48), child: this);
  
  /// pb-14 -> padding-bottom: 56px;
  Widget pb14() => Padding(padding: const EdgeInsets.only(bottom: 56), child: this);
  
  /// pb-16 -> padding-bottom: 64px;
  Widget pb16() => Padding(padding: const EdgeInsets.only(bottom: 64), child: this);
  
  /// pb-20 -> padding-bottom: 80px;
  Widget pb20() => Padding(padding: const EdgeInsets.only(bottom: 80), child: this);
  
  /// pb-24 -> padding-bottom: 96px;
  Widget pb24() => Padding(padding: const EdgeInsets.only(bottom: 96), child: this);
  
  /// pb-28 -> padding-bottom: 112px;
  Widget pb28() => Padding(padding: const EdgeInsets.only(bottom: 112), child: this);
  
  /// pb-32 -> padding-bottom: 128px;
  Widget pb32() => Padding(padding: const EdgeInsets.only(bottom: 128), child: this);
  
  /// pb-36 -> padding-bottom: 144px;
  Widget pb36() => Padding(padding: const EdgeInsets.only(bottom: 144), child: this);
  
  /// pb-40 -> padding-bottom: 160px;
  Widget pb40() => Padding(padding: const EdgeInsets.only(bottom: 160), child: this);
  
  /// pb-44 -> padding-bottom: 176px;
  Widget pb44() => Padding(padding: const EdgeInsets.only(bottom: 176), child: this);
  
  /// pb-48 -> padding-bottom: 192px;
  Widget pb48() => Padding(padding: const EdgeInsets.only(bottom: 192), child: this);
  
  /// pb-52 -> padding-bottom: 208px;
  Widget pb52() => Padding(padding: const EdgeInsets.only(bottom: 208), child: this);
  
  /// pb-56 -> padding-bottom: 224px;
  Widget pb56() => Padding(padding: const EdgeInsets.only(bottom: 224), child: this);
  
  /// pb-60 -> padding-bottom: 240px;
  Widget pb60() => Padding(padding: const EdgeInsets.only(bottom: 240), child: this);
  
  /// pb-64 -> padding-bottom: 256px;
  Widget pb64() => Padding(padding: const EdgeInsets.only(bottom: 256), child: this);
  
  /// pb-72 -> padding-bottom: 288px;
  Widget pb72() => Padding(padding: const EdgeInsets.only(bottom: 288), child: this);
  
  /// pb-80 -> padding-bottom: 320px;
  Widget pb80() => Padding(padding: const EdgeInsets.only(bottom: 320), child: this);
  
  /// pb-96 -> padding-bottom: 384px;
  Widget pb96() => Padding(padding: const EdgeInsets.only(bottom: 384), child: this);

  // === pl-<number> utilities (left padding) ===
  /// pl-0 -> padding-left: 0;
  Widget pl0() => Padding(padding: const EdgeInsets.only(left: 0), child: this);
  
  /// pl-px -> padding-left: 1px;
  Widget plPx() => Padding(padding: const EdgeInsets.only(left: 1), child: this);
  
  /// pl-0.5 -> padding-left: 2px;
  Widget pl0_5() => Padding(padding: const EdgeInsets.only(left: 2), child: this);
  
  /// pl-1 -> padding-left: 4px;
  Widget pl1() => Padding(padding: const EdgeInsets.only(left: 4), child: this);
  
  /// pl-1.5 -> padding-left: 6px;
  Widget pl1_5() => Padding(padding: const EdgeInsets.only(left: 6), child: this);
  
  /// pl-2 -> padding-left: 8px;
  Widget pl2() => Padding(padding: const EdgeInsets.only(left: 8), child: this);
  
  /// pl-2.5 -> padding-left: 10px;
  Widget pl2_5() => Padding(padding: const EdgeInsets.only(left: 10), child: this);
  
  /// pl-3 -> padding-left: 12px;
  Widget pl3() => Padding(padding: const EdgeInsets.only(left: 12), child: this);
  
  /// pl-3.5 -> padding-left: 14px;
  Widget pl3_5() => Padding(padding: const EdgeInsets.only(left: 14), child: this);
  
  /// pl-4 -> padding-left: 16px;
  Widget pl4() => Padding(padding: const EdgeInsets.only(left: 16), child: this);
  
  /// pl-5 -> padding-left: 20px;
  Widget pl5() => Padding(padding: const EdgeInsets.only(left: 20), child: this);
  
  /// pl-6 -> padding-left: 24px;
  Widget pl6() => Padding(padding: const EdgeInsets.only(left: 24), child: this);
  
  /// pl-7 -> padding-left: 28px;
  Widget pl7() => Padding(padding: const EdgeInsets.only(left: 28), child: this);
  
  /// pl-8 -> padding-left: 32px;
  Widget pl8() => Padding(padding: const EdgeInsets.only(left: 32), child: this);
  
  /// pl-9 -> padding-left: 36px;
  Widget pl9() => Padding(padding: const EdgeInsets.only(left: 36), child: this);
  
  /// pl-10 -> padding-left: 40px;
  Widget pl10() => Padding(padding: const EdgeInsets.only(left: 40), child: this);
  
  /// pl-11 -> padding-left: 44px;
  Widget pl11() => Padding(padding: const EdgeInsets.only(left: 44), child: this);
  
  /// pl-12 -> padding-left: 48px;
  Widget pl12() => Padding(padding: const EdgeInsets.only(left: 48), child: this);
  
  /// pl-14 -> padding-left: 56px;
  Widget pl14() => Padding(padding: const EdgeInsets.only(left: 56), child: this);
  
  /// pl-16 -> padding-left: 64px;
  Widget pl16() => Padding(padding: const EdgeInsets.only(left: 64), child: this);
  
  /// pl-20 -> padding-left: 80px;
  Widget pl20() => Padding(padding: const EdgeInsets.only(left: 80), child: this);
  
  /// pl-24 -> padding-left: 96px;
  Widget pl24() => Padding(padding: const EdgeInsets.only(left: 96), child: this);
  
  /// pl-28 -> padding-left: 112px;
  Widget pl28() => Padding(padding: const EdgeInsets.only(left: 112), child: this);
  
  /// pl-32 -> padding-left: 128px;
  Widget pl32() => Padding(padding: const EdgeInsets.only(left: 128), child: this);
  
  /// pl-36 -> padding-left: 144px;
  Widget pl36() => Padding(padding: const EdgeInsets.only(left: 144), child: this);
  
  /// pl-40 -> padding-left: 160px;
  Widget pl40() => Padding(padding: const EdgeInsets.only(left: 160), child: this);
  
  /// pl-44 -> padding-left: 176px;
  Widget pl44() => Padding(padding: const EdgeInsets.only(left: 176), child: this);
  
  /// pl-48 -> padding-left: 192px;
  Widget pl48() => Padding(padding: const EdgeInsets.only(left: 192), child: this);
  
  /// pl-52 -> padding-left: 208px;
  Widget pl52() => Padding(padding: const EdgeInsets.only(left: 208), child: this);
  
  /// pl-56 -> padding-left: 224px;
  Widget pl56() => Padding(padding: const EdgeInsets.only(left: 224), child: this);
  
  /// pl-60 -> padding-left: 240px;
  Widget pl60() => Padding(padding: const EdgeInsets.only(left: 240), child: this);
  
  /// pl-64 -> padding-left: 256px;
  Widget pl64() => Padding(padding: const EdgeInsets.only(left: 256), child: this);
  
  /// pl-72 -> padding-left: 288px;
  Widget pl72() => Padding(padding: const EdgeInsets.only(left: 288), child: this);
  
  /// pl-80 -> padding-left: 320px;
  Widget pl80() => Padding(padding: const EdgeInsets.only(left: 320), child: this);
  
  /// pl-96 -> padding-left: 384px;
  Widget pl96() => Padding(padding: const EdgeInsets.only(left: 384), child: this);

  // === ps-<number> utilities (padding-inline-start) ===
  /// ps-0 -> padding-inline-start: 0;
  Widget ps0() => Padding(padding: const EdgeInsetsDirectional.only(start: 0), child: this);
  
  /// ps-px -> padding-inline-start: 1px;
  Widget psPx() => Padding(padding: const EdgeInsetsDirectional.only(start: 1), child: this);
  
  /// ps-0.5 -> padding-inline-start: 2px;
  Widget ps0_5() => Padding(padding: const EdgeInsetsDirectional.only(start: 2), child: this);
  
  /// ps-1 -> padding-inline-start: 4px;
  Widget ps1() => Padding(padding: const EdgeInsetsDirectional.only(start: 4), child: this);
  
  /// ps-1.5 -> padding-inline-start: 6px;
  Widget ps1_5() => Padding(padding: const EdgeInsetsDirectional.only(start: 6), child: this);
  
  /// ps-2 -> padding-inline-start: 8px;
  Widget ps2() => Padding(padding: const EdgeInsetsDirectional.only(start: 8), child: this);
  
  /// ps-2.5 -> padding-inline-start: 10px;
  Widget ps2_5() => Padding(padding: const EdgeInsetsDirectional.only(start: 10), child: this);
  
  /// ps-3 -> padding-inline-start: 12px;
  Widget ps3() => Padding(padding: const EdgeInsetsDirectional.only(start: 12), child: this);
  
  /// ps-3.5 -> padding-inline-start: 14px;
  Widget ps3_5() => Padding(padding: const EdgeInsetsDirectional.only(start: 14), child: this);
  
  /// ps-4 -> padding-inline-start: 16px;
  Widget ps4() => Padding(padding: const EdgeInsetsDirectional.only(start: 16), child: this);
  
  /// ps-5 -> padding-inline-start: 20px;
  Widget ps5() => Padding(padding: const EdgeInsetsDirectional.only(start: 20), child: this);
  
  /// ps-6 -> padding-inline-start: 24px;
  Widget ps6() => Padding(padding: const EdgeInsetsDirectional.only(start: 24), child: this);
  
  /// ps-7 -> padding-inline-start: 28px;
  Widget ps7() => Padding(padding: const EdgeInsetsDirectional.only(start: 28), child: this);
  
  /// ps-8 -> padding-inline-start: 32px;
  Widget ps8() => Padding(padding: const EdgeInsetsDirectional.only(start: 32), child: this);
  
  /// ps-9 -> padding-inline-start: 36px;
  Widget ps9() => Padding(padding: const EdgeInsetsDirectional.only(start: 36), child: this);
  
  /// ps-10 -> padding-inline-start: 40px;
  Widget ps10() => Padding(padding: const EdgeInsetsDirectional.only(start: 40), child: this);
  
  /// ps-11 -> padding-inline-start: 44px;
  Widget ps11() => Padding(padding: const EdgeInsetsDirectional.only(start: 44), child: this);
  
  /// ps-12 -> padding-inline-start: 48px;
  Widget ps12() => Padding(padding: const EdgeInsetsDirectional.only(start: 48), child: this);
  
  /// ps-14 -> padding-inline-start: 56px;
  Widget ps14() => Padding(padding: const EdgeInsetsDirectional.only(start: 56), child: this);
  
  /// ps-16 -> padding-inline-start: 64px;
  Widget ps16() => Padding(padding: const EdgeInsetsDirectional.only(start: 64), child: this);
  
  /// ps-20 -> padding-inline-start: 80px;
  Widget ps20() => Padding(padding: const EdgeInsetsDirectional.only(start: 80), child: this);
  
  /// ps-24 -> padding-inline-start: 96px;
  Widget ps24() => Padding(padding: const EdgeInsetsDirectional.only(start: 96), child: this);
  
  /// ps-28 -> padding-inline-start: 112px;
  Widget ps28() => Padding(padding: const EdgeInsetsDirectional.only(start: 112), child: this);
  
  /// ps-32 -> padding-inline-start: 128px;
  Widget ps32() => Padding(padding: const EdgeInsetsDirectional.only(start: 128), child: this);
  
  /// ps-36 -> padding-inline-start: 144px;
  Widget ps36() => Padding(padding: const EdgeInsetsDirectional.only(start: 144), child: this);
  
  /// ps-40 -> padding-inline-start: 160px;
  Widget ps40() => Padding(padding: const EdgeInsetsDirectional.only(start: 160), child: this);
  
  /// ps-44 -> padding-inline-start: 176px;
  Widget ps44() => Padding(padding: const EdgeInsetsDirectional.only(start: 176), child: this);
  
  /// ps-48 -> padding-inline-start: 192px;
  Widget ps48() => Padding(padding: const EdgeInsetsDirectional.only(start: 192), child: this);
  
  /// ps-52 -> padding-inline-start: 208px;
  Widget ps52() => Padding(padding: const EdgeInsetsDirectional.only(start: 208), child: this);
  
  /// ps-56 -> padding-inline-start: 224px;
  Widget ps56() => Padding(padding: const EdgeInsetsDirectional.only(start: 224), child: this);
  
  /// ps-60 -> padding-inline-start: 240px;
  Widget ps60() => Padding(padding: const EdgeInsetsDirectional.only(start: 240), child: this);
  
  /// ps-64 -> padding-inline-start: 256px;
  Widget ps64() => Padding(padding: const EdgeInsetsDirectional.only(start: 256), child: this);
  
  /// ps-72 -> padding-inline-start: 288px;
  Widget ps72() => Padding(padding: const EdgeInsetsDirectional.only(start: 288), child: this);
  
  /// ps-80 -> padding-inline-start: 320px;
  Widget ps80() => Padding(padding: const EdgeInsetsDirectional.only(start: 320), child: this);
  
  /// ps-96 -> padding-inline-start: 384px;
  Widget ps96() => Padding(padding: const EdgeInsetsDirectional.only(start: 384), child: this);

  // === pe-<number> utilities (padding-inline-end) ===
  /// pe-0 -> padding-inline-end: 0;
  Widget pe0() => Padding(padding: const EdgeInsetsDirectional.only(end: 0), child: this);
  
  /// pe-px -> padding-inline-end: 1px;
  Widget pePx() => Padding(padding: const EdgeInsetsDirectional.only(end: 1), child: this);
  
  /// pe-0.5 -> padding-inline-end: 2px;
  Widget pe0_5() => Padding(padding: const EdgeInsetsDirectional.only(end: 2), child: this);
  
  /// pe-1 -> padding-inline-end: 4px;
  Widget pe1() => Padding(padding: const EdgeInsetsDirectional.only(end: 4), child: this);
  
  /// pe-1.5 -> padding-inline-end: 6px;
  Widget pe1_5() => Padding(padding: const EdgeInsetsDirectional.only(end: 6), child: this);
  
  /// pe-2 -> padding-inline-end: 8px;
  Widget pe2() => Padding(padding: const EdgeInsetsDirectional.only(end: 8), child: this);
  
  /// pe-2.5 -> padding-inline-end: 10px;
  Widget pe2_5() => Padding(padding: const EdgeInsetsDirectional.only(end: 10), child: this);
  
  /// pe-3 -> padding-inline-end: 12px;
  Widget pe3() => Padding(padding: const EdgeInsetsDirectional.only(end: 12), child: this);
  
  /// pe-3.5 -> padding-inline-end: 14px;
  Widget pe3_5() => Padding(padding: const EdgeInsetsDirectional.only(end: 14), child: this);
  
  /// pe-4 -> padding-inline-end: 16px;
  Widget pe4() => Padding(padding: const EdgeInsetsDirectional.only(end: 16), child: this);
  
  /// pe-5 -> padding-inline-end: 20px;
  Widget pe5() => Padding(padding: const EdgeInsetsDirectional.only(end: 20), child: this);
  
  /// pe-6 -> padding-inline-end: 24px;
  Widget pe6() => Padding(padding: const EdgeInsetsDirectional.only(end: 24), child: this);
  
  /// pe-7 -> padding-inline-end: 28px;
  Widget pe7() => Padding(padding: const EdgeInsetsDirectional.only(end: 28), child: this);
  
  /// pe-8 -> padding-inline-end: 32px;
  Widget pe8() => Padding(padding: const EdgeInsetsDirectional.only(end: 32), child: this);
  
  /// pe-9 -> padding-inline-end: 36px;
  Widget pe9() => Padding(padding: const EdgeInsetsDirectional.only(end: 36), child: this);
  
  /// pe-10 -> padding-inline-end: 40px;
  Widget pe10() => Padding(padding: const EdgeInsetsDirectional.only(end: 40), child: this);
  
  /// pe-11 -> padding-inline-end: 44px;
  Widget pe11() => Padding(padding: const EdgeInsetsDirectional.only(end: 44), child: this);
  
  /// pe-12 -> padding-inline-end: 48px;
  Widget pe12() => Padding(padding: const EdgeInsetsDirectional.only(end: 48), child: this);
  
  /// pe-14 -> padding-inline-end: 56px;
  Widget pe14() => Padding(padding: const EdgeInsetsDirectional.only(end: 56), child: this);
  
  /// pe-16 -> padding-inline-end: 64px;
  Widget pe16() => Padding(padding: const EdgeInsetsDirectional.only(end: 64), child: this);
  
  /// pe-20 -> padding-inline-end: 80px;
  Widget pe20() => Padding(padding: const EdgeInsetsDirectional.only(end: 80), child: this);
  
  /// pe-24 -> padding-inline-end: 96px;
  Widget pe24() => Padding(padding: const EdgeInsetsDirectional.only(end: 96), child: this);
  
  /// pe-28 -> padding-inline-end: 112px;
  Widget pe28() => Padding(padding: const EdgeInsetsDirectional.only(end: 112), child: this);
  
  /// pe-32 -> padding-inline-end: 128px;
  Widget pe32() => Padding(padding: const EdgeInsetsDirectional.only(end: 128), child: this);
  
  /// pe-36 -> padding-inline-end: 144px;
  Widget pe36() => Padding(padding: const EdgeInsetsDirectional.only(end: 144), child: this);
  
  /// pe-40 -> padding-inline-end: 160px;
  Widget pe40() => Padding(padding: const EdgeInsetsDirectional.only(end: 160), child: this);
  
  /// pe-44 -> padding-inline-end: 176px;
  Widget pe44() => Padding(padding: const EdgeInsetsDirectional.only(end: 176), child: this);
  
  /// pe-48 -> padding-inline-end: 192px;
  Widget pe48() => Padding(padding: const EdgeInsetsDirectional.only(end: 192), child: this);
  
  /// pe-52 -> padding-inline-end: 208px;
  Widget pe52() => Padding(padding: const EdgeInsetsDirectional.only(end: 208), child: this);
  
  /// pe-56 -> padding-inline-end: 224px;
  Widget pe56() => Padding(padding: const EdgeInsetsDirectional.only(end: 224), child: this);
  
  /// pe-60 -> padding-inline-end: 240px;
  Widget pe60() => Padding(padding: const EdgeInsetsDirectional.only(end: 240), child: this);
  
  /// pe-64 -> padding-inline-end: 256px;
  Widget pe64() => Padding(padding: const EdgeInsetsDirectional.only(end: 256), child: this);
  
  /// pe-72 -> padding-inline-end: 288px;
  Widget pe72() => Padding(padding: const EdgeInsetsDirectional.only(end: 288), child: this);
  
  /// pe-80 -> padding-inline-end: 320px;
  Widget pe80() => Padding(padding: const EdgeInsetsDirectional.only(end: 320), child: this);
  
  /// pe-96 -> padding-inline-end: 384px;
  Widget pe96() => Padding(padding: const EdgeInsetsDirectional.only(end: 384), child: this);

  // === Custom padding utilities ===
  /// p-[<value>] -> padding: <value>; (自定义四周padding)
  Widget pCustom(double padding) => Padding(padding: EdgeInsets.all(padding), child: this);
  
  /// px-[<value>] -> padding-inline: <value>; (自定义水平padding)
  Widget pxCustom(double padding) => Padding(padding: EdgeInsets.symmetric(horizontal: padding), child: this);
  
  /// py-[<value>] -> padding-block: <value>; (自定义垂直padding)
  Widget pyCustom(double padding) => Padding(padding: EdgeInsets.symmetric(vertical: padding), child: this);
  
  /// pt-[<value>] -> padding-top: <value>; (自定义顶部padding)
  Widget ptCustom(double padding) => Padding(padding: EdgeInsets.only(top: padding), child: this);
  
  /// pr-[<value>] -> padding-right: <value>; (自定义右侧padding)
  Widget prCustom(double padding) => Padding(padding: EdgeInsets.only(right: padding), child: this);
  
  /// pb-[<value>] -> padding-bottom: <value>; (自定义底部padding)
  Widget pbCustom(double padding) => Padding(padding: EdgeInsets.only(bottom: padding), child: this);
  
  /// pl-[<value>] -> padding-left: <value>; (自定义左侧padding)
  Widget plCustom(double padding) => Padding(padding: EdgeInsets.only(left: padding), child: this);
  
  /// ps-[<value>] -> padding-inline-start: <value>; (自定义逻辑开始padding)
  Widget psCustom(double padding) => Padding(padding: EdgeInsetsDirectional.only(start: padding), child: this);
  
  /// pe-[<value>] -> padding-inline-end: <value>; (自定义逻辑结束padding)
  Widget peCustom(double padding) => Padding(padding: EdgeInsetsDirectional.only(end: padding), child: this);

  // === Combined padding utilities ===
  /// 自定义非对称padding (top, right, bottom, left)
  Widget pAll({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) => Padding(
        padding: EdgeInsets.only(
          top: top,
          right: right,
          bottom: bottom,
          left: left,
        ),
        child: this,
      );
  
  /// 自定义对称padding (horizontal, vertical)
  Widget pSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: this,
      );

  /// 通用内边距应用方法 - 与现有Container装饰集成
  Widget _applyPadding({double? horizontal, double? vertical, double? all}) {
    // 如果当前widget是Container，我们需要合并内边距
    if (this is Container) {
      final container = this as Container;
      
      // 获取现有的padding
      EdgeInsetsGeometry? existingPadding = container.padding;
      
      // 计算新的padding
      EdgeInsetsGeometry newPadding;
      if (all != null) {
        newPadding = EdgeInsets.all(all);
      } else {
        newPadding = EdgeInsets.symmetric(
          horizontal: horizontal ?? 0,
          vertical: vertical ?? 0,
        );
      }
      
      // 如果已有padding，需要合并
      if (existingPadding != null) {
        // 简单合并 - 这里可能需要更复杂的逻辑
        if (existingPadding is EdgeInsets) {
          final existing = existingPadding;
          final newEdgeInsets = newPadding as EdgeInsets;
          newPadding = EdgeInsets.only(
            left: existing.left + newEdgeInsets.left,
            top: existing.top + newEdgeInsets.top,
            right: existing.right + newEdgeInsets.right,
            bottom: existing.bottom + newEdgeInsets.bottom,
          );
        }
      }
      
      // 重建Container
      return Container(
        alignment: container.alignment,
        padding: newPadding,
        margin: container.margin,
        constraints: container.constraints,
        transform: container.transform,
        transformAlignment: container.transformAlignment,
        decoration: container.decoration,
        foregroundDecoration: container.foregroundDecoration,
        child: container.child,
      );
    }
    
    // 对于非Container，使用传统的Padding
    if (all != null) {
      return Padding(padding: EdgeInsets.all(all), child: this);
    } else {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal ?? 0,
          vertical: vertical ?? 0,
        ),
        child: this,
      );
    }
  }
}
