import 'package:flutter/material.dart';

/// Tailwind CSS Font Style utilities for Flutter
/// Utilities for controlling the font style of an element.
extension FontStyleExt on Widget {
  
  // === font-style utilities ===
  
  /// italic -> font-style: italic;
  Widget italic() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
        ),
        child: this,
      );
  
  /// not-italic -> font-style: normal;
  Widget notItalic() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.normal,
        ),
        child: this,
      );

  // === 扩展字体样式 ===
  
  /// 正常字体样式
  Widget fontStyleNormal() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.normal,
        ),
        child: this,
      );
  
  /// 斜体字体样式
  Widget fontStyleItalic() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
        ),
        child: this,
      );

  // === 自定义字体样式组合 ===
  
  /// 强调文本（斜体 + 中等粗细）
  Widget emphasis() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );
  
  /// 引用文本样式
  Widget quote() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.grey,
        ),
        child: this,
      );
  
  /// 标题斜体
  Widget titleItalic() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        child: this,
      );
  
  /// 副标题斜体
  Widget subtitleItalic() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Colors.grey,
        ),
        child: this,
      );

  // === 条件字体样式 ===
  
  /// 根据条件应用斜体
  Widget conditionalItalic(bool condition) => DefaultTextStyle.merge(
        style: TextStyle(
          fontStyle: condition ? FontStyle.italic : FontStyle.normal,
        ),
        child: this,
      );
  
  /// 切换字体样式
  Widget toggleItalic(bool isItalic) => DefaultTextStyle.merge(
        style: TextStyle(
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        ),
        child: this,
      );

  // === 语义化字体样式 ===
  
  /// 强调内容（通常使用斜体）
  Widget textEmphasis() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
        ),
        child: this,
      );
  
  /// 引用内容
  Widget textCite() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
        ),
        child: this,
      );
  
  /// 定义术语
  Widget textDfn() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
        ),
        child: this,
      );
  
  /// 变量名或占位符
  Widget textVar() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontFamily: 'monospace',
        ),
        child: this,
      );

  // === 特殊用途字体样式 ===
  
  /// 地址样式
  Widget textAddress() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 14,
        ),
        child: this,
      );
  
  /// 说明文字样式
  Widget textCaption() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 12,
          color: Colors.grey,
        ),
        child: this,
      );
  
  /// 免责声明样式
  Widget textDisclaimer() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 12,
          color: Colors.grey,
        ),
        child: this,
      );
  
  /// 署名样式
  Widget textByline() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 14,
          color: Colors.grey,
        ),
        child: this,
      );

  // === 国际化字体样式 ===
  
  /// 外语文本样式
  Widget textForeign() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
        ),
        child: this,
      );
  
  /// 拉丁文样式
  Widget textLatin() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
        ),
        child: this,
      );

  // === 数学和科学文本样式 ===
  
  /// 数学变量样式
  Widget textMathVar() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontFamily: 'serif',
        ),
        child: this,
      );
  
  /// 科学术语样式
  Widget textScientific() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontStyle: FontStyle.italic,
        ),
        child: this,
      );

  // === 自定义字体样式方法 ===
  
  /// 自定义字体样式
  Widget customFontStyle(FontStyle style) => DefaultTextStyle.merge(
        style: TextStyle(
          fontStyle: style,
        ),
        child: this,
      );
  
  /// 带颜色的斜体
  Widget italicWithColor(Color color) => DefaultTextStyle.merge(
        style: TextStyle(
          fontStyle: FontStyle.italic,
          color: color,
        ),
        child: this,
      );
  
  /// 带字重的斜体
  Widget italicWithWeight(FontWeight weight) => DefaultTextStyle.merge(
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: weight,
        ),
        child: this,
      );
  
  /// 带字号的斜体
  Widget italicWithSize(double size) => DefaultTextStyle.merge(
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: size,
        ),
        child: this,
      );
}
