import 'package:flutter/material.dart';

/// Tailwind CSS Text Align utilities for Flutter
/// Utilities for controlling the alignment of text.
extension TextAlignExt on Widget {
  
  // === text-align utilities ===
  
  /// text-left -> text-align: left;
  Widget textLeft() => DefaultTextStyle.merge(
        style: const TextStyle(),
        child: Container(
          alignment: Alignment.centerLeft,
          child: this,
        ),
      );
  
  /// text-center -> text-align: center;
  Widget textCenter() => DefaultTextStyle.merge(
        style: const TextStyle(),
        child: Container(
          alignment: Alignment.center,
          child: this,
        ),
      );
  
  /// text-right -> text-align: right;
  Widget textRight() => DefaultTextStyle.merge(
        style: const TextStyle(),
        child: Container(
          alignment: Alignment.centerRight,
          child: this,
        ),
      );
  
  /// text-justify -> text-align: justify;
  Widget textJustify() => DefaultTextStyle.merge(
        style: const TextStyle(),
        child: Container(
          alignment: Alignment.centerLeft,
          child: this,
        ),
      );
  
  /// text-start -> text-align: start; (逻辑开始位置，支持RTL)
  Widget textStart() => DefaultTextStyle.merge(
        style: const TextStyle(),
        child: Container(
          alignment: AlignmentDirectional.centerStart,
          child: this,
        ),
      );
  
  /// text-end -> text-align: end; (逻辑结束位置，支持RTL)
  Widget textEnd() => DefaultTextStyle.merge(
        style: const TextStyle(),
        child: Container(
          alignment: AlignmentDirectional.centerEnd,
          child: this,
        ),
      );

  // === 对齐方式（使用Text widget的textAlign属性） ===
  
  /// 文本左对齐
  Widget alignLeft() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: TextAlign.left,
        overflow: text.overflow,
        maxLines: text.maxLines,
        softWrap: text.softWrap,
        textScaleFactor: text.textScaleFactor,
        textDirection: text.textDirection,
        locale: text.locale,
        strutStyle: text.strutStyle,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      textAlign: TextAlign.left,
      child: this,
    );
  }
  
  /// 文本居中对齐
  Widget alignCenter() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: TextAlign.center,
        overflow: text.overflow,
        maxLines: text.maxLines,
        softWrap: text.softWrap,
        textScaleFactor: text.textScaleFactor,
        textDirection: text.textDirection,
        locale: text.locale,
        strutStyle: text.strutStyle,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      textAlign: TextAlign.center,
      child: this,
    );
  }
  
  /// 文本右对齐
  Widget alignRight() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: TextAlign.right,
        overflow: text.overflow,
        maxLines: text.maxLines,
        softWrap: text.softWrap,
        textScaleFactor: text.textScaleFactor,
        textDirection: text.textDirection,
        locale: text.locale,
        strutStyle: text.strutStyle,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      textAlign: TextAlign.right,
      child: this,
    );
  }
  
  /// 文本两端对齐
  Widget alignJustify() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: TextAlign.justify,
        overflow: text.overflow,
        maxLines: text.maxLines,
        softWrap: text.softWrap,
        textScaleFactor: text.textScaleFactor,
        textDirection: text.textDirection,
        locale: text.locale,
        strutStyle: text.strutStyle,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      textAlign: TextAlign.justify,
      child: this,
    );
  }
  
  /// 文本逻辑开始对齐
  Widget alignStart() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: TextAlign.start,
        overflow: text.overflow,
        maxLines: text.maxLines,
        softWrap: text.softWrap,
        textScaleFactor: text.textScaleFactor,
        textDirection: text.textDirection,
        locale: text.locale,
        strutStyle: text.strutStyle,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      textAlign: TextAlign.start,
      child: this,
    );
  }
  
  /// 文本逻辑结束对齐
  Widget alignEnd() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: TextAlign.end,
        overflow: text.overflow,
        maxLines: text.maxLines,
        softWrap: text.softWrap,
        textScaleFactor: text.textScaleFactor,
        textDirection: text.textDirection,
        locale: text.locale,
        strutStyle: text.strutStyle,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      textAlign: TextAlign.end,
      child: this,
    );
  }

  // === 自定义文本对齐 ===
  
  /// 自定义文本对齐方式
  Widget customTextAlign(TextAlign align) {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: align,
        overflow: text.overflow,
        maxLines: text.maxLines,
        softWrap: text.softWrap,
        textScaleFactor: text.textScaleFactor,
        textDirection: text.textDirection,
        locale: text.locale,
        strutStyle: text.strutStyle,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      textAlign: align,
      child: this,
    );
  }

  // === 响应式文本对齐 ===
  
  /// 根据屏幕尺寸调整文本对齐
  Widget responsiveTextAlign({
    TextAlign? xs, // < 576px
    TextAlign? sm, // >= 576px
    TextAlign? md, // >= 768px
    TextAlign? lg, // >= 992px
    TextAlign? xl, // >= 1200px
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        TextAlign align = TextAlign.left; // 默认对齐
        
        final width = constraints.maxWidth;
        
        if (width >= 1200 && xl != null) {
          align = xl;
        } else if (width >= 992 && lg != null) {
          align = lg;
        } else if (width >= 768 && md != null) {
          align = md;
        } else if (width >= 576 && sm != null) {
          align = sm;
        } else if (xs != null) {
          align = xs;
        }
        
        return customTextAlign(align);
      },
    );
  }

  // === 条件文本对齐 ===
  
  /// 根据条件决定文本对齐
  Widget conditionalAlign(bool condition, TextAlign trueAlign, TextAlign falseAlign) {
    return customTextAlign(condition ? trueAlign : falseAlign);
  }
  
  /// 切换文本对齐
  Widget toggleAlign(bool isCenter) {
    return customTextAlign(isCenter ? TextAlign.center : TextAlign.left);
  }

  // === 特殊场景文本对齐 ===
  
  /// 标题对齐（通常居中）
  Widget headingAlign() => alignCenter();
  
  /// 副标题对齐（通常左对齐）
  Widget subheadingAlign() => alignLeft();
  
  /// 正文对齐（两端对齐，适合长文本）
  Widget bodyAlign() => alignJustify();
  
  /// 按钮文本对齐（居中）
  Widget buttonAlign() => alignCenter();
  
  /// 标签文本对齐（左对齐）
  Widget labelAlign() => alignLeft();
  
  /// 说明文字对齐（左对齐）
  Widget captionAlign() => alignLeft();
  
  /// 引用文本对齐（居中）
  Widget quoteAlign() => alignCenter();
  
  /// 代码对齐（左对齐）
  Widget codeAlign() => alignLeft();

  // === 国际化文本对齐 ===
  
  /// LTR文本对齐
  Widget ltrAlign() => alignLeft();
  
  /// RTL文本对齐
  Widget rtlAlign() => alignRight();
  
  /// 自动方向对齐
  Widget autoDirectionAlign() => alignStart();

  // === 多行文本对齐 ===
  
  /// 多行文本左对齐
  Widget multilineLeft() => DefaultTextStyle.merge(
        style: const TextStyle(),
        textAlign: TextAlign.left,
        child: this,
      );
  
  /// 多行文本居中对齐
  Widget multilineCenter() => DefaultTextStyle.merge(
        style: const TextStyle(),
        textAlign: TextAlign.center,
        child: this,
      );
  
  /// 多行文本右对齐
  Widget multilineRight() => DefaultTextStyle.merge(
        style: const TextStyle(),
        textAlign: TextAlign.right,
        child: this,
      );
  
  /// 多行文本两端对齐
  Widget multilineJustify() => DefaultTextStyle.merge(
        style: const TextStyle(),
        textAlign: TextAlign.justify,
        child: this,
      );
}
