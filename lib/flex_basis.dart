import 'package:flutter/material.dart';

/// Tailwind CSS Flex Basis utilities for Flutter
/// Utilities for controlling the initial size of flex items.
extension FlexBasisExt on Widget {
  
  // === basis-<number> utilities (spacing scale) ===
  /// basis-0 -> flex-basis: 0;
  Widget basis0() => Flexible(flex: 0, child: SizedBox(width: 0, child: this));
  
  /// basis-px -> flex-basis: 1px;
  Widget basisPx() => Flexible(flex: 0, child: SizedBox(width: 1, child: this));
  
  /// basis-0.5 -> flex-basis: 2px;
  Widget basis0_5() => Flexible(flex: 0, child: SizedBox(width: 2, child: this));
  
  /// basis-1 -> flex-basis: 4px;
  Widget basis1() => Flexible(flex: 0, child: SizedBox(width: 4, child: this));
  
  /// basis-1.5 -> flex-basis: 6px;
  Widget basis1_5() => Flexible(flex: 0, child: SizedBox(width: 6, child: this));
  
  /// basis-2 -> flex-basis: 8px;
  Widget basis2() => Flexible(flex: 0, child: SizedBox(width: 8, child: this));
  
  /// basis-2.5 -> flex-basis: 10px;
  Widget basis2_5() => Flexible(flex: 0, child: SizedBox(width: 10, child: this));
  
  /// basis-3 -> flex-basis: 12px;
  Widget basis3() => Flexible(flex: 0, child: SizedBox(width: 12, child: this));
  
  /// basis-3.5 -> flex-basis: 14px;
  Widget basis3_5() => Flexible(flex: 0, child: SizedBox(width: 14, child: this));
  
  /// basis-4 -> flex-basis: 16px;
  Widget basis4() => Flexible(flex: 0, child: SizedBox(width: 16, child: this));
  
  /// basis-5 -> flex-basis: 20px;
  Widget basis5() => Flexible(flex: 0, child: SizedBox(width: 20, child: this));
  
  /// basis-6 -> flex-basis: 24px;
  Widget basis6() => Flexible(flex: 0, child: SizedBox(width: 24, child: this));
  
  /// basis-7 -> flex-basis: 28px;
  Widget basis7() => Flexible(flex: 0, child: SizedBox(width: 28, child: this));
  
  /// basis-8 -> flex-basis: 32px;
  Widget basis8() => Flexible(flex: 0, child: SizedBox(width: 32, child: this));
  
  /// basis-9 -> flex-basis: 36px;
  Widget basis9() => Flexible(flex: 0, child: SizedBox(width: 36, child: this));
  
  /// basis-10 -> flex-basis: 40px;
  Widget basis10() => Flexible(flex: 0, child: SizedBox(width: 40, child: this));
  
  /// basis-11 -> flex-basis: 44px;
  Widget basis11() => Flexible(flex: 0, child: SizedBox(width: 44, child: this));
  
  /// basis-12 -> flex-basis: 48px;
  Widget basis12() => Flexible(flex: 0, child: SizedBox(width: 48, child: this));
  
  /// basis-14 -> flex-basis: 56px;
  Widget basis14() => Flexible(flex: 0, child: SizedBox(width: 56, child: this));
  
  /// basis-16 -> flex-basis: 64px;
  Widget basis16() => Flexible(flex: 0, child: SizedBox(width: 64, child: this));
  
  /// basis-20 -> flex-basis: 80px;
  Widget basis20() => Flexible(flex: 0, child: SizedBox(width: 80, child: this));
  
  /// basis-24 -> flex-basis: 96px;
  Widget basis24() => Flexible(flex: 0, child: SizedBox(width: 96, child: this));
  
  /// basis-28 -> flex-basis: 112px;
  Widget basis28() => Flexible(flex: 0, child: SizedBox(width: 112, child: this));
  
  /// basis-32 -> flex-basis: 128px;
  Widget basis32() => Flexible(flex: 0, child: SizedBox(width: 128, child: this));
  
  /// basis-36 -> flex-basis: 144px;
  Widget basis36() => Flexible(flex: 0, child: SizedBox(width: 144, child: this));
  
  /// basis-40 -> flex-basis: 160px;
  Widget basis40() => Flexible(flex: 0, child: SizedBox(width: 160, child: this));
  
  /// basis-44 -> flex-basis: 176px;
  Widget basis44() => Flexible(flex: 0, child: SizedBox(width: 176, child: this));
  
  /// basis-48 -> flex-basis: 192px;
  Widget basis48() => Flexible(flex: 0, child: SizedBox(width: 192, child: this));
  
  /// basis-52 -> flex-basis: 208px;
  Widget basis52() => Flexible(flex: 0, child: SizedBox(width: 208, child: this));
  
  /// basis-56 -> flex-basis: 224px;
  Widget basis56() => Flexible(flex: 0, child: SizedBox(width: 224, child: this));
  
  /// basis-60 -> flex-basis: 240px;
  Widget basis60() => Flexible(flex: 0, child: SizedBox(width: 240, child: this));
  
  /// basis-64 -> flex-basis: 256px;
  Widget basis64() => Flexible(flex: 0, child: SizedBox(width: 256, child: this));
  
  /// basis-72 -> flex-basis: 288px;
  Widget basis72() => Flexible(flex: 0, child: SizedBox(width: 288, child: this));
  
  /// basis-80 -> flex-basis: 320px;
  Widget basis80() => Flexible(flex: 0, child: SizedBox(width: 320, child: this));
  
  /// basis-96 -> flex-basis: 384px;
  Widget basis96() => Flexible(flex: 0, child: SizedBox(width: 384, child: this));

  // === basis-<fraction> utilities (percentages) ===
  /// basis-1/2 -> flex-basis: 50%;
  Widget basisHalf() => Expanded(flex: 1, child: this);
  
  /// basis-1/3 -> flex-basis: 33.333333%;
  Widget basis1Of3() => Expanded(flex: 1, child: this);
  
  /// basis-2/3 -> flex-basis: 66.666667%;
  Widget basis2Of3() => Expanded(flex: 2, child: this);
  
  /// basis-1/4 -> flex-basis: 25%;
  Widget basis1Of4() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return Flexible(
          flex: 0,
          child: SizedBox(width: availableWidth * 0.25, child: this),
        );
      },
    );
  }
  
  /// basis-3/4 -> flex-basis: 75%;
  Widget basis3Of4() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return Flexible(
          flex: 0,
          child: SizedBox(width: availableWidth * 0.75, child: this),
        );
      },
    );
  }

  // === Container scale utilities ===
  /// basis-3xs -> flex-basis: 256px (16rem);
  Widget basis3xs() => Flexible(flex: 0, child: SizedBox(width: 256, child: this));
  
  /// basis-2xs -> flex-basis: 288px (18rem);
  Widget basis2xs() => Flexible(flex: 0, child: SizedBox(width: 288, child: this));
  
  /// basis-xs -> flex-basis: 320px (20rem);
  Widget basisXs() => Flexible(flex: 0, child: SizedBox(width: 320, child: this));
  
  /// basis-sm -> flex-basis: 384px (24rem);
  Widget basisSm() => Flexible(flex: 0, child: SizedBox(width: 384, child: this));
  
  /// basis-md -> flex-basis: 448px (28rem);
  Widget basisMd() => Flexible(flex: 0, child: SizedBox(width: 448, child: this));
  
  /// basis-lg -> flex-basis: 512px (32rem);
  Widget basisLg() => Flexible(flex: 0, child: SizedBox(width: 512, child: this));
  
  /// basis-xl -> flex-basis: 576px (36rem);
  Widget basisXl() => Flexible(flex: 0, child: SizedBox(width: 576, child: this));
  
  /// basis-2xl -> flex-basis: 672px (42rem);
  Widget basis2xl() => Flexible(flex: 0, child: SizedBox(width: 672, child: this));
  
  /// basis-3xl -> flex-basis: 768px (48rem);
  Widget basis3xl() => Flexible(flex: 0, child: SizedBox(width: 768, child: this));
  
  /// basis-4xl -> flex-basis: 896px (56rem);
  Widget basis4xl() => Flexible(flex: 0, child: SizedBox(width: 896, child: this));
  
  /// basis-5xl -> flex-basis: 1024px (64rem);
  Widget basis5xl() => Flexible(flex: 0, child: SizedBox(width: 1024, child: this));
  
  /// basis-6xl -> flex-basis: 1152px (72rem);
  Widget basis6xl() => Flexible(flex: 0, child: SizedBox(width: 1152, child: this));
  
  /// basis-7xl -> flex-basis: 1280px (80rem);
  Widget basis7xl() => Flexible(flex: 0, child: SizedBox(width: 1280, child: this));

  // === Special utilities ===
  /// basis-auto -> flex-basis: auto;
  Widget basisAuto() => Flexible(child: this);
  
  /// basis-full -> flex-basis: 100%;
  Widget basisFull() => Expanded(child: this);

  // === Custom flex-basis utilities ===
  /// basis(double width) -> flex-basis: <value>; (自定义 flex-basis - 简洁版)
  Widget basis(double width) => Flexible(flex: 0, child: SizedBox(width: width, child: this));
  
  /// basis-[<value>] -> flex-basis: <value>; (自定义 flex-basis)
  Widget basisCustom(double width) => Flexible(flex: 0, child: SizedBox(width: width, child: this));
}