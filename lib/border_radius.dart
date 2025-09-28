import 'package:flutter/material.dart';

/// Tailwind CSS Border Radius utilities for Flutter
/// Utilities for controlling the border radius of an element.
extension BorderRadiusExt on Widget {
  
  // === Basic border radius utilities ===
  /// rounded-xs -> border-radius: 0.125rem (2px);
  Widget roundedXs() => ClipRRect(borderRadius: BorderRadius.circular(2), child: this);
  
  /// rounded-sm -> border-radius: 0.25rem (4px);
  Widget roundedSm() => ClipRRect(borderRadius: BorderRadius.circular(4), child: this);
  
  /// rounded-md -> border-radius: 0.375rem (6px);
  Widget roundedMd() => ClipRRect(borderRadius: BorderRadius.circular(6), child: this);
  
  /// rounded-lg -> border-radius: 0.5rem (8px);
  Widget roundedLg() => ClipRRect(borderRadius: BorderRadius.circular(8), child: this);
  
  /// rounded-xl -> border-radius: 0.75rem (12px);
  Widget roundedXl() => ClipRRect(borderRadius: BorderRadius.circular(12), child: this);
  
  /// rounded-2xl -> border-radius: 1rem (16px);
  Widget rounded2xl() => ClipRRect(borderRadius: BorderRadius.circular(16), child: this);
  
  /// rounded-3xl -> border-radius: 1.5rem (24px);
  Widget rounded3xl() => ClipRRect(borderRadius: BorderRadius.circular(24), child: this);
  
  /// rounded-4xl -> border-radius: 2rem (32px);
  Widget rounded4xl() => ClipRRect(borderRadius: BorderRadius.circular(32), child: this);
  
  /// rounded-none -> border-radius: 0;
  Widget roundedNone() => ClipRRect(borderRadius: BorderRadius.zero, child: this);
  
  /// rounded-full -> border-radius: calc(infinity * 1px);
  Widget roundedFull() => ClipRRect(borderRadius: BorderRadius.circular(9999), child: this);
  
  /// rounded (default medium) -> border-radius: 0.375rem (6px);
  Widget rounded() => ClipRRect(borderRadius: BorderRadius.circular(6), child: this);

  // === Side-specific border radius utilities ===
  
  // Top
  /// rounded-t-xs -> border-top-left-radius: 2px; border-top-right-radius: 2px;
  Widget roundedTXs() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(2), topRight: Radius.circular(2)), child: this);
  
  /// rounded-t-sm -> border-top-left-radius: 4px; border-top-right-radius: 4px;
  Widget roundedTSm() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)), child: this);
  
  /// rounded-t-md -> border-top-left-radius: 6px; border-top-right-radius: 6px;
  Widget roundedTMd() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(6), topRight: Radius.circular(6)), child: this);
  
  /// rounded-t-lg -> border-top-left-radius: 8px; border-top-right-radius: 8px;
  Widget roundedTLg() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)), child: this);
  
  /// rounded-t-xl -> border-top-left-radius: 12px; border-top-right-radius: 12px;
  Widget roundedTXl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)), child: this);
  
  /// rounded-t-2xl -> border-top-left-radius: 16px; border-top-right-radius: 16px;
  Widget roundedT2xl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)), child: this);
  
  /// rounded-t-3xl -> border-top-left-radius: 24px; border-top-right-radius: 24px;
  Widget roundedT3xl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)), child: this);
  
  /// rounded-t-4xl -> border-top-left-radius: 32px; border-top-right-radius: 32px;
  Widget roundedT4xl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)), child: this);
  
  /// rounded-t-none -> border-top-left-radius: 0; border-top-right-radius: 0;
  Widget roundedTNone() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero), child: this);
  
  /// rounded-t-full -> border-top-left-radius: 9999px; border-top-right-radius: 9999px;
  Widget roundedTFull() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(9999), topRight: Radius.circular(9999)), child: this);
  
  /// rounded-t (default) -> border-top-left-radius: 6px; border-top-right-radius: 6px;
  Widget roundedT() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(6), topRight: Radius.circular(6)), child: this);

  // Right
  /// rounded-r-xs -> border-top-right-radius: 2px; border-bottom-right-radius: 2px;
  Widget roundedRXs() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(2), bottomRight: Radius.circular(2)), child: this);
  
  /// rounded-r-sm -> border-top-right-radius: 4px; border-bottom-right-radius: 4px;
  Widget roundedRSm() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(4), bottomRight: Radius.circular(4)), child: this);
  
  /// rounded-r-md -> border-top-right-radius: 6px; border-bottom-right-radius: 6px;
  Widget roundedRMd() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(6), bottomRight: Radius.circular(6)), child: this);
  
  /// rounded-r-lg -> border-top-right-radius: 8px; border-bottom-right-radius: 8px;
  Widget roundedRLg() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8)), child: this);
  
  /// rounded-r-xl -> border-top-right-radius: 12px; border-bottom-right-radius: 12px;
  Widget roundedRXl() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12)), child: this);
  
  /// rounded-r-2xl -> border-top-right-radius: 16px; border-bottom-right-radius: 16px;
  Widget roundedR2xl() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)), child: this);
  
  /// rounded-r-3xl -> border-top-right-radius: 24px; border-bottom-right-radius: 24px;
  Widget roundedR3xl() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(24), bottomRight: Radius.circular(24)), child: this);
  
  /// rounded-r-4xl -> border-top-right-radius: 32px; border-bottom-right-radius: 32px;
  Widget roundedR4xl() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(32), bottomRight: Radius.circular(32)), child: this);
  
  /// rounded-r-none -> border-top-right-radius: 0; border-bottom-right-radius: 0;
  Widget roundedRNone() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.zero, bottomRight: Radius.zero), child: this);
  
  /// rounded-r-full -> border-top-right-radius: 9999px; border-bottom-right-radius: 9999px;
  Widget roundedRFull() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(9999), bottomRight: Radius.circular(9999)), child: this);
  
  /// rounded-r (default) -> border-top-right-radius: 6px; border-bottom-right-radius: 6px;
  Widget roundedR() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(6), bottomRight: Radius.circular(6)), child: this);

  // Bottom
  /// rounded-b-xs -> border-bottom-left-radius: 2px; border-bottom-right-radius: 2px;
  Widget roundedBXs() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(2), bottomRight: Radius.circular(2)), child: this);
  
  /// rounded-b-sm -> border-bottom-left-radius: 4px; border-bottom-right-radius: 4px;
  Widget roundedBSm() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(4), bottomRight: Radius.circular(4)), child: this);
  
  /// rounded-b-md -> border-bottom-left-radius: 6px; border-bottom-right-radius: 6px;
  Widget roundedBMd() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6), bottomRight: Radius.circular(6)), child: this);
  
  /// rounded-b-lg -> border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;
  Widget roundedBLg() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)), child: this);
  
  /// rounded-b-xl -> border-bottom-left-radius: 12px; border-bottom-right-radius: 12px;
  Widget roundedBXl() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)), child: this);
  
  /// rounded-b-2xl -> border-bottom-left-radius: 16px; border-bottom-right-radius: 16px;
  Widget roundedB2xl() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)), child: this);
  
  /// rounded-b-3xl -> border-bottom-left-radius: 24px; border-bottom-right-radius: 24px;
  Widget roundedB3xl() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24)), child: this);
  
  /// rounded-b-4xl -> border-bottom-left-radius: 32px; border-bottom-right-radius: 32px;
  Widget roundedB4xl() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)), child: this);
  
  /// rounded-b-none -> border-bottom-left-radius: 0; border-bottom-right-radius: 0;
  Widget roundedBNone() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.zero, bottomRight: Radius.zero), child: this);
  
  /// rounded-b-full -> border-bottom-left-radius: 9999px; border-bottom-right-radius: 9999px;
  Widget roundedBFull() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(9999), bottomRight: Radius.circular(9999)), child: this);
  
  /// rounded-b (default) -> border-bottom-left-radius: 6px; border-bottom-right-radius: 6px;
  Widget roundedB() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6), bottomRight: Radius.circular(6)), child: this);

  // Left
  /// rounded-l-xs -> border-top-left-radius: 2px; border-bottom-left-radius: 2px;
  Widget roundedLXs() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(2), bottomLeft: Radius.circular(2)), child: this);
  
  /// rounded-l-sm -> border-top-left-radius: 4px; border-bottom-left-radius: 4px;
  Widget roundedLSm() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)), child: this);
  
  /// rounded-l-md -> border-top-left-radius: 6px; border-bottom-left-radius: 6px;
  Widget roundedLMd() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)), child: this);
  
  /// rounded-l-lg -> border-top-left-radius: 8px; border-bottom-left-radius: 8px;
  Widget roundedLLg() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)), child: this);
  
  /// rounded-l-xl -> border-top-left-radius: 12px; border-bottom-left-radius: 12px;
  Widget roundedLXl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)), child: this);
  
  /// rounded-l-2xl -> border-top-left-radius: 16px; border-bottom-left-radius: 16px;
  Widget roundedL2xl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)), child: this);
  
  /// rounded-l-3xl -> border-top-left-radius: 24px; border-bottom-left-radius: 24px;
  Widget roundedL3xl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomLeft: Radius.circular(24)), child: this);
  
  /// rounded-l-4xl -> border-top-left-radius: 32px; border-bottom-left-radius: 32px;
  Widget roundedL4xl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(32), bottomLeft: Radius.circular(32)), child: this);
  
  /// rounded-l-none -> border-top-left-radius: 0; border-bottom-left-radius: 0;
  Widget roundedLNone() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.zero, bottomLeft: Radius.zero), child: this);
  
  /// rounded-l-full -> border-top-left-radius: 9999px; border-bottom-left-radius: 9999px;
  Widget roundedLFull() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(9999), bottomLeft: Radius.circular(9999)), child: this);
  
  /// rounded-l (default) -> border-top-left-radius: 6px; border-bottom-left-radius: 6px;
  Widget roundedL() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)), child: this);

  // === Corner-specific border radius utilities ===
  
  // Top-left corner
  /// rounded-tl-xs -> border-top-left-radius: 2px;
  Widget roundedTlXs() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(2)), child: this);
  
  /// rounded-tl-sm -> border-top-left-radius: 4px;
  Widget roundedTlSm() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(4)), child: this);
  
  /// rounded-tl-md -> border-top-left-radius: 6px;
  Widget roundedTlMd() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(6)), child: this);
  
  /// rounded-tl-lg -> border-top-left-radius: 8px;
  Widget roundedTlLg() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(8)), child: this);
  
  /// rounded-tl-xl -> border-top-left-radius: 12px;
  Widget roundedTlXl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(12)), child: this);
  
  /// rounded-tl-2xl -> border-top-left-radius: 16px;
  Widget roundedTl2xl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(16)), child: this);
  
  /// rounded-tl-3xl -> border-top-left-radius: 24px;
  Widget roundedTl3xl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(24)), child: this);
  
  /// rounded-tl-4xl -> border-top-left-radius: 32px;
  Widget roundedTl4xl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(32)), child: this);
  
  /// rounded-tl-none -> border-top-left-radius: 0;
  Widget roundedTlNone() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.zero), child: this);
  
  /// rounded-tl-full -> border-top-left-radius: 9999px;
  Widget roundedTlFull() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(9999)), child: this);
  
  /// rounded-tl (default) -> border-top-left-radius: 6px;
  Widget roundedTl() => ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(6)), child: this);

  // Top-right corner
  /// rounded-tr-xs -> border-top-right-radius: 2px;
  Widget roundedTrXs() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(2)), child: this);
  
  /// rounded-tr-sm -> border-top-right-radius: 4px;
  Widget roundedTrSm() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(4)), child: this);
  
  /// rounded-tr-md -> border-top-right-radius: 6px;
  Widget roundedTrMd() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(6)), child: this);
  
  /// rounded-tr-lg -> border-top-right-radius: 8px;
  Widget roundedTrLg() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(8)), child: this);
  
  /// rounded-tr-xl -> border-top-right-radius: 12px;
  Widget roundedTrXl() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(12)), child: this);
  
  /// rounded-tr-2xl -> border-top-right-radius: 16px;
  Widget roundedTr2xl() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(16)), child: this);
  
  /// rounded-tr-3xl -> border-top-right-radius: 24px;
  Widget roundedTr3xl() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(24)), child: this);
  
  /// rounded-tr-4xl -> border-top-right-radius: 32px;
  Widget roundedTr4xl() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(32)), child: this);
  
  /// rounded-tr-none -> border-top-right-radius: 0;
  Widget roundedTrNone() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.zero), child: this);
  
  /// rounded-tr-full -> border-top-right-radius: 9999px;
  Widget roundedTrFull() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(9999)), child: this);
  
  /// rounded-tr (default) -> border-top-right-radius: 6px;
  Widget roundedTr() => ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(6)), child: this);

  // Bottom-right corner
  /// rounded-br-xs -> border-bottom-right-radius: 2px;
  Widget roundedBrXs() => ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(2)), child: this);
  
  /// rounded-br-sm -> border-bottom-right-radius: 4px;
  Widget roundedBrSm() => ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(4)), child: this);
  
  /// rounded-br-md -> border-bottom-right-radius: 6px;
  Widget roundedBrMd() => ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(6)), child: this);
  
  /// rounded-br-lg -> border-bottom-right-radius: 8px;
  Widget roundedBrLg() => ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(8)), child: this);
  
  /// rounded-br-xl -> border-bottom-right-radius: 12px;
  Widget roundedBrXl() => ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(12)), child: this);
  
  /// rounded-br-2xl -> border-bottom-right-radius: 16px;
  Widget roundedBr2xl() => ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(16)), child: this);
  
  /// rounded-br-3xl -> border-bottom-right-radius: 24px;
  Widget roundedBr3xl() => ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(24)), child: this);
  
  /// rounded-br-4xl -> border-bottom-right-radius: 32px;
  Widget roundedBr4xl() => ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(32)), child: this);
  
  /// rounded-br-none -> border-bottom-right-radius: 0;
  Widget roundedBrNone() => ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.zero), child: this);
  
  /// rounded-br-full -> border-bottom-right-radius: 9999px;
  Widget roundedBrFull() => ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(9999)), child: this);
  
  /// rounded-br (default) -> border-bottom-right-radius: 6px;
  Widget roundedBr() => ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(6)), child: this);

  // Bottom-left corner
  /// rounded-bl-xs -> border-bottom-left-radius: 2px;
  Widget roundedBlXs() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(2)), child: this);
  
  /// rounded-bl-sm -> border-bottom-left-radius: 4px;
  Widget roundedBlSm() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(4)), child: this);
  
  /// rounded-bl-md -> border-bottom-left-radius: 6px;
  Widget roundedBlMd() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6)), child: this);
  
  /// rounded-bl-lg -> border-bottom-left-radius: 8px;
  Widget roundedBlLg() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)), child: this);
  
  /// rounded-bl-xl -> border-bottom-left-radius: 12px;
  Widget roundedBlXl() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)), child: this);
  
  /// rounded-bl-2xl -> border-bottom-left-radius: 16px;
  Widget roundedBl2xl() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16)), child: this);
  
  /// rounded-bl-3xl -> border-bottom-left-radius: 24px;
  Widget roundedBl3xl() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24)), child: this);
  
  /// rounded-bl-4xl -> border-bottom-left-radius: 32px;
  Widget roundedBl4xl() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32)), child: this);
  
  /// rounded-bl-none -> border-bottom-left-radius: 0;
  Widget roundedBlNone() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.zero), child: this);
  
  /// rounded-bl-full -> border-bottom-left-radius: 9999px;
  Widget roundedBlFull() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(9999)), child: this);
  
  /// rounded-bl (default) -> border-bottom-left-radius: 6px;
  Widget roundedBl() => ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6)), child: this);

  // === Logical property border radius utilities ===
  // 这些工具类根据文本方向自动映射到合适的物理属性
  // LTR: start=left, end=right
  // RTL: start=right, end=left
  
  // Start side (start = left in LTR, right in RTL)
  /// rounded-s-xs -> rounded-l-xs in LTR, rounded-r-xs in RTL
  Widget roundedSXs() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedRXs() : roundedLXs();
      },
    );
  }
  
  /// rounded-s-sm -> rounded-l-sm in LTR, rounded-r-sm in RTL
  Widget roundedSSm() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedRSm() : roundedLSm();
      },
    );
  }
  
  /// rounded-s-md -> rounded-l-md in LTR, rounded-r-md in RTL
  Widget roundedSMd() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedRMd() : roundedLMd();
      },
    );
  }
  
  /// rounded-s-lg -> rounded-l-lg in LTR, rounded-r-lg in RTL
  Widget roundedSLg() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedRLg() : roundedLLg();
      },
    );
  }
  
  /// rounded-s-xl -> rounded-l-xl in LTR, rounded-r-xl in RTL
  Widget roundedSXl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedRXl() : roundedLXl();
      },
    );
  }
  
  /// rounded-s-2xl -> rounded-l-2xl in LTR, rounded-r-2xl in RTL
  Widget roundedS2xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedR2xl() : roundedL2xl();
      },
    );
  }
  
  /// rounded-s-3xl -> rounded-l-3xl in LTR, rounded-r-3xl in RTL
  Widget roundedS3xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedR3xl() : roundedL3xl();
      },
    );
  }
  
  /// rounded-s-4xl -> rounded-l-4xl in LTR, rounded-r-4xl in RTL
  Widget roundedS4xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedR4xl() : roundedL4xl();
      },
    );
  }
  
  /// rounded-s-none -> rounded-l-none in LTR, rounded-r-none in RTL
  Widget roundedSNone() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedRNone() : roundedLNone();
      },
    );
  }
  
  /// rounded-s-full -> rounded-l-full in LTR, rounded-r-full in RTL
  Widget roundedSFull() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedRFull() : roundedLFull();
      },
    );
  }
  
  /// rounded-s (default) -> rounded-l in LTR, rounded-r in RTL
  Widget roundedS() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedR() : roundedL();
      },
    );
  }

  // End side (end = right in LTR, left in RTL)
  /// rounded-e-xs -> rounded-r-xs in LTR, rounded-l-xs in RTL
  Widget roundedEXs() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedLXs() : roundedRXs();
      },
    );
  }
  
  /// rounded-e-sm -> rounded-r-sm in LTR, rounded-l-sm in RTL
  Widget roundedESm() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedLSm() : roundedRSm();
      },
    );
  }
  
  /// rounded-e-md -> rounded-r-md in LTR, rounded-l-md in RTL
  Widget roundedEMd() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedLMd() : roundedRMd();
      },
    );
  }
  
  /// rounded-e-lg -> rounded-r-lg in LTR, rounded-l-lg in RTL
  Widget roundedELg() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedLLg() : roundedRLg();
      },
    );
  }
  
  /// rounded-e-xl -> rounded-r-xl in LTR, rounded-l-xl in RTL
  Widget roundedEXl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedLXl() : roundedRXl();
      },
    );
  }
  
  /// rounded-e-2xl -> rounded-r-2xl in LTR, rounded-l-2xl in RTL
  Widget roundedE2xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedL2xl() : roundedR2xl();
      },
    );
  }
  
  /// rounded-e-3xl -> rounded-r-3xl in LTR, rounded-l-3xl in RTL
  Widget roundedE3xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedL3xl() : roundedR3xl();
      },
    );
  }
  
  /// rounded-e-4xl -> rounded-r-4xl in LTR, rounded-l-4xl in RTL
  Widget roundedE4xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedL4xl() : roundedR4xl();
      },
    );
  }
  
  /// rounded-e-none -> rounded-r-none in LTR, rounded-l-none in RTL
  Widget roundedENone() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedLNone() : roundedRNone();
      },
    );
  }
  
  /// rounded-e-full -> rounded-r-full in LTR, rounded-l-full in RTL
  Widget roundedEFull() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedLFull() : roundedRFull();
      },
    );
  }
  
  /// rounded-e (default) -> rounded-r in LTR, rounded-l in RTL
  Widget roundedE() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedL() : roundedR();
      },
    );
  }

  // Start-start corner (ss = top-left in LTR, top-right in RTL)
  /// rounded-ss-xs -> rounded-tl-xs in LTR, rounded-tr-xs in RTL
  Widget roundedSsXs() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTrXs() : roundedTlXs();
      },
    );
  }
  
  /// rounded-ss-sm -> rounded-tl-sm in LTR, rounded-tr-sm in RTL
  Widget roundedSsSm() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTrSm() : roundedTlSm();
      },
    );
  }
  
  /// rounded-ss-md -> rounded-tl-md in LTR, rounded-tr-md in RTL
  Widget roundedSsMd() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTrMd() : roundedTlMd();
      },
    );
  }
  
  /// rounded-ss-lg -> rounded-tl-lg in LTR, rounded-tr-lg in RTL
  Widget roundedSsLg() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTrLg() : roundedTlLg();
      },
    );
  }
  
  /// rounded-ss-xl -> rounded-tl-xl in LTR, rounded-tr-xl in RTL
  Widget roundedSsXl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTrXl() : roundedTlXl();
      },
    );
  }
  
  /// rounded-ss-2xl -> rounded-tl-2xl in LTR, rounded-tr-2xl in RTL
  Widget roundedSs2xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTr2xl() : roundedTl2xl();
      },
    );
  }
  
  /// rounded-ss-3xl -> rounded-tl-3xl in LTR, rounded-tr-3xl in RTL
  Widget roundedSs3xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTr3xl() : roundedTl3xl();
      },
    );
  }
  
  /// rounded-ss-4xl -> rounded-tl-4xl in LTR, rounded-tr-4xl in RTL
  Widget roundedSs4xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTr4xl() : roundedTl4xl();
      },
    );
  }
  
  /// rounded-ss-none -> rounded-tl-none in LTR, rounded-tr-none in RTL
  Widget roundedSsNone() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTrNone() : roundedTlNone();
      },
    );
  }
  
  /// rounded-ss-full -> rounded-tl-full in LTR, rounded-tr-full in RTL
  Widget roundedSsFull() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTrFull() : roundedTlFull();
      },
    );
  }
  
  /// rounded-ss (default) -> rounded-tl in LTR, rounded-tr in RTL
  Widget roundedSs() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTr() : roundedTl();
      },
    );
  }

  // Start-end corner (se = top-right in LTR, top-left in RTL)  
  /// rounded-se-xs -> rounded-tr-xs in LTR, rounded-tl-xs in RTL
  Widget roundedSeXs() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTlXs() : roundedTrXs();
      },
    );
  }
  
  /// rounded-se-sm -> rounded-tr-sm in LTR, rounded-tl-sm in RTL
  Widget roundedSeSm() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTlSm() : roundedTrSm();
      },
    );
  }
  
  /// rounded-se-md -> rounded-tr-md in LTR, rounded-tl-md in RTL
  Widget roundedSeMd() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTlMd() : roundedTrMd();
      },
    );
  }
  
  /// rounded-se-lg -> rounded-tr-lg in LTR, rounded-tl-lg in RTL
  Widget roundedSeLg() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTlLg() : roundedTrLg();
      },
    );
  }
  
  /// rounded-se-xl -> rounded-tr-xl in LTR, rounded-tl-xl in RTL
  Widget roundedSeXl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTlXl() : roundedTrXl();
      },
    );
  }
  
  /// rounded-se-2xl -> rounded-tr-2xl in LTR, rounded-tl-2xl in RTL
  Widget roundedSe2xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTl2xl() : roundedTr2xl();
      },
    );
  }
  
  /// rounded-se-3xl -> rounded-tr-3xl in LTR, rounded-tl-3xl in RTL
  Widget roundedSe3xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTl3xl() : roundedTr3xl();
      },
    );
  }
  
  /// rounded-se-4xl -> rounded-tr-4xl in LTR, rounded-tl-4xl in RTL
  Widget roundedSe4xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTl4xl() : roundedTr4xl();
      },
    );
  }
  
  /// rounded-se-none -> rounded-tr-none in LTR, rounded-tl-none in RTL
  Widget roundedSeNone() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTlNone() : roundedTrNone();
      },
    );
  }
  
  /// rounded-se-full -> rounded-tr-full in LTR, rounded-tl-full in RTL
  Widget roundedSeFull() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTlFull() : roundedTrFull();
      },
    );
  }
  
  /// rounded-se (default) -> rounded-tr in LTR, rounded-tl in RTL
  Widget roundedSe() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedTl() : roundedTr();
      },
    );
  }

  // End-start corner (es = bottom-left in LTR, bottom-right in RTL)
  /// rounded-es-xs -> rounded-bl-xs in LTR, rounded-br-xs in RTL
  Widget roundedEsXs() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBrXs() : roundedBlXs();
      },
    );
  }
  
  /// rounded-es-sm -> rounded-bl-sm in LTR, rounded-br-sm in RTL
  Widget roundedEsSm() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBrSm() : roundedBlSm();
      },
    );
  }
  
  /// rounded-es-md -> rounded-bl-md in LTR, rounded-br-md in RTL
  Widget roundedEsMd() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBrMd() : roundedBlMd();
      },
    );
  }
  
  /// rounded-es-lg -> rounded-bl-lg in LTR, rounded-br-lg in RTL
  Widget roundedEsLg() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBrLg() : roundedBlLg();
      },
    );
  }
  
  /// rounded-es-xl -> rounded-bl-xl in LTR, rounded-br-xl in RTL
  Widget roundedEsXl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBrXl() : roundedBlXl();
      },
    );
  }
  
  /// rounded-es-2xl -> rounded-bl-2xl in LTR, rounded-br-2xl in RTL
  Widget roundedEs2xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBr2xl() : roundedBl2xl();
      },
    );
  }
  
  /// rounded-es-3xl -> rounded-bl-3xl in LTR, rounded-br-3xl in RTL
  Widget roundedEs3xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBr3xl() : roundedBl3xl();
      },
    );
  }
  
  /// rounded-es-4xl -> rounded-bl-4xl in LTR, rounded-br-4xl in RTL
  Widget roundedEs4xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBr4xl() : roundedBl4xl();
      },
    );
  }
  
  /// rounded-es-none -> rounded-bl-none in LTR, rounded-br-none in RTL
  Widget roundedEsNone() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBrNone() : roundedBlNone();
      },
    );
  }
  
  /// rounded-es-full -> rounded-bl-full in LTR, rounded-br-full in RTL
  Widget roundedEsFull() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBrFull() : roundedBlFull();
      },
    );
  }
  
  /// rounded-es (default) -> rounded-bl in LTR, rounded-br in RTL
  Widget roundedEs() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBr() : roundedBl();
      },
    );
  }

  // End-end corner (ee = bottom-right in LTR, bottom-left in RTL)
  /// rounded-ee-xs -> rounded-br-xs in LTR, rounded-bl-xs in RTL
  Widget roundedEeXs() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBlXs() : roundedBrXs();
      },
    );
  }
  
  /// rounded-ee-sm -> rounded-br-sm in LTR, rounded-bl-sm in RTL
  Widget roundedEeSm() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBlSm() : roundedBrSm();
      },
    );
  }
  
  /// rounded-ee-md -> rounded-br-md in LTR, rounded-bl-md in RTL
  Widget roundedEeMd() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBlMd() : roundedBrMd();
      },
    );
  }
  
  /// rounded-ee-lg -> rounded-br-lg in LTR, rounded-bl-lg in RTL
  Widget roundedEeLg() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBlLg() : roundedBrLg();
      },
    );
  }
  
  /// rounded-ee-xl -> rounded-br-xl in LTR, rounded-bl-xl in RTL
  Widget roundedEeXl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBlXl() : roundedBrXl();
      },
    );
  }
  
  /// rounded-ee-2xl -> rounded-br-2xl in LTR, rounded-bl-2xl in RTL
  Widget roundedEe2xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBl2xl() : roundedBr2xl();
      },
    );
  }
  
  /// rounded-ee-3xl -> rounded-br-3xl in LTR, rounded-bl-3xl in RTL
  Widget roundedEe3xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBl3xl() : roundedBr3xl();
      },
    );
  }
  
  /// rounded-ee-4xl -> rounded-br-4xl in LTR, rounded-bl-4xl in RTL
  Widget roundedEe4xl() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBl4xl() : roundedBr4xl();
      },
    );
  }
  
  /// rounded-ee-none -> rounded-br-none in LTR, rounded-bl-none in RTL
  Widget roundedEeNone() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBlNone() : roundedBrNone();
      },
    );
  }
  
  /// rounded-ee-full -> rounded-br-full in LTR, rounded-bl-full in RTL
  Widget roundedEeFull() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBlFull() : roundedBrFull();
      },
    );
  }
  
  /// rounded-ee (default) -> rounded-br in LTR, rounded-bl in RTL
  Widget roundedEe() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isRTL = Directionality.of(context) == TextDirection.rtl;
        return isRTL ? roundedBl() : roundedBr();
      },
    );
  }

  // === Custom border radius utilities ===
  
  /// rounded-[<value>] -> border-radius: <value>; (自定义圆角半径)
  Widget roundedCustom(double radius) => ClipRRect(borderRadius: BorderRadius.circular(radius), child: this);
  
  /// 自定义各个角的圆角半径 
  /// rounded-[<tl>,<tr>,<bl>,<br>] -> border-radius: <tl> <tr> <br> <bl>;
  Widget roundedCustomEach({
    double? topLeft,
    double? topRight, 
    double? bottomLeft,
    double? bottomRight,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft ?? 0),
        topRight: Radius.circular(topRight ?? 0),
        bottomLeft: Radius.circular(bottomLeft ?? 0),
        bottomRight: Radius.circular(bottomRight ?? 0),
      ),
      child: this,
    );
  }
  
  /// 自定义椭圆圆角 
  /// rounded-elliptical(rx, ry) -> border-radius: rx/ry;
  Widget roundedElliptical(double radiusX, double radiusY) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.elliptical(radiusX, radiusY)),
      child: this,
    );
  }
  
  /// 从BorderRadius创建圆角
  Widget roundedFromBorderRadius(BorderRadius borderRadius) {
    return ClipRRect(borderRadius: borderRadius, child: this);
  }
  
  /// 从Radius创建统一圆角
  Widget roundedFromRadius(Radius radius) {
    return ClipRRect(borderRadius: BorderRadius.all(radius), child: this);
  }
  
  // === Shorthand utilities (简化版本，常用的组合) ===
  
  // === Numeric rounded shortcuts ===
  Widget rounded0() => roundedNone();
  Widget rounded1() => ClipRRect(borderRadius: BorderRadius.circular(1), child: this);
  Widget rounded2() => ClipRRect(borderRadius: BorderRadius.circular(2), child: this);
  Widget rounded3() => ClipRRect(borderRadius: BorderRadius.circular(3), child: this);
  Widget rounded4() => ClipRRect(borderRadius: BorderRadius.circular(4), child: this);
  Widget rounded5() => ClipRRect(borderRadius: BorderRadius.circular(5), child: this);
  Widget rounded6() => ClipRRect(borderRadius: BorderRadius.circular(6), child: this);
  Widget rounded7() => ClipRRect(borderRadius: BorderRadius.circular(7), child: this);
  Widget rounded8() => ClipRRect(borderRadius: BorderRadius.circular(8), child: this);
  Widget rounded9() => ClipRRect(borderRadius: BorderRadius.circular(9), child: this);
  Widget rounded10() => ClipRRect(borderRadius: BorderRadius.circular(10), child: this);
  Widget rounded11() => ClipRRect(borderRadius: BorderRadius.circular(11), child: this);
  Widget rounded12() => ClipRRect(borderRadius: BorderRadius.circular(12), child: this);
  Widget rounded14() => ClipRRect(borderRadius: BorderRadius.circular(14), child: this);
  Widget rounded16() => ClipRRect(borderRadius: BorderRadius.circular(16), child: this);
  Widget rounded20() => ClipRRect(borderRadius: BorderRadius.circular(20), child: this);
  Widget rounded24() => ClipRRect(borderRadius: BorderRadius.circular(24), child: this);
  Widget rounded28() => ClipRRect(borderRadius: BorderRadius.circular(28), child: this);
  Widget rounded32() => ClipRRect(borderRadius: BorderRadius.circular(32), child: this);
  Widget rounded36() => ClipRRect(borderRadius: BorderRadius.circular(36), child: this);
  Widget rounded40() => ClipRRect(borderRadius: BorderRadius.circular(40), child: this);
  Widget rounded44() => ClipRRect(borderRadius: BorderRadius.circular(44), child: this);
  Widget rounded48() => ClipRRect(borderRadius: BorderRadius.circular(48), child: this);
  Widget rounded52() => ClipRRect(borderRadius: BorderRadius.circular(52), child: this);
  Widget rounded56() => ClipRRect(borderRadius: BorderRadius.circular(56), child: this);
  Widget rounded60() => ClipRRect(borderRadius: BorderRadius.circular(60), child: this);
  Widget rounded64() => ClipRRect(borderRadius: BorderRadius.circular(64), child: this);
  Widget rounded72() => ClipRRect(borderRadius: BorderRadius.circular(72), child: this);
  Widget rounded80() => ClipRRect(borderRadius: BorderRadius.circular(80), child: this);
  Widget rounded96() => ClipRRect(borderRadius: BorderRadius.circular(96), child: this);
  
  
  /// r(double radius) -> border-radius: <radius>; (最简洁的自定义圆角)
  Widget r(double radius) => ClipRRect(borderRadius: BorderRadius.circular(radius), child: this);
  
  /// rOnly -> 只设置指定角的圆角，其他为0
  Widget rOnly({
    double topLeft = 0,
    double topRight = 0,
    double bottomLeft = 0,
    double bottomRight = 0,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight),
      ),
      child: this,
    );
  }
  
  /// rTop(double radius) -> 只设置上方两个角的圆角
  Widget rTop(double radius) => ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(radius),
      topRight: Radius.circular(radius),
    ),
    child: this,
  );
  
  /// rBottom(double radius) -> 只设置下方两个角的圆角
  Widget rBottom(double radius) => ClipRRect(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
    ),
    child: this,
  );
  
  /// rLeft(double radius) -> 只设置左侧两个角的圆角
  Widget rLeft(double radius) => ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(radius),
      bottomLeft: Radius.circular(radius),
    ),
    child: this,
  );
  
  /// rRight(double radius) -> 只设置右侧两个角的圆角
  Widget rRight(double radius) => ClipRRect(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
    ),
    child: this,
  );

  // === Commonly used radius values (常用的圆角值) ===
  
  /// r2() -> border-radius: 2px;
  Widget r2() => ClipRRect(borderRadius: BorderRadius.circular(2), child: this);
  
  /// r4() -> border-radius: 4px;
  Widget r4() => ClipRRect(borderRadius: BorderRadius.circular(4), child: this);
  
  /// r6() -> border-radius: 6px;
  Widget r6() => ClipRRect(borderRadius: BorderRadius.circular(6), child: this);
  
  /// r8() -> border-radius: 8px;
  Widget r8() => ClipRRect(borderRadius: BorderRadius.circular(8), child: this);
  
  /// r10() -> border-radius: 10px;
  Widget r10() => ClipRRect(borderRadius: BorderRadius.circular(10), child: this);
  
  /// r12() -> border-radius: 12px;
  Widget r12() => ClipRRect(borderRadius: BorderRadius.circular(12), child: this);
  
  /// r16() -> border-radius: 16px;
  Widget r16() => ClipRRect(borderRadius: BorderRadius.circular(16), child: this);
  
  /// r20() -> border-radius: 20px;
  Widget r20() => ClipRRect(borderRadius: BorderRadius.circular(20), child: this);
  
  /// r24() -> border-radius: 24px;
  Widget r24() => ClipRRect(borderRadius: BorderRadius.circular(24), child: this);
  
  /// r32() -> border-radius: 32px;
  Widget r32() => ClipRRect(borderRadius: BorderRadius.circular(32), child: this);
}
