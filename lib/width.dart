import 'package:flutter/material.dart';

/// Tailwind CSS Width utilities for Flutter
/// Utilities for setting the width of an element.
extension WidthExt on Widget {
  
  // === w-<number> utilities ===
  /// w-0 -> width: 0;
  Widget w0() => SizedBox(width: 0, child: this);
  
  /// w-px -> width: 1px;
  Widget wPx() => SizedBox(width: 1, child: this);
  
  /// w-0.5 -> width: 2px;
  Widget w0_5() => SizedBox(width: 2, child: this);
  
  /// w-1 -> width: 4px;
  Widget w1() => SizedBox(width: 4, child: this);
  
  /// w-1.5 -> width: 6px;
  Widget w1_5() => SizedBox(width: 6, child: this);
  
  /// w-2 -> width: 8px;
  Widget w2() => SizedBox(width: 8, child: this);
  
  /// w-2.5 -> width: 10px;
  Widget w2_5() => SizedBox(width: 10, child: this);
  
  /// w-3 -> width: 12px;
  Widget w3() => SizedBox(width: 12, child: this);
  
  /// w-3.5 -> width: 14px;
  Widget w3_5() => SizedBox(width: 14, child: this);
  
  /// w-4 -> width: 16px;
  Widget w4() => SizedBox(width: 16, child: this);
  
  /// w-5 -> width: 20px;
  Widget w5() => SizedBox(width: 20, child: this);
  
  /// w-6 -> width: 24px;
  Widget w6() => SizedBox(width: 24, child: this);
  
  /// w-7 -> width: 28px;
  Widget w7() => SizedBox(width: 28, child: this);
  
  /// w-8 -> width: 32px;
  Widget w8() => SizedBox(width: 32, child: this);
  
  /// w-9 -> width: 36px;
  Widget w9() => SizedBox(width: 36, child: this);
  
  /// w-10 -> width: 40px;
  Widget w10() => SizedBox(width: 40, child: this);
  
  /// w-11 -> width: 44px;
  Widget w11() => SizedBox(width: 44, child: this);
  
  /// w-12 -> width: 48px;
  Widget w12() => SizedBox(width: 48, child: this);
  
  /// w-14 -> width: 56px;
  Widget w14() => SizedBox(width: 56, child: this);
  
  /// w-16 -> width: 64px;
  Widget w16() => SizedBox(width: 64, child: this);
  
  /// w-20 -> width: 80px;
  Widget w20() => SizedBox(width: 80, child: this);
  
  /// w-24 -> width: 96px;
  Widget w24() => SizedBox(width: 96, child: this);
  
  /// w-28 -> width: 112px;
  Widget w28() => SizedBox(width: 112, child: this);
  
  /// w-32 -> width: 128px;
  Widget w32() => SizedBox(width: 128, child: this);
  
  /// w-36 -> width: 144px;
  Widget w36() => SizedBox(width: 144, child: this);
  
  /// w-40 -> width: 160px;
  Widget w40() => SizedBox(width: 160, child: this);
  
  /// w-44 -> width: 176px;
  Widget w44() => SizedBox(width: 176, child: this);
  
  /// w-48 -> width: 192px;
  Widget w48() => SizedBox(width: 192, child: this);
  
  /// w-52 -> width: 208px;
  Widget w52() => SizedBox(width: 208, child: this);
  
  /// w-56 -> width: 224px;
  Widget w56() => SizedBox(width: 224, child: this);
  
  /// w-60 -> width: 240px;
  Widget w60() => SizedBox(width: 240, child: this);
  
  /// w-64 -> width: 256px;
  Widget w64() => SizedBox(width: 256, child: this);
  
  /// w-72 -> width: 288px;
  Widget w72() => SizedBox(width: 288, child: this);
  
  /// w-80 -> width: 320px;
  Widget w80() => SizedBox(width: 320, child: this);
  
  /// w-96 -> width: 384px;
  Widget w96() => SizedBox(width: 384, child: this);
  
  /// w-100 -> width: 400px;
  Widget w100() => SizedBox(width: 400, child: this);

  // === w-<fraction> utilities ===
  /// w-1/2 -> width: 50%;
  Widget wHalf() {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 使用父容器宽度，如果无限制则回退到屏幕宽度
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 0.5, child: this);
      },
    );
  }
  
  /// w-1/3 -> width: 33.333333%;
  Widget w1Of3() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth / 3, child: this);
      },
    );
  }
  
  /// w-2/3 -> width: 66.666667%;
  Widget w2Of3() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 2 / 3, child: this);
      },
    );
  }
  
  /// w-1/4 -> width: 25%;
  Widget w1Of4() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 0.25, child: this);
      },
    );
  }
  
  /// w-2/4 -> width: 50%; (same as w-1/2)
  Widget w2Of4() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 0.5, child: this);
      },
    );
  }
  
  /// w-3/4 -> width: 75%;
  Widget w3Of4() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 0.75, child: this);
      },
    );
  }
  
  /// w-1/5 -> width: 20%;
  Widget w1Of5() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 0.2, child: this);
      },
    );
  }
  
  /// w-2/5 -> width: 40%;
  Widget w2Of5() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 0.4, child: this);
      },
    );
  }
  
  /// w-3/5 -> width: 60%;
  Widget w3Of5() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 0.6, child: this);
      },
    );
  }
  
  /// w-4/5 -> width: 80%;
  Widget w4Of5() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 0.8, child: this);
      },
    );
  }
  
  /// w-1/6 -> width: 16.666667%;
  Widget w1Of6() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth / 6, child: this);
      },
    );
  }
  
  /// w-5/6 -> width: 83.333333%;
  Widget w5Of6() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 5 / 6, child: this);
      },
    );
  }
  
  /// w-1/12 -> width: 8.333333%;
  Widget w1Of12() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth / 12, child: this);
      },
    );
  }
  
  /// w-5/12 -> width: 41.666667%;
  Widget w5Of12() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 5 / 12, child: this);
      },
    );
  }
  
  /// w-7/12 -> width: 58.333333%;
  Widget w7Of12() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 7 / 12, child: this);
      },
    );
  }
  
  /// w-11/12 -> width: 91.666667%;
  Widget w11Of12() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth.isFinite 
            ? constraints.maxWidth 
            : MediaQuery.of(context).size.width;
        return SizedBox(width: availableWidth * 11 / 12, child: this);
      },
    );
  }

  // === Container scale utilities ===
  /// w-3xs -> width: 256px (16rem);
  Widget w3xs() => SizedBox(width: 256, child: this);
  
  /// w-2xs -> width: 288px (18rem);
  Widget w2xs() => SizedBox(width: 288, child: this);
  
  /// w-xs -> width: 320px (20rem);
  Widget wXs() => SizedBox(width: 320, child: this);
  
  /// w-sm -> width: 384px (24rem);
  Widget wSm() => SizedBox(width: 384, child: this);
  
  /// w-md -> width: 448px (28rem);
  Widget wMd() => SizedBox(width: 448, child: this);
  
  /// w-lg -> width: 512px (32rem);
  Widget wLg() => SizedBox(width: 512, child: this);
  
  /// w-xl -> width: 576px (36rem);
  Widget wXl() => SizedBox(width: 576, child: this);
  
  /// w-2xl -> width: 672px (42rem);
  Widget w2xl() => SizedBox(width: 672, child: this);
  
  /// w-3xl -> width: 768px (48rem);
  Widget w3xl() => SizedBox(width: 768, child: this);
  
  /// w-4xl -> width: 896px (56rem);
  Widget w4xl() => SizedBox(width: 896, child: this);
  
  /// w-5xl -> width: 1024px (64rem);
  Widget w5xl() => SizedBox(width: 1024, child: this);
  
  /// w-6xl -> width: 1152px (72rem);
  Widget w6xl() => SizedBox(width: 1152, child: this);
  
  /// w-7xl -> width: 1280px (80rem);
  Widget w7xl() => SizedBox(width: 1280, child: this);

  // === Special utilities ===
  /// w-auto -> width: auto; (在 Flutter 中返回原始 widget)
  Widget wAuto() => this;
  
  /// w-full -> width: 100%;
  Widget wFull() => SizedBox(width: double.infinity, child: this);
  
  /// w-screen -> width: 100vw; (全屏宽度)
  Widget wScreen() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: this,
        );
      },
    );
  }
  
  /// w-min -> width: min-content; (最小内容宽度)
  Widget wMin() => IntrinsicWidth(child: this);
  
  /// w-max -> width: max-content; (最大内容宽度)
  Widget wMax() => IntrinsicWidth(child: this);
  
  /// w-fit -> width: fit-content; (适合内容宽度)
  Widget wFit() => IntrinsicWidth(child: this);

  // === Custom width utilities ===
  /// w(double width) -> width: <value>; (自定义宽度 - 简洁版)
  Widget w(double width) => SizedBox(width: width, child: this);
  
  /// w-[<value>] -> width: <value>; (自定义宽度)
  Widget wCustom(double width) => SizedBox(width: width, child: this);
  
  // === Size utilities (同时设置宽度和高度) ===
  /// size-0 -> width: 0; height: 0;
  Widget size0() => const SizedBox(width: 0, height: 0);
  
  /// size-px -> width: 1px; height: 1px;
  Widget sizePx() => SizedBox(width: 1, height: 1, child: this);
  
  /// size-4 -> width: 16px; height: 16px;
  Widget size4() => SizedBox(width: 16, height: 16, child: this);
  
  /// size-6 -> width: 24px; height: 24px;
  Widget size6() => SizedBox(width: 24, height: 24, child: this);
  
  /// size-8 -> width: 32px; height: 32px;
  Widget size8() => SizedBox(width: 32, height: 32, child: this);
  
  /// size-10 -> width: 40px; height: 40px;
  Widget size10() => SizedBox(width: 40, height: 40, child: this);
  
  /// size-12 -> width: 48px; height: 48px;
  Widget size12() => SizedBox(width: 48, height: 48, child: this);
  
  /// size-16 -> width: 64px; height: 64px;
  Widget size16() => SizedBox(width: 64, height: 64, child: this);
  
  /// size-20 -> width: 80px; height: 80px;
  Widget size20() => SizedBox(width: 80, height: 80, child: this);
  
  /// size-24 -> width: 96px; height: 96px;
  Widget size24() => SizedBox(width: 96, height: 96, child: this);
  
  /// size-32 -> width: 128px; height: 128px;
  Widget size32() => SizedBox(width: 128, height: 128, child: this);
  
  /// size-40 -> width: 160px; height: 160px;
  Widget size40() => SizedBox(width: 160, height: 160, child: this);
  
  /// size-48 -> width: 192px; height: 192px;
  Widget size48() => SizedBox(width: 192, height: 192, child: this);
  
  /// size-56 -> width: 224px; height: 224px;
  Widget size56() => SizedBox(width: 224, height: 224, child: this);
  
  /// size-64 -> width: 256px; height: 256px;
  Widget size64() => SizedBox(width: 256, height: 256, child: this);
  
  /// size-80 -> width: 320px; height: 320px;
  Widget size80() => SizedBox(width: 320, height: 320, child: this);
  
  /// size-96 -> width: 384px; height: 384px;
  Widget size96() => SizedBox(width: 384, height: 384, child: this);
  
  /// size-auto -> width: auto; height: auto;
  Widget sizeAuto() => this;
  
  /// size-full -> width: 100%; height: 100%;
  Widget sizeFull() => SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: this,
      );
  
  /// size-min -> width: min-content; height: min-content;
  Widget sizeMin() => IntrinsicWidth(child: IntrinsicHeight(child: this));
  
  /// size-max -> width: max-content; height: max-content;
  Widget sizeMax() => IntrinsicWidth(child: IntrinsicHeight(child: this));
  
  /// size-fit -> width: fit-content; height: fit-content;
  Widget sizeFit() => IntrinsicWidth(child: IntrinsicHeight(child: this));
  
  /// 自定义 size (同时设置宽度和高度)
  Widget sizeCustom(double size) => SizedBox(
        width: size,
        height: size,
        child: this,
      );

  // === Min width utilities ===
  /// min-w-0 -> min-width: 0;
  Widget minW0() => ConstrainedBox(constraints: BoxConstraints(minWidth: 0), child: this);
  
  /// min-w-px -> min-width: 1px;
  Widget minWPx() => ConstrainedBox(constraints: BoxConstraints(minWidth: 1), child: this);
  
  /// min-w-0.5 -> min-width: 2px;
  Widget minW0_5() => ConstrainedBox(constraints: BoxConstraints(minWidth: 2), child: this);
  
  /// min-w-1 -> min-width: 4px;
  Widget minW1() => ConstrainedBox(constraints: BoxConstraints(minWidth: 4), child: this);
  
  /// min-w-1.5 -> min-width: 6px;
  Widget minW1_5() => ConstrainedBox(constraints: BoxConstraints(minWidth: 6), child: this);
  
  /// min-w-2 -> min-width: 8px;
  Widget minW2() => ConstrainedBox(constraints: BoxConstraints(minWidth: 8), child: this);
  
  /// min-w-2.5 -> min-width: 10px;
  Widget minW2_5() => ConstrainedBox(constraints: BoxConstraints(minWidth: 10), child: this);
  
  /// min-w-3 -> min-width: 12px;
  Widget minW3() => ConstrainedBox(constraints: BoxConstraints(minWidth: 12), child: this);
  
  /// min-w-3.5 -> min-width: 14px;
  Widget minW3_5() => ConstrainedBox(constraints: BoxConstraints(minWidth: 14), child: this);
  
  /// min-w-4 -> min-width: 16px;
  Widget minW4() => ConstrainedBox(constraints: BoxConstraints(minWidth: 16), child: this);
  
  /// min-w-5 -> min-width: 20px;
  Widget minW5() => ConstrainedBox(constraints: BoxConstraints(minWidth: 20), child: this);
  
  /// min-w-6 -> min-width: 24px;
  Widget minW6() => ConstrainedBox(constraints: BoxConstraints(minWidth: 24), child: this);
  
  /// min-w-7 -> min-width: 28px;
  Widget minW7() => ConstrainedBox(constraints: BoxConstraints(minWidth: 28), child: this);
  
  /// min-w-8 -> min-width: 32px;
  Widget minW8() => ConstrainedBox(constraints: BoxConstraints(minWidth: 32), child: this);
  
  /// min-w-9 -> min-width: 36px;
  Widget minW9() => ConstrainedBox(constraints: BoxConstraints(minWidth: 36), child: this);
  
  /// min-w-10 -> min-width: 40px;
  Widget minW10() => ConstrainedBox(constraints: BoxConstraints(minWidth: 40), child: this);
  
  /// min-w-11 -> min-width: 44px;
  Widget minW11() => ConstrainedBox(constraints: BoxConstraints(minWidth: 44), child: this);
  
  /// min-w-12 -> min-width: 48px;
  Widget minW12() => ConstrainedBox(constraints: BoxConstraints(minWidth: 48), child: this);
  
  /// min-w-14 -> min-width: 56px;
  Widget minW14() => ConstrainedBox(constraints: BoxConstraints(minWidth: 56), child: this);
  
  /// min-w-16 -> min-width: 64px;
  Widget minW16() => ConstrainedBox(constraints: BoxConstraints(minWidth: 64), child: this);
  
  /// min-w-20 -> min-width: 80px;
  Widget minW20() => ConstrainedBox(constraints: BoxConstraints(minWidth: 80), child: this);
  
  /// min-w-24 -> min-width: 96px;
  Widget minW24() => ConstrainedBox(constraints: BoxConstraints(minWidth: 96), child: this);
  
  /// min-w-full -> min-width: 100%;
  Widget minWFull() => ConstrainedBox(constraints: BoxConstraints(minWidth: double.infinity), child: this);
  
  /// min-w-min -> min-width: min-content;
  Widget minWMin() => IntrinsicWidth(child: this);
  
  /// min-w-max -> min-width: max-content;
  Widget minWMax() => IntrinsicWidth(child: this);
  
  /// min-w-fit -> min-width: fit-content;
  Widget minWFit() => IntrinsicWidth(child: this);
  
  /// 自定义最小宽度
  Widget minWCustom(double minWidth) => ConstrainedBox(constraints: BoxConstraints(minWidth: minWidth), child: this);

  // === Max width utilities ===
  /// max-w-0 -> max-width: 0;
  Widget maxW0() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 0), child: this);
  
  /// max-w-none -> max-width: none;
  Widget maxWNone() => this;
  
  /// max-w-xs -> max-width: 20rem (320px);
  Widget maxWXs() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 320), child: this);
  
  /// max-w-sm -> max-width: 24rem (384px);
  Widget maxWSm() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 384), child: this);
  
  /// max-w-md -> max-width: 28rem (448px);
  Widget maxWMd() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 448), child: this);
  
  /// max-w-lg -> max-width: 32rem (512px);
  Widget maxWLg() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 512), child: this);
  
  /// max-w-xl -> max-width: 36rem (576px);
  Widget maxWXl() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 576), child: this);
  
  /// max-w-2xl -> max-width: 42rem (672px);
  Widget maxW2xl() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 672), child: this);
  
  /// max-w-3xl -> max-width: 48rem (768px);
  Widget maxW3xl() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 768), child: this);
  
  /// max-w-4xl -> max-width: 56rem (896px);
  Widget maxW4xl() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 896), child: this);
  
  /// max-w-5xl -> max-width: 64rem (1024px);
  Widget maxW5xl() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 1024), child: this);
  
  /// max-w-6xl -> max-width: 72rem (1152px);
  Widget maxW6xl() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 1152), child: this);
  
  /// max-w-7xl -> max-width: 80rem (1280px);
  Widget maxW7xl() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 1280), child: this);
  
  /// max-w-full -> max-width: 100%;
  Widget maxWFull() => ConstrainedBox(constraints: BoxConstraints(maxWidth: double.infinity), child: this);
  
  /// max-w-min -> max-width: min-content;
  Widget maxWMin() => IntrinsicWidth(child: this);
  
  /// max-w-max -> max-width: max-content;
  Widget maxWMax() => IntrinsicWidth(child: this);
  
  /// max-w-fit -> max-width: fit-content;
  Widget maxWFit() => IntrinsicWidth(child: this);
  
  /// max-w-prose -> max-width: 65ch;
  Widget maxWProse() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 65 * 16), child: this);
  
  /// max-w-screen-sm -> max-width: 640px;
  Widget maxWScreenSm() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 640), child: this);
  
  /// max-w-screen-md -> max-width: 768px;
  Widget maxWScreenMd() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 768), child: this);
  
  /// max-w-screen-lg -> max-width: 1024px;
  Widget maxWScreenLg() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 1024), child: this);
  
  /// max-w-screen-xl -> max-width: 1280px;
  Widget maxWScreenXl() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 1280), child: this);
  
  /// max-w-screen-2xl -> max-width: 1536px;
  Widget maxWScreen2xl() => ConstrainedBox(constraints: BoxConstraints(maxWidth: 1536), child: this);
  
  /// 自定义最大宽度
  Widget maxWCustom(double maxWidth) => ConstrainedBox(constraints: BoxConstraints(maxWidth: maxWidth), child: this);
}