import 'package:flutter/material.dart';

/// Tailwind CSS Height utilities for Flutter
/// Utilities for setting the height of an element.
extension HeightExt on Widget {
  
  // === h-<number> utilities ===
  /// h-0 -> height: 0;
  Widget h0() => SizedBox(height: 0, child: this);
  
  /// h-px -> height: 1px;
  Widget hPx() => SizedBox(height: 1, child: this);
  
  /// h-0.5 -> height: 2px;
  Widget h0_5() => SizedBox(height: 2, child: this);
  
  /// h-1 -> height: 4px;
  Widget h1() => SizedBox(height: 4, child: this);
  
  /// h-1.5 -> height: 6px;
  Widget h1_5() => SizedBox(height: 6, child: this);
  
  /// h-2 -> height: 8px;
  Widget h2() => SizedBox(height: 8, child: this);
  
  /// h-2.5 -> height: 10px;
  Widget h2_5() => SizedBox(height: 10, child: this);
  
  /// h-3 -> height: 12px;
  Widget h3() => SizedBox(height: 12, child: this);
  
  /// h-3.5 -> height: 14px;
  Widget h3_5() => SizedBox(height: 14, child: this);
  
  /// h-4 -> height: 16px;
  Widget h4() => SizedBox(height: 16, child: this);
  
  /// h-5 -> height: 20px;
  Widget h5() => SizedBox(height: 20, child: this);
  
  /// h-6 -> height: 24px;
  Widget h6() => SizedBox(height: 24, child: this);
  
  /// h-7 -> height: 28px;
  Widget h7() => SizedBox(height: 28, child: this);
  
  /// h-8 -> height: 32px;
  Widget h8() => SizedBox(height: 32, child: this);
  
  /// h-9 -> height: 36px;
  Widget h9() => SizedBox(height: 36, child: this);
  
  /// h-10 -> height: 40px;
  Widget h10() => SizedBox(height: 40, child: this);
  
  /// h-11 -> height: 44px;
  Widget h11() => SizedBox(height: 44, child: this);
  
  /// h-12 -> height: 48px;
  Widget h12() => SizedBox(height: 48, child: this);
  
  /// h-14 -> height: 56px;
  Widget h14() => SizedBox(height: 56, child: this);
  
  /// h-16 -> height: 64px;
  Widget h16() => SizedBox(height: 64, child: this);
  
  /// h-20 -> height: 80px;
  Widget h20() => SizedBox(height: 80, child: this);
  
  /// h-24 -> height: 96px;
  Widget h24() => SizedBox(height: 96, child: this);
  
  /// h-28 -> height: 112px;
  Widget h28() => SizedBox(height: 112, child: this);
  
  /// h-32 -> height: 128px;
  Widget h32() => SizedBox(height: 128, child: this);
  
  /// h-36 -> height: 144px;
  Widget h36() => SizedBox(height: 144, child: this);
  
  /// h-40 -> height: 160px;
  Widget h40() => SizedBox(height: 160, child: this);
  
  /// h-44 -> height: 176px;
  Widget h44() => SizedBox(height: 176, child: this);
  
  /// h-48 -> height: 192px;
  Widget h48() => SizedBox(height: 192, child: this);
  
  /// h-52 -> height: 208px;
  Widget h52() => SizedBox(height: 208, child: this);
  
  /// h-56 -> height: 224px;
  Widget h56() => SizedBox(height: 224, child: this);
  
  /// h-60 -> height: 240px;
  Widget h60() => SizedBox(height: 240, child: this);
  
  /// h-64 -> height: 256px;
  Widget h64() => SizedBox(height: 256, child: this);
  
  /// h-72 -> height: 288px;
  Widget h72() => SizedBox(height: 288, child: this);
  
  /// h-80 -> height: 320px;
  Widget h80() => SizedBox(height: 320, child: this);
  
  /// h-96 -> height: 384px;
  Widget h96() => SizedBox(height: 384, child: this);

  // === h-<fraction> utilities ===
  /// h-1/2 -> height: 50%;
  Widget hHalf() {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 使用父容器高度，如果无限制则回退到屏幕高度
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 0.5, child: this);
      },
    );
  }
  
  /// h-1/3 -> height: 33.333333%;
  Widget h1Of3() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight / 3, child: this);
      },
    );
  }
  
  /// h-2/3 -> height: 66.666667%;
  Widget h2Of3() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 2 / 3, child: this);
      },
    );
  }
  
  /// h-1/4 -> height: 25%;
  Widget h1Of4() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 0.25, child: this);
      },
    );
  }
  
  /// h-2/4 -> height: 50%; (same as h-1/2)
  Widget h2Of4() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 0.5, child: this);
      },
    );
  }
  
  /// h-3/4 -> height: 75%;
  Widget h3Of4() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 0.75, child: this);
      },
    );
  }
  
  /// h-1/5 -> height: 20%;
  Widget h1Of5() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 0.2, child: this);
      },
    );
  }
  
  /// h-2/5 -> height: 40%;
  Widget h2Of5() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 0.4, child: this);
      },
    );
  }
  
  /// h-3/5 -> height: 60%;
  Widget h3Of5() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 0.6, child: this);
      },
    );
  }
  
  /// h-4/5 -> height: 80%;
  Widget h4Of5() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 0.8, child: this);
      },
    );
  }
  
  /// h-1/6 -> height: 16.666667%;
  Widget h1Of6() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight / 6, child: this);
      },
    );
  }
  
  /// h-5/6 -> height: 83.333333%;
  Widget h5Of6() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 5 / 6, child: this);
      },
    );
  }
  
  /// h-1/12 -> height: 8.333333%;
  Widget h1Of12() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight / 12, child: this);
      },
    );
  }
  
  /// h-5/12 -> height: 41.666667%;
  Widget h5Of12() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 5 / 12, child: this);
      },
    );
  }
  
  /// h-7/12 -> height: 58.333333%;
  Widget h7Of12() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 7 / 12, child: this);
      },
    );
  }
  
  /// h-9/10 -> height: 90%;
  Widget h9Of10() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 0.9, child: this);
      },
    );
  }
  
  /// h-11/12 -> height: 91.666667%;
  Widget h11Of12() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight.isFinite 
            ? constraints.maxHeight 
            : MediaQuery.of(context).size.height;
        return SizedBox(height: availableHeight * 11 / 12, child: this);
      },
    );
  }

  // === Special utilities ===
  /// h-auto -> height: auto; (在 Flutter 中返回原始 widget)
  Widget hAuto() => this;
  
  /// h-full -> height: 100%;
  Widget hFull() => SizedBox(height: double.infinity, child: this);
  
  /// h-screen -> height: 100vh; (全屏高度)
  Widget hScreen() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: this,
        );
      },
    );
  }
  
  /// h-dvh -> height: 100dvh; (动态视口高度)
  Widget hDvh() {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 在 Flutter 中，我们使用安全区域内的高度来模拟动态视口
        final mediaQuery = MediaQuery.of(context);
        final dynamicHeight = mediaQuery.size.height - 
                             mediaQuery.padding.top - 
                             mediaQuery.padding.bottom;
        return SizedBox(
          height: dynamicHeight,
          child: this,
        );
      },
    );
  }
  
  /// h-lvh -> height: 100lvh; (大视口高度)
  Widget hLvh() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: this,
        );
      },
    );
  }
  
  /// h-svh -> height: 100svh; (小视口高度)
  Widget hSvh() {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 小视口高度，考虑系统UI
        final mediaQuery = MediaQuery.of(context);
        final smallHeight = mediaQuery.size.height - 
                           mediaQuery.viewInsets.bottom - 
                           mediaQuery.padding.top;
        return SizedBox(
          height: smallHeight,
          child: this,
        );
      },
    );
  }
  
  /// h-dvw -> height: 100dvw; (动态视口宽度作为高度)
  Widget hDvw() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: MediaQuery.of(context).size.width,
          child: this,
        );
      },
    );
  }
  
  /// h-lvw -> height: 100lvw; (大视口宽度作为高度)
  Widget hLvw() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: MediaQuery.of(context).size.width,
          child: this,
        );
      },
    );
  }
  
  /// h-svw -> height: 100svw; (小视口宽度作为高度)
  Widget hSvw() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: MediaQuery.of(context).size.width,
          child: this,
        );
      },
    );
  }
  
  /// h-min -> height: min-content; (最小内容高度)
  Widget hMin() => IntrinsicHeight(child: this);
  
  /// h-max -> height: max-content; (最大内容高度)
  Widget hMax() => IntrinsicHeight(child: this);
  
  /// h-fit -> height: fit-content; (适合内容高度)
  Widget hFit() => IntrinsicHeight(child: this);
  
  /// h-lh -> height: 1lh; (行高作为高度，在 Flutter 中使用文本行高)
  Widget hLh({double lineHeight = 16.0}) => SizedBox(height: lineHeight, child: this);

  // === Custom height utilities ===
  /// h(double height) -> height: <value>; (自定义高度 - 简洁版)
  Widget h(double height) => SizedBox(height: height, child: this);
  
  /// h-[<value>] -> height: <value>; (自定义高度)
  Widget hCustom(double height) => SizedBox(height: height, child: this);
}