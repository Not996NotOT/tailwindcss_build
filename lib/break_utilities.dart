import 'package:flutter/material.dart';

/// Tailwind CSS Break utilities for Flutter
/// Utilities for controlling how page breaks should behave around an element.

// === Break After utilities ===
extension BreakAfterExt on Widget {
  
  /// break-after-auto -> break-after: auto;
  Widget breakAfterAuto() => this;
  
  /// break-after-avoid -> break-after: avoid;
  Widget breakAfterAvoid() => this;
  
  /// break-after-all -> break-after: all;
  Widget breakAfterAll() => this;
  
  /// break-after-avoid-page -> break-after: avoid-page;
  Widget breakAfterAvoidPage() => this;
  
  /// break-after-page -> break-after: page;
  Widget breakAfterPage() => this;
  
  /// break-after-left -> break-after: left;
  Widget breakAfterLeft() => this;
  
  /// break-after-right -> break-after: right;
  Widget breakAfterRight() => this;
  
  /// break-after-column -> break-after: column;
  Widget breakAfterColumn() => this;
}

// === Break Before utilities ===
extension BreakBeforeExt on Widget {
  
  /// break-before-auto -> break-before: auto;
  Widget breakBeforeAuto() => this;
  
  /// break-before-avoid -> break-before: avoid;
  Widget breakBeforeAvoid() => this;
  
  /// break-before-all -> break-before: all;
  Widget breakBeforeAll() => this;
  
  /// break-before-avoid-page -> break-before: avoid-page;
  Widget breakBeforeAvoidPage() => this;
  
  /// break-before-page -> break-before: page;
  Widget breakBeforePage() => this;
  
  /// break-before-left -> break-before: left;
  Widget breakBeforeLeft() => this;
  
  /// break-before-right -> break-before: right;
  Widget breakBeforeRight() => this;
  
  /// break-before-column -> break-before: column;
  Widget breakBeforeColumn() => this;
}

// === Break Inside utilities ===
extension BreakInsideExt on Widget {
  
  /// break-inside-auto -> break-inside: auto;
  Widget breakInsideAuto() => this;
  
  /// break-inside-avoid -> break-inside: avoid;
  Widget breakInsideAvoid() => this;
  
  /// break-inside-avoid-page -> break-inside: avoid-page;
  Widget breakInsideAvoidPage() => this;
  
  /// break-inside-avoid-column -> break-inside: avoid-column;
  Widget breakInsideAvoidColumn() => this;
}

/// 在Flutter中，分页和分列主要通过布局容器来处理
/// 这些方法提供了语义化的命名，实际行为在Flutter中通过其他方式实现

/// Break工具类
class Break {
  /// 创建避免分页的容器
  static Widget avoidPageBreak(Widget child) {
    return Container(
      child: child,
    );
  }
  
  /// 创建避免分列的容器
  static Widget avoidColumnBreak(Widget child) {
    return Container(
      child: child,
    );
  }
  
  /// 强制分页
  static Widget forcePage(Widget child) {
    return Column(
      children: [
        child,
        const SizedBox(height: double.infinity),
      ],
    );
  }
  
  /// 强制分列
  static Widget forceColumn(Widget child) {
    return Row(
      children: [
        Expanded(child: child),
        const SizedBox(width: double.infinity),
      ],
    );
  }
}
