import 'package:flutter/material.dart';

/// Tailwind CSS Float utilities for Flutter
/// Utilities for controlling wrapping of content around an element.
extension FloatExt on Widget {
  
  // === Float utilities ===
  
  /// float-start -> float: inline-start;
  /// 在Flutter中使用Align来模拟float效果
  Widget floatStart() => Align(
    alignment: Alignment.centerLeft,
    child: this,
  );
  
  /// float-end -> float: inline-end;
  Widget floatEnd() => Align(
    alignment: Alignment.centerRight,
    child: this,
  );
  
  /// float-right -> float: right;
  Widget floatRight() => Align(
    alignment: Alignment.centerRight,
    child: this,
  );
  
  /// float-left -> float: left;
  Widget floatLeft() => Align(
    alignment: Alignment.centerLeft,
    child: this,
  );
  
  /// float-none -> float: none;
  Widget floatNone() => this;
}

/// Flutter中实现float布局的扩展
extension FloatLayoutExt on Widget {
  
  /// 创建左浮动布局
  Widget floatLeftLayout({Widget? beside}) {
    if (beside == null) return floatLeft();
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        this,
        Expanded(child: beside),
      ],
    );
  }
  
  /// 创建右浮动布局
  Widget floatRightLayout({Widget? beside}) {
    if (beside == null) return floatRight();
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: beside),
        this,
      ],
    );
  }
  
  /// 创建环绕文字的浮动效果
  Widget floatWithText(String text, {
    bool floatLeft = true,
    TextStyle? textStyle,
    double spacing = 8.0,
  }) {
    return Stack(
      children: [
        Positioned(
          left: floatLeft ? 0 : null,
          right: floatLeft ? null : 0,
          top: 0,
          child: this,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: floatLeft ? 0 : spacing,
            right: floatLeft ? spacing : 0,
          ),
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ],
    );
  }
}

/// Float工具类
class Float {
  /// 创建左浮动元素
  static Widget left(Widget child) => child.floatLeft();
  
  /// 创建右浮动元素
  static Widget right(Widget child) => child.floatRight();
  
  /// 创建无浮动元素
  static Widget none(Widget child) => child.floatNone();
  
  /// 创建浮动布局
  static Widget layout({
    required Widget floated,
    required Widget content,
    bool floatLeft = true,
  }) {
    if (floatLeft) {
      return floated.floatLeftLayout(beside: content);
    } else {
      return floated.floatRightLayout(beside: content);
    }
  }
}

/// Tailwind CSS Clear utilities for Flutter
/// Utilities for controlling wrapping of content around an element.
extension ClearExt on Widget {
  
  // === Clear utilities ===
  
  /// clear-start -> clear: inline-start;
  /// 在Flutter中通过Column来清除浮动
  Widget clearStart() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [this],
  );
  
  /// clear-end -> clear: inline-end;
  Widget clearEnd() => Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [this],
  );
  
  /// clear-left -> clear: left;
  Widget clearLeft() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(width: double.infinity),
      this,
    ],
  );
  
  /// clear-right -> clear: right;
  Widget clearRight() => Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      const SizedBox(width: double.infinity),
      this,
    ],
  );
  
  /// clear-both -> clear: both;
  Widget clearBoth() => Column(
    children: [
      const SizedBox(width: double.infinity),
      this,
    ],
  );
  
  /// clear-none -> clear: none;
  Widget clearNone() => this;
}

/// Clear工具类
class Clear {
  /// 清除左浮动
  static Widget left(Widget child) => child.clearLeft();
  
  /// 清除右浮动
  static Widget right(Widget child) => child.clearRight();
  
  /// 清除两侧浮动
  static Widget both(Widget child) => child.clearBoth();
  
  /// 不清除浮动
  static Widget none(Widget child) => child.clearNone();
  
  /// 创建清除浮动的分隔符
  static Widget separator({double height = 0}) => SizedBox(
    width: double.infinity,
    height: height,
  );
}
