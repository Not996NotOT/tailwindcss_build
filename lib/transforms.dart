import 'dart:math' as math;

import 'package:flutter/material.dart';

/// Tailwind CSS Transform utilities for Flutter
/// Utilities for controlling transform properties.
extension TransformsExt on Widget {
  
  // === Backface Visibility ===
  
  /// backface-visible -> backface-visibility: visible;
  Widget backfaceVisible() => this;
  
  /// backface-hidden -> backface-visibility: hidden;
  Widget backfaceHidden() => this;

  // === Perspective ===
  
  /// perspective-none -> perspective: none;
  Widget perspectiveNone() => this;
  
  /// perspective-250 -> perspective: 250px;
  Widget perspective250() => Transform(
    transform: Matrix4.identity()..setEntry(3, 2, 0.004),
    child: this,
  );
  
  /// perspective-500 -> perspective: 500px;
  Widget perspective500() => Transform(
    transform: Matrix4.identity()..setEntry(3, 2, 0.002),
    child: this,
  );
  
  /// perspective-750 -> perspective: 750px;
  Widget perspective750() => Transform(
    transform: Matrix4.identity()..setEntry(3, 2, 0.00133),
    child: this,
  );
  
  /// perspective-1000 -> perspective: 1000px;
  Widget perspective1000() => Transform(
    transform: Matrix4.identity()..setEntry(3, 2, 0.001),
    child: this,
  );

  // === Perspective Origin ===
  
  /// perspective-origin-center -> perspective-origin: center;
  Widget perspectiveOriginCenter() => this;
  
  /// perspective-origin-top -> perspective-origin: top;
  Widget perspectiveOriginTop() => this;
  
  /// perspective-origin-top-right -> perspective-origin: top right;
  Widget perspectiveOriginTopRight() => this;
  
  /// perspective-origin-right -> perspective-origin: right;
  Widget perspectiveOriginRight() => this;
  
  /// perspective-origin-bottom-right -> perspective-origin: bottom right;
  Widget perspectiveOriginBottomRight() => this;
  
  /// perspective-origin-bottom -> perspective-origin: bottom;
  Widget perspectiveOriginBottom() => this;
  
  /// perspective-origin-bottom-left -> perspective-origin: bottom left;
  Widget perspectiveOriginBottomLeft() => this;
  
  /// perspective-origin-left -> perspective-origin: left;
  Widget perspectiveOriginLeft() => this;
  
  /// perspective-origin-top-left -> perspective-origin: top left;
  Widget perspectiveOriginTopLeft() => this;

  // === Rotate ===
  
  /// rotate-0 -> transform: rotate(0deg);
  Widget rotate0() => this;
  
  /// rotate-1 -> transform: rotate(1deg);
  Widget rotate1() => Transform.rotate(angle: 1 * math.pi / 180, child: this);
  
  /// rotate-2 -> transform: rotate(2deg);
  Widget rotate2() => Transform.rotate(angle: 2 * math.pi / 180, child: this);
  
  /// rotate-3 -> transform: rotate(3deg);
  Widget rotate3() => Transform.rotate(angle: 3 * math.pi / 180, child: this);
  
  /// rotate-6 -> transform: rotate(6deg);
  Widget rotate6() => Transform.rotate(angle: 6 * math.pi / 180, child: this);
  
  /// rotate-12 -> transform: rotate(12deg);
  Widget rotate12() => Transform.rotate(angle: 12 * math.pi / 180, child: this);
  
  /// rotate-45 -> transform: rotate(45deg);
  Widget rotate45() => Transform.rotate(angle: 45 * math.pi / 180, child: this);
  
  /// rotate-90 -> transform: rotate(90deg);
  Widget rotate90() => Transform.rotate(angle: 90 * math.pi / 180, child: this);
  
  /// rotate-180 -> transform: rotate(180deg);
  Widget rotate180() => Transform.rotate(angle: 180 * math.pi / 180, child: this);
  
  /// -rotate-1 -> transform: rotate(-1deg);
  Widget rotateNeg1() => Transform.rotate(angle: -1 * math.pi / 180, child: this);
  
  /// -rotate-2 -> transform: rotate(-2deg);
  Widget rotateNeg2() => Transform.rotate(angle: -2 * math.pi / 180, child: this);
  
  /// -rotate-3 -> transform: rotate(-3deg);
  Widget rotateNeg3() => Transform.rotate(angle: -3 * math.pi / 180, child: this);
  
  /// -rotate-6 -> transform: rotate(-6deg);
  Widget rotateNeg6() => Transform.rotate(angle: -6 * math.pi / 180, child: this);
  
  /// -rotate-12 -> transform: rotate(-12deg);
  Widget rotateNeg12() => Transform.rotate(angle: -12 * math.pi / 180, child: this);
  
  /// -rotate-45 -> transform: rotate(-45deg);
  Widget rotateNeg45() => Transform.rotate(angle: -45 * math.pi / 180, child: this);
  
  /// -rotate-90 -> transform: rotate(-90deg);
  Widget rotateNeg90() => Transform.rotate(angle: -90 * math.pi / 180, child: this);
  
  /// -rotate-180 -> transform: rotate(-180deg);
  Widget rotateNeg180() => Transform.rotate(angle: -180 * math.pi / 180, child: this);

  // === Scale ===
  
  /// scale-0 -> transform: scale(0);
  Widget scale0() => Transform.scale(scale: 0, child: this);
  
  /// scale-50 -> transform: scale(0.5);
  Widget scale50() => Transform.scale(scale: 0.5, child: this);
  
  /// scale-75 -> transform: scale(0.75);
  Widget scale75() => Transform.scale(scale: 0.75, child: this);
  
  /// scale-90 -> transform: scale(0.9);
  Widget scale90() => Transform.scale(scale: 0.9, child: this);
  
  /// scale-95 -> transform: scale(0.95);
  Widget scale95() => Transform.scale(scale: 0.95, child: this);
  
  /// scale-100 -> transform: scale(1);
  Widget scale100() => this;
  
  /// scale-105 -> transform: scale(1.05);
  Widget scale105() => Transform.scale(scale: 1.05, child: this);
  
  /// scale-110 -> transform: scale(1.1);
  Widget scale110() => Transform.scale(scale: 1.1, child: this);
  
  /// scale-125 -> transform: scale(1.25);
  Widget scale125() => Transform.scale(scale: 1.25, child: this);
  
  /// scale-150 -> transform: scale(1.5);
  Widget scale150() => Transform.scale(scale: 1.5, child: this);
  
  // === Scale X ===
  
  /// scale-x-0 -> transform: scaleX(0);
  Widget scaleX0() => Transform.scale(scaleX: 0, child: this);
  
  /// scale-x-50 -> transform: scaleX(0.5);
  Widget scaleX50() => Transform.scale(scaleX: 0.5, child: this);
  
  /// scale-x-75 -> transform: scaleX(0.75);
  Widget scaleX75() => Transform.scale(scaleX: 0.75, child: this);
  
  /// scale-x-90 -> transform: scaleX(0.9);
  Widget scaleX90() => Transform.scale(scaleX: 0.9, child: this);
  
  /// scale-x-95 -> transform: scaleX(0.95);
  Widget scaleX95() => Transform.scale(scaleX: 0.95, child: this);
  
  /// scale-x-100 -> transform: scaleX(1);
  Widget scaleX100() => this;
  
  /// scale-x-105 -> transform: scaleX(1.05);
  Widget scaleX105() => Transform.scale(scaleX: 1.05, child: this);
  
  /// scale-x-110 -> transform: scaleX(1.1);
  Widget scaleX110() => Transform.scale(scaleX: 1.1, child: this);
  
  /// scale-x-125 -> transform: scaleX(1.25);
  Widget scaleX125() => Transform.scale(scaleX: 1.25, child: this);
  
  /// scale-x-150 -> transform: scaleX(1.5);
  Widget scaleX150() => Transform.scale(scaleX: 1.5, child: this);

  // === Scale Y ===
  
  /// scale-y-0 -> transform: scaleY(0);
  Widget scaleY0() => Transform.scale(scaleY: 0, child: this);
  
  /// scale-y-50 -> transform: scaleY(0.5);
  Widget scaleY50() => Transform.scale(scaleY: 0.5, child: this);
  
  /// scale-y-75 -> transform: scaleY(0.75);
  Widget scaleY75() => Transform.scale(scaleY: 0.75, child: this);
  
  /// scale-y-90 -> transform: scaleY(0.9);
  Widget scaleY90() => Transform.scale(scaleY: 0.9, child: this);
  
  /// scale-y-95 -> transform: scaleY(0.95);
  Widget scaleY95() => Transform.scale(scaleY: 0.95, child: this);
  
  /// scale-y-100 -> transform: scaleY(1);
  Widget scaleY100() => this;
  
  /// scale-y-105 -> transform: scaleY(1.05);
  Widget scaleY105() => Transform.scale(scaleY: 1.05, child: this);
  
  /// scale-y-110 -> transform: scaleY(1.1);
  Widget scaleY110() => Transform.scale(scaleY: 1.1, child: this);
  
  /// scale-y-125 -> transform: scaleY(1.25);
  Widget scaleY125() => Transform.scale(scaleY: 1.25, child: this);
  
  /// scale-y-150 -> transform: scaleY(1.5);
  Widget scaleY150() => Transform.scale(scaleY: 1.5, child: this);

  // === Skew ===
  
  /// skew-x-0 -> transform: skewX(0deg);
  Widget skewX0() => this;
  
  /// skew-x-1 -> transform: skewX(1deg);
  Widget skewX1() => Transform(
    transform: Matrix4.skewX(1 * math.pi / 180),
    child: this,
  );
  
  /// skew-x-2 -> transform: skewX(2deg);
  Widget skewX2() => Transform(
    transform: Matrix4.skewX(2 * math.pi / 180),
    child: this,
  );
  
  /// skew-x-3 -> transform: skewX(3deg);
  Widget skewX3() => Transform(
    transform: Matrix4.skewX(3 * math.pi / 180),
    child: this,
  );
  
  /// skew-x-6 -> transform: skewX(6deg);
  Widget skewX6() => Transform(
    transform: Matrix4.skewX(6 * math.pi / 180),
    child: this,
  );
  
  /// skew-x-12 -> transform: skewX(12deg);
  Widget skewX12() => Transform(
    transform: Matrix4.skewX(12 * math.pi / 180),
    child: this,
  );
  
  /// -skew-x-1 -> transform: skewX(-1deg);
  Widget skewXNeg1() => Transform(
    transform: Matrix4.skewX(-1 * math.pi / 180),
    child: this,
  );
  
  /// -skew-x-2 -> transform: skewX(-2deg);
  Widget skewXNeg2() => Transform(
    transform: Matrix4.skewX(-2 * math.pi / 180),
    child: this,
  );
  
  /// -skew-x-3 -> transform: skewX(-3deg);
  Widget skewXNeg3() => Transform(
    transform: Matrix4.skewX(-3 * math.pi / 180),
    child: this,
  );
  
  /// -skew-x-6 -> transform: skewX(-6deg);
  Widget skewXNeg6() => Transform(
    transform: Matrix4.skewX(-6 * math.pi / 180),
    child: this,
  );
  
  /// -skew-x-12 -> transform: skewX(-12deg);
  Widget skewXNeg12() => Transform(
    transform: Matrix4.skewX(-12 * math.pi / 180),
    child: this,
  );

  /// skew-y-0 -> transform: skewY(0deg);
  Widget skewY0() => this;
  
  /// skew-y-1 -> transform: skewY(1deg);
  Widget skewY1() => Transform(
    transform: Matrix4.skewY(1 * math.pi / 180),
    child: this,
  );
  
  /// skew-y-2 -> transform: skewY(2deg);
  Widget skewY2() => Transform(
    transform: Matrix4.skewY(2 * math.pi / 180),
    child: this,
  );
  
  /// skew-y-3 -> transform: skewY(3deg);
  Widget skewY3() => Transform(
    transform: Matrix4.skewY(3 * math.pi / 180),
    child: this,
  );
  
  /// skew-y-6 -> transform: skewY(6deg);
  Widget skewY6() => Transform(
    transform: Matrix4.skewY(6 * math.pi / 180),
    child: this,
  );
  
  /// skew-y-12 -> transform: skewY(12deg);
  Widget skewY12() => Transform(
    transform: Matrix4.skewY(12 * math.pi / 180),
    child: this,
  );
  
  /// -skew-y-1 -> transform: skewY(-1deg);
  Widget skewYNeg1() => Transform(
    transform: Matrix4.skewY(-1 * math.pi / 180),
    child: this,
  );
  
  /// -skew-y-2 -> transform: skewY(-2deg);
  Widget skewYNeg2() => Transform(
    transform: Matrix4.skewY(-2 * math.pi / 180),
    child: this,
  );
  
  /// -skew-y-3 -> transform: skewY(-3deg);
  Widget skewYNeg3() => Transform(
    transform: Matrix4.skewY(-3 * math.pi / 180),
    child: this,
  );
  
  /// -skew-y-6 -> transform: skewY(-6deg);
  Widget skewYNeg6() => Transform(
    transform: Matrix4.skewY(-6 * math.pi / 180),
    child: this,
  );
  
  /// -skew-y-12 -> transform: skewY(-12deg);
  Widget skewYNeg12() => Transform(
    transform: Matrix4.skewY(-12 * math.pi / 180),
    child: this,
  );

  // === Transform ===
  
  /// transform-none -> transform: none;
  Widget transformNone() => this;
  
  /// transform-gpu -> 启用GPU加速
  Widget transformGpu() => Transform(
    transform: Matrix4.identity(),
    child: this,
  );

  // === Transform Origin ===
  
  /// origin-center -> transform-origin: center;
  Widget originCenter() => Transform(
    transform: Matrix4.identity(),
    origin: Offset.zero,
    child: this,
  );
  
  /// origin-top -> transform-origin: top;
  Widget originTop() => Transform(
    transform: Matrix4.identity(),
    origin: Offset(0, -50),
    child: this,
  );
  
  /// origin-top-right -> transform-origin: top right;
  Widget originTopRight() => Transform(
    transform: Matrix4.identity(),
    origin: Offset(50, -50),
    child: this,
  );
  
  /// origin-right -> transform-origin: right;
  Widget originRight() => Transform(
    transform: Matrix4.identity(),
    origin: Offset(50, 0),
    child: this,
  );
  
  /// origin-bottom-right -> transform-origin: bottom right;
  Widget originBottomRight() => Transform(
    transform: Matrix4.identity(),
    origin: Offset(50, 50),
    child: this,
  );
  
  /// origin-bottom -> transform-origin: bottom;
  Widget originBottom() => Transform(
    transform: Matrix4.identity(),
    origin: Offset(0, 50),
    child: this,
  );
  
  /// origin-bottom-left -> transform-origin: bottom left;
  Widget originBottomLeft() => Transform(
    transform: Matrix4.identity(),
    origin: Offset(-50, 50),
    child: this,
  );
  
  /// origin-left -> transform-origin: left;
  Widget originLeft() => Transform(
    transform: Matrix4.identity(),
    origin: Offset(-50, 0),
    child: this,
  );
  
  /// origin-top-left -> transform-origin: top left;
  Widget originTopLeft() => Transform(
    transform: Matrix4.identity(),
    origin: Offset(-50, -50),
    child: this,
  );

  // === Transform Style ===
  
  /// transform-flat -> transform-style: flat;
  Widget transformFlat() => this;
  
  /// transform-preserve-3d -> transform-style: preserve-3d;
  Widget transformPreserve3d() => this;

  // === Translate ===
  
  /// translate-x-0 -> transform: translateX(0);
  Widget translateX0() => this;
  
  /// translate-x-px -> transform: translateX(1px);
  Widget translateXPx() => Transform.translate(offset: Offset(1, 0), child: this);
  
  /// translate-x-0.5 -> transform: translateX(0.125rem); (2px)
  Widget translateX05() => Transform.translate(offset: Offset(2, 0), child: this);
  
  /// translate-x-1 -> transform: translateX(0.25rem); (4px)
  Widget translateX1() => Transform.translate(offset: Offset(4, 0), child: this);
  
  /// translate-x-1.5 -> transform: translateX(0.375rem); (6px)
  Widget translateX15() => Transform.translate(offset: Offset(6, 0), child: this);
  
  /// translate-x-2 -> transform: translateX(0.5rem); (8px)
  Widget translateX2() => Transform.translate(offset: Offset(8, 0), child: this);
  
  /// translate-x-2.5 -> transform: translateX(0.625rem); (10px)
  Widget translateX25() => Transform.translate(offset: Offset(10, 0), child: this);
  
  /// translate-x-3 -> transform: translateX(0.75rem); (12px)
  Widget translateX3() => Transform.translate(offset: Offset(12, 0), child: this);
  
  /// translate-x-3.5 -> transform: translateX(0.875rem); (14px)
  Widget translateX35() => Transform.translate(offset: Offset(14, 0), child: this);
  
  /// translate-x-4 -> transform: translateX(1rem); (16px)
  Widget translateX4() => Transform.translate(offset: Offset(16, 0), child: this);
  
  /// translate-x-5 -> transform: translateX(1.25rem); (20px)
  Widget translateX5() => Transform.translate(offset: Offset(20, 0), child: this);
  
  /// translate-x-6 -> transform: translateX(1.5rem); (24px)
  Widget translateX6() => Transform.translate(offset: Offset(24, 0), child: this);
  
  /// translate-x-8 -> transform: translateX(2rem); (32px)
  Widget translateX8() => Transform.translate(offset: Offset(32, 0), child: this);
  
  /// translate-x-10 -> transform: translateX(2.5rem); (40px)
  Widget translateX10() => Transform.translate(offset: Offset(40, 0), child: this);
  
  /// translate-x-12 -> transform: translateX(3rem); (48px)
  Widget translateX12() => Transform.translate(offset: Offset(48, 0), child: this);
  
  /// translate-x-16 -> transform: translateX(4rem); (64px)
  Widget translateX16() => Transform.translate(offset: Offset(64, 0), child: this);
  
  /// translate-x-20 -> transform: translateX(5rem); (80px)
  Widget translateX20() => Transform.translate(offset: Offset(80, 0), child: this);
  
  /// translate-x-24 -> transform: translateX(6rem); (96px)
  Widget translateX24() => Transform.translate(offset: Offset(96, 0), child: this);
  
  /// translate-x-32 -> transform: translateX(8rem); (128px)
  Widget translateX32() => Transform.translate(offset: Offset(128, 0), child: this);
  
  /// translate-x-40 -> transform: translateX(10rem); (160px)
  Widget translateX40() => Transform.translate(offset: Offset(160, 0), child: this);
  
  /// translate-x-48 -> transform: translateX(12rem); (192px)
  Widget translateX48() => Transform.translate(offset: Offset(192, 0), child: this);
  
  /// translate-x-56 -> transform: translateX(14rem); (224px)
  Widget translateX56() => Transform.translate(offset: Offset(224, 0), child: this);
  
  /// translate-x-64 -> transform: translateX(16rem); (256px)
  Widget translateX64() => Transform.translate(offset: Offset(256, 0), child: this);

  /// translate-x-1/2 -> transform: translateX(50%);
  Widget translateXHalf() => Transform.translate(offset: Offset(100, 0), child: this);
  
  /// translate-x-1/3 -> transform: translateX(33.333333%);
  Widget translateXOneThird() => Transform.translate(offset: Offset(66.67, 0), child: this);
  
  /// translate-x-2/3 -> transform: translateX(66.666667%);
  Widget translateXTwoThirds() => Transform.translate(offset: Offset(133.33, 0), child: this);
  
  /// translate-x-1/4 -> transform: translateX(25%);
  Widget translateXOneFourth() => Transform.translate(offset: Offset(50, 0), child: this);
  
  /// translate-x-2/4 -> transform: translateX(50%);
  Widget translateXTwoFourths() => Transform.translate(offset: Offset(100, 0), child: this);
  
  /// translate-x-3/4 -> transform: translateX(75%);
  Widget translateXThreeFourths() => Transform.translate(offset: Offset(150, 0), child: this);
  
  /// translate-x-full -> transform: translateX(100%);
  Widget translateXFull() => Transform.translate(offset: Offset(200, 0), child: this);

  // === Negative Translate X ===
  
  /// -translate-x-px -> transform: translateX(-1px);
  Widget translateXNegPx() => Transform.translate(offset: Offset(-1, 0), child: this);
  
  /// -translate-x-0.5 -> transform: translateX(-0.125rem); (-2px)
  Widget translateXNeg05() => Transform.translate(offset: Offset(-2, 0), child: this);
  
  /// -translate-x-1 -> transform: translateX(-0.25rem); (-4px)
  Widget translateXNeg1() => Transform.translate(offset: Offset(-4, 0), child: this);
  
  /// -translate-x-1.5 -> transform: translateX(-0.375rem); (-6px)
  Widget translateXNeg15() => Transform.translate(offset: Offset(-6, 0), child: this);
  
  /// -translate-x-2 -> transform: translateX(-0.5rem); (-8px)
  Widget translateXNeg2() => Transform.translate(offset: Offset(-8, 0), child: this);
  
  /// -translate-x-2.5 -> transform: translateX(-0.625rem); (-10px)
  Widget translateXNeg25() => Transform.translate(offset: Offset(-10, 0), child: this);
  
  /// -translate-x-3 -> transform: translateX(-0.75rem); (-12px)
  Widget translateXNeg3() => Transform.translate(offset: Offset(-12, 0), child: this);
  
  /// -translate-x-3.5 -> transform: translateX(-0.875rem); (-14px)
  Widget translateXNeg35() => Transform.translate(offset: Offset(-14, 0), child: this);
  
  /// -translate-x-4 -> transform: translateX(-1rem); (-16px)
  Widget translateXNeg4() => Transform.translate(offset: Offset(-16, 0), child: this);
  
  /// -translate-x-5 -> transform: translateX(-1.25rem); (-20px)
  Widget translateXNeg5() => Transform.translate(offset: Offset(-20, 0), child: this);
  
  /// -translate-x-6 -> transform: translateX(-1.5rem); (-24px)
  Widget translateXNeg6() => Transform.translate(offset: Offset(-24, 0), child: this);
  
  /// -translate-x-8 -> transform: translateX(-2rem); (-32px)
  Widget translateXNeg8() => Transform.translate(offset: Offset(-32, 0), child: this);
  
  /// -translate-x-10 -> transform: translateX(-2.5rem); (-40px)
  Widget translateXNeg10() => Transform.translate(offset: Offset(-40, 0), child: this);
  
  /// -translate-x-12 -> transform: translateX(-3rem); (-48px)
  Widget translateXNeg12() => Transform.translate(offset: Offset(-48, 0), child: this);
  
  /// -translate-x-16 -> transform: translateX(-4rem); (-64px)
  Widget translateXNeg16() => Transform.translate(offset: Offset(-64, 0), child: this);
  
  /// -translate-x-20 -> transform: translateX(-5rem); (-80px)
  Widget translateXNeg20() => Transform.translate(offset: Offset(-80, 0), child: this);
  
  /// -translate-x-24 -> transform: translateX(-6rem); (-96px)
  Widget translateXNeg24() => Transform.translate(offset: Offset(-96, 0), child: this);
  
  /// -translate-x-32 -> transform: translateX(-8rem); (-128px)
  Widget translateXNeg32() => Transform.translate(offset: Offset(-128, 0), child: this);
  
  /// -translate-x-40 -> transform: translateX(-10rem); (-160px)
  Widget translateXNeg40() => Transform.translate(offset: Offset(-160, 0), child: this);
  
  /// -translate-x-48 -> transform: translateX(-12rem); (-192px)
  Widget translateXNeg48() => Transform.translate(offset: Offset(-192, 0), child: this);
  
  /// -translate-x-56 -> transform: translateX(-14rem); (-224px)
  Widget translateXNeg56() => Transform.translate(offset: Offset(-224, 0), child: this);
  
  /// -translate-x-64 -> transform: translateX(-16rem); (-256px)
  Widget translateXNeg64() => Transform.translate(offset: Offset(-256, 0), child: this);

  /// -translate-x-1/2 -> transform: translateX(-50%);
  Widget translateXNegHalf() => Transform.translate(offset: Offset(-100, 0), child: this);
  
  /// -translate-x-1/3 -> transform: translateX(-33.333333%);
  Widget translateXNegOneThird() => Transform.translate(offset: Offset(-66.67, 0), child: this);
  
  /// -translate-x-2/3 -> transform: translateX(-66.666667%);
  Widget translateXNegTwoThirds() => Transform.translate(offset: Offset(-133.33, 0), child: this);
  
  /// -translate-x-1/4 -> transform: translateX(-25%);
  Widget translateXNegOneFourth() => Transform.translate(offset: Offset(-50, 0), child: this);
  
  /// -translate-x-2/4 -> transform: translateX(-50%);
  Widget translateXNegTwoFourths() => Transform.translate(offset: Offset(-100, 0), child: this);
  
  /// -translate-x-3/4 -> transform: translateX(-75%);
  Widget translateXNegThreeFourths() => Transform.translate(offset: Offset(-150, 0), child: this);
  
  /// -translate-x-full -> transform: translateX(-100%);
  Widget translateXNegFull() => Transform.translate(offset: Offset(-200, 0), child: this);

  // === Translate Y (Similar pattern to X but for Y axis) ===
  
  /// translate-y-0 -> transform: translateY(0);
  Widget translateY0() => this;
  
  /// translate-y-px -> transform: translateY(1px);
  Widget translateYPx() => Transform.translate(offset: Offset(0, 1), child: this);
  
  /// translate-y-0.5 -> transform: translateY(0.125rem); (2px)
  Widget translateY05() => Transform.translate(offset: Offset(0, 2), child: this);
  
  /// translate-y-1 -> transform: translateY(0.25rem); (4px)
  Widget translateY1() => Transform.translate(offset: Offset(0, 4), child: this);
  
  /// translate-y-1.5 -> transform: translateY(0.375rem); (6px)
  Widget translateY15() => Transform.translate(offset: Offset(0, 6), child: this);
  
  /// translate-y-2 -> transform: translateY(0.5rem); (8px)
  Widget translateY2() => Transform.translate(offset: Offset(0, 8), child: this);
  
  /// translate-y-2.5 -> transform: translateY(0.625rem); (10px)
  Widget translateY25() => Transform.translate(offset: Offset(0, 10), child: this);
  
  /// translate-y-3 -> transform: translateY(0.75rem); (12px)
  Widget translateY3() => Transform.translate(offset: Offset(0, 12), child: this);
  
  /// translate-y-3.5 -> transform: translateY(0.875rem); (14px)
  Widget translateY35() => Transform.translate(offset: Offset(0, 14), child: this);
  
  /// translate-y-4 -> transform: translateY(1rem); (16px)
  Widget translateY4() => Transform.translate(offset: Offset(0, 16), child: this);
  
  /// translate-y-5 -> transform: translateY(1.25rem); (20px)
  Widget translateY5() => Transform.translate(offset: Offset(0, 20), child: this);
  
  /// translate-y-6 -> transform: translateY(1.5rem); (24px)
  Widget translateY6() => Transform.translate(offset: Offset(0, 24), child: this);
  
  /// translate-y-8 -> transform: translateY(2rem); (32px)
  Widget translateY8() => Transform.translate(offset: Offset(0, 32), child: this);
  
  /// translate-y-10 -> transform: translateY(2.5rem); (40px)
  Widget translateY10() => Transform.translate(offset: Offset(0, 40), child: this);
  
  /// translate-y-12 -> transform: translateY(3rem); (48px)
  Widget translateY12() => Transform.translate(offset: Offset(0, 48), child: this);
  
  /// translate-y-16 -> transform: translateY(4rem); (64px)
  Widget translateY16() => Transform.translate(offset: Offset(0, 64), child: this);
  
  /// translate-y-20 -> transform: translateY(5rem); (80px)
  Widget translateY20() => Transform.translate(offset: Offset(0, 80), child: this);
  
  /// translate-y-24 -> transform: translateY(6rem); (96px)
  Widget translateY24() => Transform.translate(offset: Offset(0, 96), child: this);
  
  /// translate-y-32 -> transform: translateY(8rem); (128px)
  Widget translateY32() => Transform.translate(offset: Offset(0, 128), child: this);
  
  /// translate-y-40 -> transform: translateY(10rem); (160px)
  Widget translateY40() => Transform.translate(offset: Offset(0, 160), child: this);
  
  /// translate-y-48 -> transform: translateY(12rem); (192px)
  Widget translateY48() => Transform.translate(offset: Offset(0, 192), child: this);
  
  /// translate-y-56 -> transform: translateY(14rem); (224px)
  Widget translateY56() => Transform.translate(offset: Offset(0, 224), child: this);
  
  /// translate-y-64 -> transform: translateY(16rem); (256px)
  Widget translateY64() => Transform.translate(offset: Offset(0, 256), child: this);

  /// translate-y-1/2 -> transform: translateY(50%);
  Widget translateYHalf() => Transform.translate(offset: Offset(0, 100), child: this);
  
  /// translate-y-1/3 -> transform: translateY(33.333333%);
  Widget translateYOneThird() => Transform.translate(offset: Offset(0, 66.67), child: this);
  
  /// translate-y-2/3 -> transform: translateY(66.666667%);
  Widget translateYTwoThirds() => Transform.translate(offset: Offset(0, 133.33), child: this);
  
  /// translate-y-1/4 -> transform: translateY(25%);
  Widget translateYOneFourth() => Transform.translate(offset: Offset(0, 50), child: this);
  
  /// translate-y-2/4 -> transform: translateY(50%);
  Widget translateYTwoFourths() => Transform.translate(offset: Offset(0, 100), child: this);
  
  /// translate-y-3/4 -> transform: translateY(75%);
  Widget translateYThreeFourths() => Transform.translate(offset: Offset(0, 150), child: this);
  
  /// translate-y-full -> transform: translateY(100%);
  Widget translateYFull() => Transform.translate(offset: Offset(0, 200), child: this);

  // === Negative Translate Y ===
  
  /// -translate-y-px -> transform: translateY(-1px);
  Widget translateYNegPx() => Transform.translate(offset: Offset(0, -1), child: this);
  
  /// -translate-y-0.5 -> transform: translateY(-0.125rem); (-2px)
  Widget translateYNeg05() => Transform.translate(offset: Offset(0, -2), child: this);
  
  /// -translate-y-1 -> transform: translateY(-0.25rem); (-4px)
  Widget translateYNeg1() => Transform.translate(offset: Offset(0, -4), child: this);
  
  /// -translate-y-1.5 -> transform: translateY(-0.375rem); (-6px)
  Widget translateYNeg15() => Transform.translate(offset: Offset(0, -6), child: this);
  
  /// -translate-y-2 -> transform: translateY(-0.5rem); (-8px)
  Widget translateYNeg2() => Transform.translate(offset: Offset(0, -8), child: this);
  
  /// -translate-y-2.5 -> transform: translateY(-0.625rem); (-10px)
  Widget translateYNeg25() => Transform.translate(offset: Offset(0, -10), child: this);
  
  /// -translate-y-3 -> transform: translateY(-0.75rem); (-12px)
  Widget translateYNeg3() => Transform.translate(offset: Offset(0, -12), child: this);
  
  /// -translate-y-3.5 -> transform: translateY(-0.875rem); (-14px)
  Widget translateYNeg35() => Transform.translate(offset: Offset(0, -14), child: this);
  
  /// -translate-y-4 -> transform: translateY(-1rem); (-16px)
  Widget translateYNeg4() => Transform.translate(offset: Offset(0, -16), child: this);
  
  /// -translate-y-5 -> transform: translateY(-1.25rem); (-20px)
  Widget translateYNeg5() => Transform.translate(offset: Offset(0, -20), child: this);
  
  /// -translate-y-6 -> transform: translateY(-1.5rem); (-24px)
  Widget translateYNeg6() => Transform.translate(offset: Offset(0, -24), child: this);
  
  /// -translate-y-8 -> transform: translateY(-2rem); (-32px)
  Widget translateYNeg8() => Transform.translate(offset: Offset(0, -32), child: this);
  
  /// -translate-y-10 -> transform: translateY(-2.5rem); (-40px)
  Widget translateYNeg10() => Transform.translate(offset: Offset(0, -40), child: this);
  
  /// -translate-y-12 -> transform: translateY(-3rem); (-48px)
  Widget translateYNeg12() => Transform.translate(offset: Offset(0, -48), child: this);
  
  /// -translate-y-16 -> transform: translateY(-4rem); (-64px)
  Widget translateYNeg16() => Transform.translate(offset: Offset(0, -64), child: this);
  
  /// -translate-y-20 -> transform: translateY(-5rem); (-80px)
  Widget translateYNeg20() => Transform.translate(offset: Offset(0, -80), child: this);
  
  /// -translate-y-24 -> transform: translateY(-6rem); (-96px)
  Widget translateYNeg24() => Transform.translate(offset: Offset(0, -96), child: this);
  
  /// -translate-y-32 -> transform: translateY(-8rem); (-128px)
  Widget translateYNeg32() => Transform.translate(offset: Offset(0, -128), child: this);
  
  /// -translate-y-40 -> transform: translateY(-10rem); (-160px)
  Widget translateYNeg40() => Transform.translate(offset: Offset(0, -160), child: this);
  
  /// -translate-y-48 -> transform: translateY(-12rem); (-192px)
  Widget translateYNeg48() => Transform.translate(offset: Offset(0, -192), child: this);
  
  /// -translate-y-56 -> transform: translateY(-14rem); (-224px)
  Widget translateYNeg56() => Transform.translate(offset: Offset(0, -224), child: this);
  
  /// -translate-y-64 -> transform: translateY(-16rem); (-256px)
  Widget translateYNeg64() => Transform.translate(offset: Offset(0, -256), child: this);

  /// -translate-y-1/2 -> transform: translateY(-50%);
  Widget translateYNegHalf() => Transform.translate(offset: Offset(0, -100), child: this);
  
  /// -translate-y-1/3 -> transform: translateY(-33.333333%);
  Widget translateYNegOneThird() => Transform.translate(offset: Offset(0, -66.67), child: this);
  
  /// -translate-y-2/3 -> transform: translateY(-66.666667%);
  Widget translateYNegTwoThirds() => Transform.translate(offset: Offset(0, -133.33), child: this);
  
  /// -translate-y-1/4 -> transform: translateY(-25%);
  Widget translateYNegOneFourth() => Transform.translate(offset: Offset(0, -50), child: this);
  
  /// -translate-y-2/4 -> transform: translateY(-50%);
  Widget translateYNegTwoFourths() => Transform.translate(offset: Offset(0, -100), child: this);
  
  /// -translate-y-3/4 -> transform: translateY(-75%);
  Widget translateYNegThreeFourths() => Transform.translate(offset: Offset(0, -150), child: this);
  
  /// -translate-y-full -> transform: translateY(-100%);
  Widget translateYNegFull() => Transform.translate(offset: Offset(0, -200), child: this);

  // === Custom Transform utilities ===
  
  /// 自定义旋转
  Widget customRotate(double degrees) => Transform.rotate(
    angle: degrees * math.pi / 180,
    child: this,
  );
  
  /// 自定义缩放
  Widget customScale({double? scale, double? scaleX, double? scaleY}) => Transform.scale(
    scale: scale,
    scaleX: scaleX,
    scaleY: scaleY,
    child: this,
  );
  
  /// 自定义平移
  Widget customTranslate(double x, double y) => Transform.translate(
    offset: Offset(x, y),
    child: this,
  );
  
  /// 自定义倾斜
  Widget customSkew({double? skewX, double? skewY}) {
    final matrix = Matrix4.identity();
    if (skewX != null) matrix.setEntry(0, 1, math.tan(skewX * math.pi / 180));
    if (skewY != null) matrix.setEntry(1, 0, math.tan(skewY * math.pi / 180));
    return Transform(transform: matrix, child: this);
  }
  
  /// 自定义变换矩阵
  Widget customTransform(Matrix4 transform) => Transform(
    transform: transform,
    child: this,
  );
  
  /// 自定义变换原点
  Widget customOrigin(Offset origin) => Transform(
    transform: Matrix4.identity(),
    origin: origin,
    child: this,
  );
  
  /// 3D变换组合
  Widget transform3D({
    double? rotateX,
    double? rotateY,
    double? rotateZ,
    double? translateX,
    double? translateY,
    double? translateZ,
    double? scaleX,
    double? scaleY,
    double? scaleZ,
  }) {
    final matrix = Matrix4.identity();
    
    if (translateX != null || translateY != null || translateZ != null) {
      matrix.setTranslationRaw(translateX ?? 0.0, translateY ?? 0.0, translateZ ?? 0.0);
    }
    
    if (rotateX != null) matrix.rotateX(rotateX * math.pi / 180);
    if (rotateY != null) matrix.rotateY(rotateY * math.pi / 180);
    if (rotateZ != null) matrix.rotateZ(rotateZ * math.pi / 180);
    
    // Note: For now, we skip scaling as Matrix4.scale is deprecated
    // and 2D transforms in Flutter don't typically need complex scaling
    
    return Transform(transform: matrix, child: this);
  }

  // === Transform shortcuts ===
  
  /// 翻转水平
  Widget flipHorizontal() => Transform.scale(scaleX: -1, child: this);
  
  /// 翻转垂直
  Widget flipVertical() => Transform.scale(scaleY: -1, child: this);
  
  /// 翻转对角线
  Widget flipDiagonal() => Transform.scale(scaleX: -1, scaleY: -1, child: this);
}
