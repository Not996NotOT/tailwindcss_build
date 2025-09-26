import 'package:flutter/material.dart';

/// Tailwind CSS Margin utilities for Flutter
/// Utilities for controlling an element's margin.
extension MarginExt on Widget {
  
  // === m-<number> utilities (all sides margin) ===
  /// m-0 -> margin: 0;
  Widget m0() => Container(margin: const EdgeInsets.all(0), child: this);
  
  /// m-px -> margin: 1px;
  Widget mPx() => Container(margin: const EdgeInsets.all(1), child: this);
  
  /// m-0.5 -> margin: 2px;
  Widget m0_5() => Container(margin: const EdgeInsets.all(2), child: this);
  
  /// m-1 -> margin: 4px;
  Widget m1() => Container(margin: const EdgeInsets.all(4), child: this);
  
  /// m-1.5 -> margin: 6px;
  Widget m1_5() => Container(margin: const EdgeInsets.all(6), child: this);
  
  /// m-2 -> margin: 8px;
  Widget m2() => Container(margin: const EdgeInsets.all(8), child: this);
  
  /// m-2.5 -> margin: 10px;
  Widget m2_5() => Container(margin: const EdgeInsets.all(10), child: this);
  
  /// m-3 -> margin: 12px;
  Widget m3() => Container(margin: const EdgeInsets.all(12), child: this);
  
  /// m-3.5 -> margin: 14px;
  Widget m3_5() => Container(margin: const EdgeInsets.all(14), child: this);
  
  /// m-4 -> margin: 16px;
  Widget m4() => Container(margin: const EdgeInsets.all(16), child: this);
  
  /// m-5 -> margin: 20px;
  Widget m5() => Container(margin: const EdgeInsets.all(20), child: this);
  
  /// m-6 -> margin: 24px;
  Widget m6() => Container(margin: const EdgeInsets.all(24), child: this);
  
  /// m-7 -> margin: 28px;
  Widget m7() => Container(margin: const EdgeInsets.all(28), child: this);
  
  /// m-8 -> margin: 32px;
  Widget m8() => Container(margin: const EdgeInsets.all(32), child: this);
  
  /// m-9 -> margin: 36px;
  Widget m9() => Container(margin: const EdgeInsets.all(36), child: this);
  
  /// m-10 -> margin: 40px;
  Widget m10() => Container(margin: const EdgeInsets.all(40), child: this);
  
  /// m-11 -> margin: 44px;
  Widget m11() => Container(margin: const EdgeInsets.all(44), child: this);
  
  /// m-12 -> margin: 48px;
  Widget m12() => Container(margin: const EdgeInsets.all(48), child: this);
  
  /// m-14 -> margin: 56px;
  Widget m14() => Container(margin: const EdgeInsets.all(56), child: this);
  
  /// m-16 -> margin: 64px;
  Widget m16() => Container(margin: const EdgeInsets.all(64), child: this);
  
  /// m-20 -> margin: 80px;
  Widget m20() => Container(margin: const EdgeInsets.all(80), child: this);
  
  /// m-24 -> margin: 96px;
  Widget m24() => Container(margin: const EdgeInsets.all(96), child: this);
  
  /// m-28 -> margin: 112px;
  Widget m28() => Container(margin: const EdgeInsets.all(112), child: this);
  
  /// m-32 -> margin: 128px;
  Widget m32() => Container(margin: const EdgeInsets.all(128), child: this);
  
  /// m-36 -> margin: 144px;
  Widget m36() => Container(margin: const EdgeInsets.all(144), child: this);
  
  /// m-40 -> margin: 160px;
  Widget m40() => Container(margin: const EdgeInsets.all(160), child: this);
  
  /// m-44 -> margin: 176px;
  Widget m44() => Container(margin: const EdgeInsets.all(176), child: this);
  
  /// m-48 -> margin: 192px;
  Widget m48() => Container(margin: const EdgeInsets.all(192), child: this);
  
  /// m-52 -> margin: 208px;
  Widget m52() => Container(margin: const EdgeInsets.all(208), child: this);
  
  /// m-56 -> margin: 224px;
  Widget m56() => Container(margin: const EdgeInsets.all(224), child: this);
  
  /// m-60 -> margin: 240px;
  Widget m60() => Container(margin: const EdgeInsets.all(240), child: this);
  
  /// m-64 -> margin: 256px;
  Widget m64() => Container(margin: const EdgeInsets.all(256), child: this);
  
  /// m-72 -> margin: 288px;
  Widget m72() => Container(margin: const EdgeInsets.all(288), child: this);
  
  /// m-80 -> margin: 320px;
  Widget m80() => Container(margin: const EdgeInsets.all(320), child: this);
  
  /// m-96 -> margin: 384px;
  Widget m96() => Container(margin: const EdgeInsets.all(384), child: this);

  // === mx-<number> utilities (horizontal margin) ===
  /// mx-0 -> margin-inline: 0;
  Widget mx0() => Container(margin: const EdgeInsets.symmetric(horizontal: 0), child: this);
  
  /// mx-px -> margin-inline: 1px;
  Widget mxPx() => Container(margin: const EdgeInsets.symmetric(horizontal: 1), child: this);
  
  /// mx-0.5 -> margin-inline: 2px;
  Widget mx0_5() => Container(margin: const EdgeInsets.symmetric(horizontal: 2), child: this);
  
  /// mx-1 -> margin-inline: 4px;
  Widget mx1() => Container(margin: const EdgeInsets.symmetric(horizontal: 4), child: this);
  
  /// mx-1.5 -> margin-inline: 6px;
  Widget mx1_5() => Container(margin: const EdgeInsets.symmetric(horizontal: 6), child: this);
  
  /// mx-2 -> margin-inline: 8px;
  Widget mx2() => Container(margin: const EdgeInsets.symmetric(horizontal: 8), child: this);
  
  /// mx-2.5 -> margin-inline: 10px;
  Widget mx2_5() => Container(margin: const EdgeInsets.symmetric(horizontal: 10), child: this);
  
  /// mx-3 -> margin-inline: 12px;
  Widget mx3() => Container(margin: const EdgeInsets.symmetric(horizontal: 12), child: this);
  
  /// mx-3.5 -> margin-inline: 14px;
  Widget mx3_5() => Container(margin: const EdgeInsets.symmetric(horizontal: 14), child: this);
  
  /// mx-4 -> margin-inline: 16px;
  Widget mx4() => Container(margin: const EdgeInsets.symmetric(horizontal: 16), child: this);
  
  /// mx-5 -> margin-inline: 20px;
  Widget mx5() => Container(margin: const EdgeInsets.symmetric(horizontal: 20), child: this);
  
  /// mx-6 -> margin-inline: 24px;
  Widget mx6() => Container(margin: const EdgeInsets.symmetric(horizontal: 24), child: this);
  
  /// mx-7 -> margin-inline: 28px;
  Widget mx7() => Container(margin: const EdgeInsets.symmetric(horizontal: 28), child: this);
  
  /// mx-8 -> margin-inline: 32px;
  Widget mx8() => Container(margin: const EdgeInsets.symmetric(horizontal: 32), child: this);
  
  /// mx-9 -> margin-inline: 36px;
  Widget mx9() => Container(margin: const EdgeInsets.symmetric(horizontal: 36), child: this);
  
  /// mx-10 -> margin-inline: 40px;
  Widget mx10() => Container(margin: const EdgeInsets.symmetric(horizontal: 40), child: this);
  
  /// mx-11 -> margin-inline: 44px;
  Widget mx11() => Container(margin: const EdgeInsets.symmetric(horizontal: 44), child: this);
  
  /// mx-12 -> margin-inline: 48px;
  Widget mx12() => Container(margin: const EdgeInsets.symmetric(horizontal: 48), child: this);
  
  /// mx-14 -> margin-inline: 56px;
  Widget mx14() => Container(margin: const EdgeInsets.symmetric(horizontal: 56), child: this);
  
  /// mx-16 -> margin-inline: 64px;
  Widget mx16() => Container(margin: const EdgeInsets.symmetric(horizontal: 64), child: this);
  
  /// mx-20 -> margin-inline: 80px;
  Widget mx20() => Container(margin: const EdgeInsets.symmetric(horizontal: 80), child: this);
  
  /// mx-24 -> margin-inline: 96px;
  Widget mx24() => Container(margin: const EdgeInsets.symmetric(horizontal: 96), child: this);
  
  /// mx-28 -> margin-inline: 112px;
  Widget mx28() => Container(margin: const EdgeInsets.symmetric(horizontal: 112), child: this);
  
  /// mx-32 -> margin-inline: 128px;
  Widget mx32() => Container(margin: const EdgeInsets.symmetric(horizontal: 128), child: this);
  
  /// mx-36 -> margin-inline: 144px;
  Widget mx36() => Container(margin: const EdgeInsets.symmetric(horizontal: 144), child: this);
  
  /// mx-40 -> margin-inline: 160px;
  Widget mx40() => Container(margin: const EdgeInsets.symmetric(horizontal: 160), child: this);
  
  /// mx-44 -> margin-inline: 176px;
  Widget mx44() => Container(margin: const EdgeInsets.symmetric(horizontal: 176), child: this);
  
  /// mx-48 -> margin-inline: 192px;
  Widget mx48() => Container(margin: const EdgeInsets.symmetric(horizontal: 192), child: this);
  
  /// mx-52 -> margin-inline: 208px;
  Widget mx52() => Container(margin: const EdgeInsets.symmetric(horizontal: 208), child: this);
  
  /// mx-56 -> margin-inline: 224px;
  Widget mx56() => Container(margin: const EdgeInsets.symmetric(horizontal: 224), child: this);
  
  /// mx-60 -> margin-inline: 240px;
  Widget mx60() => Container(margin: const EdgeInsets.symmetric(horizontal: 240), child: this);
  
  /// mx-64 -> margin-inline: 256px;
  Widget mx64() => Container(margin: const EdgeInsets.symmetric(horizontal: 256), child: this);
  
  /// mx-72 -> margin-inline: 288px;
  Widget mx72() => Container(margin: const EdgeInsets.symmetric(horizontal: 288), child: this);
  
  /// mx-80 -> margin-inline: 320px;
  Widget mx80() => Container(margin: const EdgeInsets.symmetric(horizontal: 320), child: this);
  
  /// mx-96 -> margin-inline: 384px;
  Widget mx96() => Container(margin: const EdgeInsets.symmetric(horizontal: 384), child: this);
  
  /// mx-auto -> margin-inline: auto; (水平居中)
  Widget mxAuto() => Center(child: this);

  // === my-<number> utilities (vertical margin) ===
  /// my-0 -> margin-block: 0;
  Widget my0() => Container(margin: const EdgeInsets.symmetric(vertical: 0), child: this);
  
  /// my-px -> margin-block: 1px;
  Widget myPx() => Container(margin: const EdgeInsets.symmetric(vertical: 1), child: this);
  
  /// my-0.5 -> margin-block: 2px;
  Widget my0_5() => Container(margin: const EdgeInsets.symmetric(vertical: 2), child: this);
  
  /// my-1 -> margin-block: 4px;
  Widget my1() => Container(margin: const EdgeInsets.symmetric(vertical: 4), child: this);
  
  /// my-1.5 -> margin-block: 6px;
  Widget my1_5() => Container(margin: const EdgeInsets.symmetric(vertical: 6), child: this);
  
  /// my-2 -> margin-block: 8px;
  Widget my2() => Container(margin: const EdgeInsets.symmetric(vertical: 8), child: this);
  
  /// my-2.5 -> margin-block: 10px;
  Widget my2_5() => Container(margin: const EdgeInsets.symmetric(vertical: 10), child: this);
  
  /// my-3 -> margin-block: 12px;
  Widget my3() => Container(margin: const EdgeInsets.symmetric(vertical: 12), child: this);
  
  /// my-3.5 -> margin-block: 14px;
  Widget my3_5() => Container(margin: const EdgeInsets.symmetric(vertical: 14), child: this);
  
  /// my-4 -> margin-block: 16px;
  Widget my4() => Container(margin: const EdgeInsets.symmetric(vertical: 16), child: this);
  
  /// my-5 -> margin-block: 20px;
  Widget my5() => Container(margin: const EdgeInsets.symmetric(vertical: 20), child: this);
  
  /// my-6 -> margin-block: 24px;
  Widget my6() => Container(margin: const EdgeInsets.symmetric(vertical: 24), child: this);
  
  /// my-7 -> margin-block: 28px;
  Widget my7() => Container(margin: const EdgeInsets.symmetric(vertical: 28), child: this);
  
  /// my-8 -> margin-block: 32px;
  Widget my8() => Container(margin: const EdgeInsets.symmetric(vertical: 32), child: this);
  
  /// my-9 -> margin-block: 36px;
  Widget my9() => Container(margin: const EdgeInsets.symmetric(vertical: 36), child: this);
  
  /// my-10 -> margin-block: 40px;
  Widget my10() => Container(margin: const EdgeInsets.symmetric(vertical: 40), child: this);
  
  /// my-11 -> margin-block: 44px;
  Widget my11() => Container(margin: const EdgeInsets.symmetric(vertical: 44), child: this);
  
  /// my-12 -> margin-block: 48px;
  Widget my12() => Container(margin: const EdgeInsets.symmetric(vertical: 48), child: this);
  
  /// my-14 -> margin-block: 56px;
  Widget my14() => Container(margin: const EdgeInsets.symmetric(vertical: 56), child: this);
  
  /// my-16 -> margin-block: 64px;
  Widget my16() => Container(margin: const EdgeInsets.symmetric(vertical: 64), child: this);
  
  /// my-20 -> margin-block: 80px;
  Widget my20() => Container(margin: const EdgeInsets.symmetric(vertical: 80), child: this);
  
  /// my-24 -> margin-block: 96px;
  Widget my24() => Container(margin: const EdgeInsets.symmetric(vertical: 96), child: this);
  
  /// my-28 -> margin-block: 112px;
  Widget my28() => Container(margin: const EdgeInsets.symmetric(vertical: 112), child: this);
  
  /// my-32 -> margin-block: 128px;
  Widget my32() => Container(margin: const EdgeInsets.symmetric(vertical: 128), child: this);
  
  /// my-36 -> margin-block: 144px;
  Widget my36() => Container(margin: const EdgeInsets.symmetric(vertical: 144), child: this);
  
  /// my-40 -> margin-block: 160px;
  Widget my40() => Container(margin: const EdgeInsets.symmetric(vertical: 160), child: this);
  
  /// my-44 -> margin-block: 176px;
  Widget my44() => Container(margin: const EdgeInsets.symmetric(vertical: 176), child: this);
  
  /// my-48 -> margin-block: 192px;
  Widget my48() => Container(margin: const EdgeInsets.symmetric(vertical: 192), child: this);
  
  /// my-52 -> margin-block: 208px;
  Widget my52() => Container(margin: const EdgeInsets.symmetric(vertical: 208), child: this);
  
  /// my-56 -> margin-block: 224px;
  Widget my56() => Container(margin: const EdgeInsets.symmetric(vertical: 224), child: this);
  
  /// my-60 -> margin-block: 240px;
  Widget my60() => Container(margin: const EdgeInsets.symmetric(vertical: 240), child: this);
  
  /// my-64 -> margin-block: 256px;
  Widget my64() => Container(margin: const EdgeInsets.symmetric(vertical: 256), child: this);
  
  /// my-72 -> margin-block: 288px;
  Widget my72() => Container(margin: const EdgeInsets.symmetric(vertical: 288), child: this);
  
  /// my-80 -> margin-block: 320px;
  Widget my80() => Container(margin: const EdgeInsets.symmetric(vertical: 320), child: this);
  
  /// my-96 -> margin-block: 384px;
  Widget my96() => Container(margin: const EdgeInsets.symmetric(vertical: 384), child: this);

  // === mt-<number> utilities (top margin) ===
  /// mt-0 -> margin-top: 0;
  Widget mt0() => Container(margin: const EdgeInsets.only(top: 0), child: this);
  
  /// mt-px -> margin-top: 1px;
  Widget mtPx() => Container(margin: const EdgeInsets.only(top: 1), child: this);
  
  /// mt-0.5 -> margin-top: 2px;
  Widget mt0_5() => Container(margin: const EdgeInsets.only(top: 2), child: this);
  
  /// mt-1 -> margin-top: 4px;
  Widget mt1() => Container(margin: const EdgeInsets.only(top: 4), child: this);
  
  /// mt-1.5 -> margin-top: 6px;
  Widget mt1_5() => Container(margin: const EdgeInsets.only(top: 6), child: this);
  
  /// mt-2 -> margin-top: 8px;
  Widget mt2() => Container(margin: const EdgeInsets.only(top: 8), child: this);
  
  /// mt-2.5 -> margin-top: 10px;
  Widget mt2_5() => Container(margin: const EdgeInsets.only(top: 10), child: this);
  
  /// mt-3 -> margin-top: 12px;
  Widget mt3() => Container(margin: const EdgeInsets.only(top: 12), child: this);
  
  /// mt-3.5 -> margin-top: 14px;
  Widget mt3_5() => Container(margin: const EdgeInsets.only(top: 14), child: this);
  
  /// mt-4 -> margin-top: 16px;
  Widget mt4() => Container(margin: const EdgeInsets.only(top: 16), child: this);
  
  /// mt-5 -> margin-top: 20px;
  Widget mt5() => Container(margin: const EdgeInsets.only(top: 20), child: this);
  
  /// mt-6 -> margin-top: 24px;
  Widget mt6() => Container(margin: const EdgeInsets.only(top: 24), child: this);
  
  /// mt-7 -> margin-top: 28px;
  Widget mt7() => Container(margin: const EdgeInsets.only(top: 28), child: this);
  
  /// mt-8 -> margin-top: 32px;
  Widget mt8() => Container(margin: const EdgeInsets.only(top: 32), child: this);
  
  /// mt-9 -> margin-top: 36px;
  Widget mt9() => Container(margin: const EdgeInsets.only(top: 36), child: this);
  
  /// mt-10 -> margin-top: 40px;
  Widget mt10() => Container(margin: const EdgeInsets.only(top: 40), child: this);
  
  /// mt-11 -> margin-top: 44px;
  Widget mt11() => Container(margin: const EdgeInsets.only(top: 44), child: this);
  
  /// mt-12 -> margin-top: 48px;
  Widget mt12() => Container(margin: const EdgeInsets.only(top: 48), child: this);
  
  /// mt-14 -> margin-top: 56px;
  Widget mt14() => Container(margin: const EdgeInsets.only(top: 56), child: this);
  
  /// mt-16 -> margin-top: 64px;
  Widget mt16() => Container(margin: const EdgeInsets.only(top: 64), child: this);
  
  /// mt-20 -> margin-top: 80px;
  Widget mt20() => Container(margin: const EdgeInsets.only(top: 80), child: this);
  
  /// mt-24 -> margin-top: 96px;
  Widget mt24() => Container(margin: const EdgeInsets.only(top: 96), child: this);
  
  /// mt-28 -> margin-top: 112px;
  Widget mt28() => Container(margin: const EdgeInsets.only(top: 112), child: this);
  
  /// mt-32 -> margin-top: 128px;
  Widget mt32() => Container(margin: const EdgeInsets.only(top: 128), child: this);
  
  /// mt-36 -> margin-top: 144px;
  Widget mt36() => Container(margin: const EdgeInsets.only(top: 144), child: this);
  
  /// mt-40 -> margin-top: 160px;
  Widget mt40() => Container(margin: const EdgeInsets.only(top: 160), child: this);
  
  /// mt-44 -> margin-top: 176px;
  Widget mt44() => Container(margin: const EdgeInsets.only(top: 176), child: this);
  
  /// mt-48 -> margin-top: 192px;
  Widget mt48() => Container(margin: const EdgeInsets.only(top: 192), child: this);
  
  /// mt-52 -> margin-top: 208px;
  Widget mt52() => Container(margin: const EdgeInsets.only(top: 208), child: this);
  
  /// mt-56 -> margin-top: 224px;
  Widget mt56() => Container(margin: const EdgeInsets.only(top: 224), child: this);
  
  /// mt-60 -> margin-top: 240px;
  Widget mt60() => Container(margin: const EdgeInsets.only(top: 240), child: this);
  
  /// mt-64 -> margin-top: 256px;
  Widget mt64() => Container(margin: const EdgeInsets.only(top: 256), child: this);
  
  /// mt-72 -> margin-top: 288px;
  Widget mt72() => Container(margin: const EdgeInsets.only(top: 288), child: this);
  
  /// mt-80 -> margin-top: 320px;
  Widget mt80() => Container(margin: const EdgeInsets.only(top: 320), child: this);
  
  /// mt-96 -> margin-top: 384px;
  Widget mt96() => Container(margin: const EdgeInsets.only(top: 384), child: this);
  
  /// mt-auto -> margin-top: auto;
  Widget mtAuto() => Container(margin: const EdgeInsets.only(top: double.infinity), child: this);

  // === mr-<number> utilities (right margin) ===
  /// mr-0 -> margin-right: 0;
  Widget mr0() => Container(margin: const EdgeInsets.only(right: 0), child: this);
  
  /// mr-px -> margin-right: 1px;
  Widget mrPx() => Container(margin: const EdgeInsets.only(right: 1), child: this);
  
  /// mr-0.5 -> margin-right: 2px;
  Widget mr0_5() => Container(margin: const EdgeInsets.only(right: 2), child: this);
  
  /// mr-1 -> margin-right: 4px;
  Widget mr1() => Container(margin: const EdgeInsets.only(right: 4), child: this);
  
  /// mr-1.5 -> margin-right: 6px;
  Widget mr1_5() => Container(margin: const EdgeInsets.only(right: 6), child: this);
  
  /// mr-2 -> margin-right: 8px;
  Widget mr2() => Container(margin: const EdgeInsets.only(right: 8), child: this);
  
  /// mr-2.5 -> margin-right: 10px;
  Widget mr2_5() => Container(margin: const EdgeInsets.only(right: 10), child: this);
  
  /// mr-3 -> margin-right: 12px;
  Widget mr3() => Container(margin: const EdgeInsets.only(right: 12), child: this);
  
  /// mr-3.5 -> margin-right: 14px;
  Widget mr3_5() => Container(margin: const EdgeInsets.only(right: 14), child: this);
  
  /// mr-4 -> margin-right: 16px;
  Widget mr4() => Container(margin: const EdgeInsets.only(right: 16), child: this);
  
  /// mr-5 -> margin-right: 20px;
  Widget mr5() => Container(margin: const EdgeInsets.only(right: 20), child: this);
  
  /// mr-6 -> margin-right: 24px;
  Widget mr6() => Container(margin: const EdgeInsets.only(right: 24), child: this);
  
  /// mr-7 -> margin-right: 28px;
  Widget mr7() => Container(margin: const EdgeInsets.only(right: 28), child: this);
  
  /// mr-8 -> margin-right: 32px;
  Widget mr8() => Container(margin: const EdgeInsets.only(right: 32), child: this);
  
  /// mr-9 -> margin-right: 36px;
  Widget mr9() => Container(margin: const EdgeInsets.only(right: 36), child: this);
  
  /// mr-10 -> margin-right: 40px;
  Widget mr10() => Container(margin: const EdgeInsets.only(right: 40), child: this);
  
  /// mr-11 -> margin-right: 44px;
  Widget mr11() => Container(margin: const EdgeInsets.only(right: 44), child: this);
  
  /// mr-12 -> margin-right: 48px;
  Widget mr12() => Container(margin: const EdgeInsets.only(right: 48), child: this);
  
  /// mr-14 -> margin-right: 56px;
  Widget mr14() => Container(margin: const EdgeInsets.only(right: 56), child: this);
  
  /// mr-16 -> margin-right: 64px;
  Widget mr16() => Container(margin: const EdgeInsets.only(right: 64), child: this);
  
  /// mr-20 -> margin-right: 80px;
  Widget mr20() => Container(margin: const EdgeInsets.only(right: 80), child: this);
  
  /// mr-24 -> margin-right: 96px;
  Widget mr24() => Container(margin: const EdgeInsets.only(right: 96), child: this);
  
  /// mr-28 -> margin-right: 112px;
  Widget mr28() => Container(margin: const EdgeInsets.only(right: 112), child: this);
  
  /// mr-32 -> margin-right: 128px;
  Widget mr32() => Container(margin: const EdgeInsets.only(right: 128), child: this);
  
  /// mr-36 -> margin-right: 144px;
  Widget mr36() => Container(margin: const EdgeInsets.only(right: 144), child: this);
  
  /// mr-40 -> margin-right: 160px;
  Widget mr40() => Container(margin: const EdgeInsets.only(right: 160), child: this);
  
  /// mr-44 -> margin-right: 176px;
  Widget mr44() => Container(margin: const EdgeInsets.only(right: 176), child: this);
  
  /// mr-48 -> margin-right: 192px;
  Widget mr48() => Container(margin: const EdgeInsets.only(right: 192), child: this);
  
  /// mr-52 -> margin-right: 208px;
  Widget mr52() => Container(margin: const EdgeInsets.only(right: 208), child: this);
  
  /// mr-56 -> margin-right: 224px;
  Widget mr56() => Container(margin: const EdgeInsets.only(right: 224), child: this);
  
  /// mr-60 -> margin-right: 240px;
  Widget mr60() => Container(margin: const EdgeInsets.only(right: 240), child: this);
  
  /// mr-64 -> margin-right: 256px;
  Widget mr64() => Container(margin: const EdgeInsets.only(right: 256), child: this);
  
  /// mr-72 -> margin-right: 288px;
  Widget mr72() => Container(margin: const EdgeInsets.only(right: 288), child: this);
  
  /// mr-80 -> margin-right: 320px;
  Widget mr80() => Container(margin: const EdgeInsets.only(right: 320), child: this);
  
  /// mr-96 -> margin-right: 384px;
  Widget mr96() => Container(margin: const EdgeInsets.only(right: 384), child: this);
  
  /// mr-auto -> margin-right: auto;
  Widget mrAuto() => Container(margin: const EdgeInsets.only(right: double.infinity), child: this);

  // === mb-<number> utilities (bottom margin) ===
  /// mb-0 -> margin-bottom: 0;
  Widget mb0() => Container(margin: const EdgeInsets.only(bottom: 0), child: this);
  
  /// mb-px -> margin-bottom: 1px;
  Widget mbPx() => Container(margin: const EdgeInsets.only(bottom: 1), child: this);
  
  /// mb-0.5 -> margin-bottom: 2px;
  Widget mb0_5() => Container(margin: const EdgeInsets.only(bottom: 2), child: this);
  
  /// mb-1 -> margin-bottom: 4px;
  Widget mb1() => Container(margin: const EdgeInsets.only(bottom: 4), child: this);
  
  /// mb-1.5 -> margin-bottom: 6px;
  Widget mb1_5() => Container(margin: const EdgeInsets.only(bottom: 6), child: this);
  
  /// mb-2 -> margin-bottom: 8px;
  Widget mb2() => Container(margin: const EdgeInsets.only(bottom: 8), child: this);
  
  /// mb-2.5 -> margin-bottom: 10px;
  Widget mb2_5() => Container(margin: const EdgeInsets.only(bottom: 10), child: this);
  
  /// mb-3 -> margin-bottom: 12px;
  Widget mb3() => Container(margin: const EdgeInsets.only(bottom: 12), child: this);
  
  /// mb-3.5 -> margin-bottom: 14px;
  Widget mb3_5() => Container(margin: const EdgeInsets.only(bottom: 14), child: this);
  
  /// mb-4 -> margin-bottom: 16px;
  Widget mb4() => Container(margin: const EdgeInsets.only(bottom: 16), child: this);
  
  /// mb-5 -> margin-bottom: 20px;
  Widget mb5() => Container(margin: const EdgeInsets.only(bottom: 20), child: this);
  
  /// mb-6 -> margin-bottom: 24px;
  Widget mb6() => Container(margin: const EdgeInsets.only(bottom: 24), child: this);
  
  /// mb-7 -> margin-bottom: 28px;
  Widget mb7() => Container(margin: const EdgeInsets.only(bottom: 28), child: this);
  
  /// mb-8 -> margin-bottom: 32px;
  Widget mb8() => Container(margin: const EdgeInsets.only(bottom: 32), child: this);
  
  /// mb-9 -> margin-bottom: 36px;
  Widget mb9() => Container(margin: const EdgeInsets.only(bottom: 36), child: this);
  
  /// mb-10 -> margin-bottom: 40px;
  Widget mb10() => Container(margin: const EdgeInsets.only(bottom: 40), child: this);
  
  /// mb-11 -> margin-bottom: 44px;
  Widget mb11() => Container(margin: const EdgeInsets.only(bottom: 44), child: this);
  
  /// mb-12 -> margin-bottom: 48px;
  Widget mb12() => Container(margin: const EdgeInsets.only(bottom: 48), child: this);
  
  /// mb-14 -> margin-bottom: 56px;
  Widget mb14() => Container(margin: const EdgeInsets.only(bottom: 56), child: this);
  
  /// mb-16 -> margin-bottom: 64px;
  Widget mb16() => Container(margin: const EdgeInsets.only(bottom: 64), child: this);
  
  /// mb-20 -> margin-bottom: 80px;
  Widget mb20() => Container(margin: const EdgeInsets.only(bottom: 80), child: this);
  
  /// mb-24 -> margin-bottom: 96px;
  Widget mb24() => Container(margin: const EdgeInsets.only(bottom: 96), child: this);
  
  /// mb-28 -> margin-bottom: 112px;
  Widget mb28() => Container(margin: const EdgeInsets.only(bottom: 112), child: this);
  
  /// mb-32 -> margin-bottom: 128px;
  Widget mb32() => Container(margin: const EdgeInsets.only(bottom: 128), child: this);
  
  /// mb-36 -> margin-bottom: 144px;
  Widget mb36() => Container(margin: const EdgeInsets.only(bottom: 144), child: this);
  
  /// mb-40 -> margin-bottom: 160px;
  Widget mb40() => Container(margin: const EdgeInsets.only(bottom: 160), child: this);
  
  /// mb-44 -> margin-bottom: 176px;
  Widget mb44() => Container(margin: const EdgeInsets.only(bottom: 176), child: this);
  
  /// mb-48 -> margin-bottom: 192px;
  Widget mb48() => Container(margin: const EdgeInsets.only(bottom: 192), child: this);
  
  /// mb-52 -> margin-bottom: 208px;
  Widget mb52() => Container(margin: const EdgeInsets.only(bottom: 208), child: this);
  
  /// mb-56 -> margin-bottom: 224px;
  Widget mb56() => Container(margin: const EdgeInsets.only(bottom: 224), child: this);
  
  /// mb-60 -> margin-bottom: 240px;
  Widget mb60() => Container(margin: const EdgeInsets.only(bottom: 240), child: this);
  
  /// mb-64 -> margin-bottom: 256px;
  Widget mb64() => Container(margin: const EdgeInsets.only(bottom: 256), child: this);
  
  /// mb-72 -> margin-bottom: 288px;
  Widget mb72() => Container(margin: const EdgeInsets.only(bottom: 288), child: this);
  
  /// mb-80 -> margin-bottom: 320px;
  Widget mb80() => Container(margin: const EdgeInsets.only(bottom: 320), child: this);
  
  /// mb-96 -> margin-bottom: 384px;
  Widget mb96() => Container(margin: const EdgeInsets.only(bottom: 384), child: this);
  
  /// mb-auto -> margin-bottom: auto;
  Widget mbAuto() => Container(margin: const EdgeInsets.only(bottom: double.infinity), child: this);

  // === ml-<number> utilities (left margin) ===
  /// ml-0 -> margin-left: 0;
  Widget ml0() => Container(margin: const EdgeInsets.only(left: 0), child: this);
  
  /// ml-px -> margin-left: 1px;
  Widget mlPx() => Container(margin: const EdgeInsets.only(left: 1), child: this);
  
  /// ml-0.5 -> margin-left: 2px;
  Widget ml0_5() => Container(margin: const EdgeInsets.only(left: 2), child: this);
  
  /// ml-1 -> margin-left: 4px;
  Widget ml1() => Container(margin: const EdgeInsets.only(left: 4), child: this);
  
  /// ml-1.5 -> margin-left: 6px;
  Widget ml1_5() => Container(margin: const EdgeInsets.only(left: 6), child: this);
  
  /// ml-2 -> margin-left: 8px;
  Widget ml2() => Container(margin: const EdgeInsets.only(left: 8), child: this);
  
  /// ml-2.5 -> margin-left: 10px;
  Widget ml2_5() => Container(margin: const EdgeInsets.only(left: 10), child: this);
  
  /// ml-3 -> margin-left: 12px;
  Widget ml3() => Container(margin: const EdgeInsets.only(left: 12), child: this);
  
  /// ml-3.5 -> margin-left: 14px;
  Widget ml3_5() => Container(margin: const EdgeInsets.only(left: 14), child: this);
  
  /// ml-4 -> margin-left: 16px;
  Widget ml4() => Container(margin: const EdgeInsets.only(left: 16), child: this);
  
  /// ml-5 -> margin-left: 20px;
  Widget ml5() => Container(margin: const EdgeInsets.only(left: 20), child: this);
  
  /// ml-6 -> margin-left: 24px;
  Widget ml6() => Container(margin: const EdgeInsets.only(left: 24), child: this);
  
  /// ml-7 -> margin-left: 28px;
  Widget ml7() => Container(margin: const EdgeInsets.only(left: 28), child: this);
  
  /// ml-8 -> margin-left: 32px;
  Widget ml8() => Container(margin: const EdgeInsets.only(left: 32), child: this);
  
  /// ml-9 -> margin-left: 36px;
  Widget ml9() => Container(margin: const EdgeInsets.only(left: 36), child: this);
  
  /// ml-10 -> margin-left: 40px;
  Widget ml10() => Container(margin: const EdgeInsets.only(left: 40), child: this);
  
  /// ml-11 -> margin-left: 44px;
  Widget ml11() => Container(margin: const EdgeInsets.only(left: 44), child: this);
  
  /// ml-12 -> margin-left: 48px;
  Widget ml12() => Container(margin: const EdgeInsets.only(left: 48), child: this);
  
  /// ml-14 -> margin-left: 56px;
  Widget ml14() => Container(margin: const EdgeInsets.only(left: 56), child: this);
  
  /// ml-16 -> margin-left: 64px;
  Widget ml16() => Container(margin: const EdgeInsets.only(left: 64), child: this);
  
  /// ml-20 -> margin-left: 80px;
  Widget ml20() => Container(margin: const EdgeInsets.only(left: 80), child: this);
  
  /// ml-24 -> margin-left: 96px;
  Widget ml24() => Container(margin: const EdgeInsets.only(left: 96), child: this);
  
  /// ml-28 -> margin-left: 112px;
  Widget ml28() => Container(margin: const EdgeInsets.only(left: 112), child: this);
  
  /// ml-32 -> margin-left: 128px;
  Widget ml32() => Container(margin: const EdgeInsets.only(left: 128), child: this);
  
  /// ml-36 -> margin-left: 144px;
  Widget ml36() => Container(margin: const EdgeInsets.only(left: 144), child: this);
  
  /// ml-40 -> margin-left: 160px;
  Widget ml40() => Container(margin: const EdgeInsets.only(left: 160), child: this);
  
  /// ml-44 -> margin-left: 176px;
  Widget ml44() => Container(margin: const EdgeInsets.only(left: 176), child: this);
  
  /// ml-48 -> margin-left: 192px;
  Widget ml48() => Container(margin: const EdgeInsets.only(left: 192), child: this);
  
  /// ml-52 -> margin-left: 208px;
  Widget ml52() => Container(margin: const EdgeInsets.only(left: 208), child: this);
  
  /// ml-56 -> margin-left: 224px;
  Widget ml56() => Container(margin: const EdgeInsets.only(left: 224), child: this);
  
  /// ml-60 -> margin-left: 240px;
  Widget ml60() => Container(margin: const EdgeInsets.only(left: 240), child: this);
  
  /// ml-64 -> margin-left: 256px;
  Widget ml64() => Container(margin: const EdgeInsets.only(left: 256), child: this);
  
  /// ml-72 -> margin-left: 288px;
  Widget ml72() => Container(margin: const EdgeInsets.only(left: 288), child: this);
  
  /// ml-80 -> margin-left: 320px;
  Widget ml80() => Container(margin: const EdgeInsets.only(left: 320), child: this);
  
  /// ml-96 -> margin-left: 384px;
  Widget ml96() => Container(margin: const EdgeInsets.only(left: 384), child: this);
  
  /// ml-auto -> margin-left: auto;
  Widget mlAuto() => Container(margin: const EdgeInsets.only(left: double.infinity), child: this);

  // === ms-<number> utilities (margin-inline-start) ===
  /// ms-0 -> margin-inline-start: 0;
  Widget ms0() => Container(margin: const EdgeInsetsDirectional.only(start: 0), child: this);
  
  /// ms-px -> margin-inline-start: 1px;
  Widget msPx() => Container(margin: const EdgeInsetsDirectional.only(start: 1), child: this);
  
  /// ms-0.5 -> margin-inline-start: 2px;
  Widget ms0_5() => Container(margin: const EdgeInsetsDirectional.only(start: 2), child: this);
  
  /// ms-1 -> margin-inline-start: 4px;
  Widget ms1() => Container(margin: const EdgeInsetsDirectional.only(start: 4), child: this);
  
  /// ms-1.5 -> margin-inline-start: 6px;
  Widget ms1_5() => Container(margin: const EdgeInsetsDirectional.only(start: 6), child: this);
  
  /// ms-2 -> margin-inline-start: 8px;
  Widget ms2() => Container(margin: const EdgeInsetsDirectional.only(start: 8), child: this);
  
  /// ms-2.5 -> margin-inline-start: 10px;
  Widget ms2_5() => Container(margin: const EdgeInsetsDirectional.only(start: 10), child: this);
  
  /// ms-3 -> margin-inline-start: 12px;
  Widget ms3() => Container(margin: const EdgeInsetsDirectional.only(start: 12), child: this);
  
  /// ms-3.5 -> margin-inline-start: 14px;
  Widget ms3_5() => Container(margin: const EdgeInsetsDirectional.only(start: 14), child: this);
  
  /// ms-4 -> margin-inline-start: 16px;
  Widget ms4() => Container(margin: const EdgeInsetsDirectional.only(start: 16), child: this);
  
  /// ms-5 -> margin-inline-start: 20px;
  Widget ms5() => Container(margin: const EdgeInsetsDirectional.only(start: 20), child: this);
  
  /// ms-6 -> margin-inline-start: 24px;
  Widget ms6() => Container(margin: const EdgeInsetsDirectional.only(start: 24), child: this);
  
  /// ms-7 -> margin-inline-start: 28px;
  Widget ms7() => Container(margin: const EdgeInsetsDirectional.only(start: 28), child: this);
  
  /// ms-8 -> margin-inline-start: 32px;
  Widget ms8() => Container(margin: const EdgeInsetsDirectional.only(start: 32), child: this);
  
  /// ms-9 -> margin-inline-start: 36px;
  Widget ms9() => Container(margin: const EdgeInsetsDirectional.only(start: 36), child: this);
  
  /// ms-10 -> margin-inline-start: 40px;
  Widget ms10() => Container(margin: const EdgeInsetsDirectional.only(start: 40), child: this);
  
  /// ms-11 -> margin-inline-start: 44px;
  Widget ms11() => Container(margin: const EdgeInsetsDirectional.only(start: 44), child: this);
  
  /// ms-12 -> margin-inline-start: 48px;
  Widget ms12() => Container(margin: const EdgeInsetsDirectional.only(start: 48), child: this);
  
  /// ms-14 -> margin-inline-start: 56px;
  Widget ms14() => Container(margin: const EdgeInsetsDirectional.only(start: 56), child: this);
  
  /// ms-16 -> margin-inline-start: 64px;
  Widget ms16() => Container(margin: const EdgeInsetsDirectional.only(start: 64), child: this);
  
  /// ms-20 -> margin-inline-start: 80px;
  Widget ms20() => Container(margin: const EdgeInsetsDirectional.only(start: 80), child: this);
  
  /// ms-24 -> margin-inline-start: 96px;
  Widget ms24() => Container(margin: const EdgeInsetsDirectional.only(start: 96), child: this);
  
  /// ms-28 -> margin-inline-start: 112px;
  Widget ms28() => Container(margin: const EdgeInsetsDirectional.only(start: 112), child: this);
  
  /// ms-32 -> margin-inline-start: 128px;
  Widget ms32() => Container(margin: const EdgeInsetsDirectional.only(start: 128), child: this);
  
  /// ms-36 -> margin-inline-start: 144px;
  Widget ms36() => Container(margin: const EdgeInsetsDirectional.only(start: 144), child: this);
  
  /// ms-40 -> margin-inline-start: 160px;
  Widget ms40() => Container(margin: const EdgeInsetsDirectional.only(start: 160), child: this);
  
  /// ms-44 -> margin-inline-start: 176px;
  Widget ms44() => Container(margin: const EdgeInsetsDirectional.only(start: 176), child: this);
  
  /// ms-48 -> margin-inline-start: 192px;
  Widget ms48() => Container(margin: const EdgeInsetsDirectional.only(start: 192), child: this);
  
  /// ms-52 -> margin-inline-start: 208px;
  Widget ms52() => Container(margin: const EdgeInsetsDirectional.only(start: 208), child: this);
  
  /// ms-56 -> margin-inline-start: 224px;
  Widget ms56() => Container(margin: const EdgeInsetsDirectional.only(start: 224), child: this);
  
  /// ms-60 -> margin-inline-start: 240px;
  Widget ms60() => Container(margin: const EdgeInsetsDirectional.only(start: 240), child: this);
  
  /// ms-64 -> margin-inline-start: 256px;
  Widget ms64() => Container(margin: const EdgeInsetsDirectional.only(start: 256), child: this);
  
  /// ms-72 -> margin-inline-start: 288px;
  Widget ms72() => Container(margin: const EdgeInsetsDirectional.only(start: 288), child: this);
  
  /// ms-80 -> margin-inline-start: 320px;
  Widget ms80() => Container(margin: const EdgeInsetsDirectional.only(start: 320), child: this);
  
  /// ms-96 -> margin-inline-start: 384px;
  Widget ms96() => Container(margin: const EdgeInsetsDirectional.only(start: 384), child: this);
  
  /// ms-auto -> margin-inline-start: auto;
  Widget msAuto() => Container(margin: const EdgeInsetsDirectional.only(start: double.infinity), child: this);

  // === me-<number> utilities (margin-inline-end) ===
  /// me-0 -> margin-inline-end: 0;
  Widget me0() => Container(margin: const EdgeInsetsDirectional.only(end: 0), child: this);
  
  /// me-px -> margin-inline-end: 1px;
  Widget mePx() => Container(margin: const EdgeInsetsDirectional.only(end: 1), child: this);
  
  /// me-0.5 -> margin-inline-end: 2px;
  Widget me0_5() => Container(margin: const EdgeInsetsDirectional.only(end: 2), child: this);
  
  /// me-1 -> margin-inline-end: 4px;
  Widget me1() => Container(margin: const EdgeInsetsDirectional.only(end: 4), child: this);
  
  /// me-1.5 -> margin-inline-end: 6px;
  Widget me1_5() => Container(margin: const EdgeInsetsDirectional.only(end: 6), child: this);
  
  /// me-2 -> margin-inline-end: 8px;
  Widget me2() => Container(margin: const EdgeInsetsDirectional.only(end: 8), child: this);
  
  /// me-2.5 -> margin-inline-end: 10px;
  Widget me2_5() => Container(margin: const EdgeInsetsDirectional.only(end: 10), child: this);
  
  /// me-3 -> margin-inline-end: 12px;
  Widget me3() => Container(margin: const EdgeInsetsDirectional.only(end: 12), child: this);
  
  /// me-3.5 -> margin-inline-end: 14px;
  Widget me3_5() => Container(margin: const EdgeInsetsDirectional.only(end: 14), child: this);
  
  /// me-4 -> margin-inline-end: 16px;
  Widget me4() => Container(margin: const EdgeInsetsDirectional.only(end: 16), child: this);
  
  /// me-5 -> margin-inline-end: 20px;
  Widget me5() => Container(margin: const EdgeInsetsDirectional.only(end: 20), child: this);
  
  /// me-6 -> margin-inline-end: 24px;
  Widget me6() => Container(margin: const EdgeInsetsDirectional.only(end: 24), child: this);
  
  /// me-7 -> margin-inline-end: 28px;
  Widget me7() => Container(margin: const EdgeInsetsDirectional.only(end: 28), child: this);
  
  /// me-8 -> margin-inline-end: 32px;
  Widget me8() => Container(margin: const EdgeInsetsDirectional.only(end: 32), child: this);
  
  /// me-9 -> margin-inline-end: 36px;
  Widget me9() => Container(margin: const EdgeInsetsDirectional.only(end: 36), child: this);
  
  /// me-10 -> margin-inline-end: 40px;
  Widget me10() => Container(margin: const EdgeInsetsDirectional.only(end: 40), child: this);
  
  /// me-11 -> margin-inline-end: 44px;
  Widget me11() => Container(margin: const EdgeInsetsDirectional.only(end: 44), child: this);
  
  /// me-12 -> margin-inline-end: 48px;
  Widget me12() => Container(margin: const EdgeInsetsDirectional.only(end: 48), child: this);
  
  /// me-14 -> margin-inline-end: 56px;
  Widget me14() => Container(margin: const EdgeInsetsDirectional.only(end: 56), child: this);
  
  /// me-16 -> margin-inline-end: 64px;
  Widget me16() => Container(margin: const EdgeInsetsDirectional.only(end: 64), child: this);
  
  /// me-20 -> margin-inline-end: 80px;
  Widget me20() => Container(margin: const EdgeInsetsDirectional.only(end: 80), child: this);
  
  /// me-24 -> margin-inline-end: 96px;
  Widget me24() => Container(margin: const EdgeInsetsDirectional.only(end: 96), child: this);
  
  /// me-28 -> margin-inline-end: 112px;
  Widget me28() => Container(margin: const EdgeInsetsDirectional.only(end: 112), child: this);
  
  /// me-32 -> margin-inline-end: 128px;
  Widget me32() => Container(margin: const EdgeInsetsDirectional.only(end: 128), child: this);
  
  /// me-36 -> margin-inline-end: 144px;
  Widget me36() => Container(margin: const EdgeInsetsDirectional.only(end: 144), child: this);
  
  /// me-40 -> margin-inline-end: 160px;
  Widget me40() => Container(margin: const EdgeInsetsDirectional.only(end: 160), child: this);
  
  /// me-44 -> margin-inline-end: 176px;
  Widget me44() => Container(margin: const EdgeInsetsDirectional.only(end: 176), child: this);
  
  /// me-48 -> margin-inline-end: 192px;
  Widget me48() => Container(margin: const EdgeInsetsDirectional.only(end: 192), child: this);
  
  /// me-52 -> margin-inline-end: 208px;
  Widget me52() => Container(margin: const EdgeInsetsDirectional.only(end: 208), child: this);
  
  /// me-56 -> margin-inline-end: 224px;
  Widget me56() => Container(margin: const EdgeInsetsDirectional.only(end: 224), child: this);
  
  /// me-60 -> margin-inline-end: 240px;
  Widget me60() => Container(margin: const EdgeInsetsDirectional.only(end: 240), child: this);
  
  /// me-64 -> margin-inline-end: 256px;
  Widget me64() => Container(margin: const EdgeInsetsDirectional.only(end: 256), child: this);
  
  /// me-72 -> margin-inline-end: 288px;
  Widget me72() => Container(margin: const EdgeInsetsDirectional.only(end: 288), child: this);
  
  /// me-80 -> margin-inline-end: 320px;
  Widget me80() => Container(margin: const EdgeInsetsDirectional.only(end: 320), child: this);
  
  /// me-96 -> margin-inline-end: 384px;
  Widget me96() => Container(margin: const EdgeInsetsDirectional.only(end: 384), child: this);
  
  /// me-auto -> margin-inline-end: auto;
  Widget meAuto() => Container(margin: const EdgeInsetsDirectional.only(end: double.infinity), child: this);

  // === m-auto utility ===
  /// m-auto -> margin: auto; (全方向自动边距，在Flutter中主要用于居中)
  Widget mAuto() => Center(child: this);

  // === Custom margin utilities ===
  /// m-[<value>] -> margin: <value>; (自定义四周margin)
  Widget mCustom(double margin) => Container(margin: EdgeInsets.all(margin), child: this);
  
  /// mx-[<value>] -> margin-inline: <value>; (自定义水平margin)
  Widget mxCustom(double margin) => Container(margin: EdgeInsets.symmetric(horizontal: margin), child: this);
  
  /// my-[<value>] -> margin-block: <value>; (自定义垂直margin)
  Widget myCustom(double margin) => Container(margin: EdgeInsets.symmetric(vertical: margin), child: this);
  
  /// mt-[<value>] -> margin-top: <value>; (自定义顶部margin)
  Widget mtCustom(double margin) => Container(margin: EdgeInsets.only(top: margin), child: this);
  
  /// mr-[<value>] -> margin-right: <value>; (自定义右侧margin)
  Widget mrCustom(double margin) => Container(margin: EdgeInsets.only(right: margin), child: this);
  
  /// mb-[<value>] -> margin-bottom: <value>; (自定义底部margin)
  Widget mbCustom(double margin) => Container(margin: EdgeInsets.only(bottom: margin), child: this);
  
  /// ml-[<value>] -> margin-left: <value>; (自定义左侧margin)
  Widget mlCustom(double margin) => Container(margin: EdgeInsets.only(left: margin), child: this);
  
  /// ms-[<value>] -> margin-inline-start: <value>; (自定义逻辑开始margin)
  Widget msCustom(double margin) => Container(margin: EdgeInsetsDirectional.only(start: margin), child: this);
  
  /// me-[<value>] -> margin-inline-end: <value>; (自定义逻辑结束margin)
  Widget meCustom(double margin) => Container(margin: EdgeInsetsDirectional.only(end: margin), child: this);

  // === Combined margin utilities ===
  /// 自定义非对称margin (top, right, bottom, left)
  Widget mAll({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) => Container(
        margin: EdgeInsets.only(
          top: top,
          right: right,
          bottom: bottom,
          left: left,
        ),
        child: this,
      );
  
  /// 自定义对称margin (horizontal, vertical)
  Widget mSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) => Container(
        margin: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: this,
      );
}

/// Flex-friendly margin extensions that return Padding instead of Container
/// These are safer to use with Expanded, Flexible, and other Flex children
extension FlexSafeMarginExt on Widget {
  
  // === Flex-safe margin methods using Padding ===
  
  /// Flex-safe ml-4 -> margin-left: 16px (using Padding)
  Widget mlSafe4() => Padding(
    padding: const EdgeInsets.only(left: 16),
    child: this,
  );
  
  /// Flex-safe mr-4 -> margin-right: 16px (using Padding)  
  Widget mrSafe4() => Padding(
    padding: const EdgeInsets.only(right: 16),
    child: this,
  );
  
  /// Flex-safe mt-4 -> margin-top: 16px (using Padding)
  Widget mtSafe4() => Padding(
    padding: const EdgeInsets.only(top: 16),
    child: this,
  );
  
  /// Flex-safe mb-4 -> margin-bottom: 16px (using Padding)
  Widget mbSafe4() => Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: this,
  );
  
  /// Flex-safe margin methods for common values
  Widget mlSafe1() => Padding(padding: const EdgeInsets.only(left: 4), child: this);
  Widget mlSafe2() => Padding(padding: const EdgeInsets.only(left: 8), child: this);
  Widget mlSafe3() => Padding(padding: const EdgeInsets.only(left: 12), child: this);
  Widget mlSafe6() => Padding(padding: const EdgeInsets.only(left: 24), child: this);
  Widget mlSafe8() => Padding(padding: const EdgeInsets.only(left: 32), child: this);
  
  Widget mrSafe1() => Padding(padding: const EdgeInsets.only(right: 4), child: this);
  Widget mrSafe2() => Padding(padding: const EdgeInsets.only(right: 8), child: this);
  Widget mrSafe3() => Padding(padding: const EdgeInsets.only(right: 12), child: this);
  Widget mrSafe6() => Padding(padding: const EdgeInsets.only(right: 24), child: this);
  Widget mrSafe8() => Padding(padding: const EdgeInsets.only(right: 32), child: this);
  
  Widget mtSafe1() => Padding(padding: const EdgeInsets.only(top: 4), child: this);
  Widget mtSafe2() => Padding(padding: const EdgeInsets.only(top: 8), child: this);
  Widget mtSafe3() => Padding(padding: const EdgeInsets.only(top: 12), child: this);
  Widget mtSafe6() => Padding(padding: const EdgeInsets.only(top: 24), child: this);
  Widget mtSafe8() => Padding(padding: const EdgeInsets.only(top: 32), child: this);
  
  Widget mbSafe1() => Padding(padding: const EdgeInsets.only(bottom: 4), child: this);
  Widget mbSafe2() => Padding(padding: const EdgeInsets.only(bottom: 8), child: this);
  Widget mbSafe3() => Padding(padding: const EdgeInsets.only(bottom: 12), child: this);
  Widget mbSafe6() => Padding(padding: const EdgeInsets.only(bottom: 24), child: this);
  Widget mbSafe8() => Padding(padding: const EdgeInsets.only(bottom: 32), child: this);
  
  /// Flex-safe custom margin
  Widget mSafeCustom({
    double? left,
    double? right, 
    double? top,
    double? bottom,
  }) => Padding(
    padding: EdgeInsets.only(
      left: left ?? 0,
      right: right ?? 0,
      top: top ?? 0,
      bottom: bottom ?? 0,
    ),
    child: this,
  );
}


