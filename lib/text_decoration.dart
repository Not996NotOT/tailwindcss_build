import 'package:flutter/material.dart';

/// Tailwind CSS Text Decoration utilities for Flutter
/// Utilities for controlling the decoration of text.
extension TextDecorationExt on Widget {
  
  // === text-decoration-line utilities ===
  
  /// underline -> text-decoration-line: underline;
  Widget underline() => DefaultTextStyle.merge(
        style: const TextStyle(
          decoration: TextDecoration.underline,
        ),
        child: this,
      );
  
  /// overline -> text-decoration-line: overline;
  Widget overline() => DefaultTextStyle.merge(
        style: const TextStyle(
          decoration: TextDecoration.overline,
        ),
        child: this,
      );
  
  /// line-through -> text-decoration-line: line-through;
  Widget lineThrough() => DefaultTextStyle.merge(
        style: const TextStyle(
          decoration: TextDecoration.lineThrough,
        ),
        child: this,
      );
  
  /// no-underline -> text-decoration-line: none;
  Widget noUnderline() => DefaultTextStyle.merge(
        style: const TextStyle(
          decoration: TextDecoration.none,
        ),
        child: this,
      );

  // === text-decoration-color utilities ===
  
  /// Custom decoration color
  Widget decorationColor(Color color) => DefaultTextStyle.merge(
        style: TextStyle(
          decorationColor: color,
        ),
        child: this,
      );
  
  /// decoration-black
  Widget decorationBlack() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationColor: Colors.black,
        ),
        child: this,
      );
  
  /// decoration-white
  Widget decorationWhite() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationColor: Colors.white,
        ),
        child: this,
      );
  
  /// decoration-red
  Widget decorationRed() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationColor: Colors.red,
        ),
        child: this,
      );
  
  /// decoration-blue
  Widget decorationBlue() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationColor: Colors.blue,
        ),
        child: this,
      );
  
  /// decoration-green
  Widget decorationGreen() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationColor: Colors.green,
        ),
        child: this,
      );

  // === text-decoration-style utilities ===
  
  /// decoration-solid -> text-decoration-style: solid;
  Widget decorationSolid() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationStyle: TextDecorationStyle.solid,
        ),
        child: this,
      );
  
  /// decoration-double -> text-decoration-style: double;
  Widget decorationDouble() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationStyle: TextDecorationStyle.double,
        ),
        child: this,
      );
  
  /// decoration-dotted -> text-decoration-style: dotted;
  Widget decorationDotted() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationStyle: TextDecorationStyle.dotted,
        ),
        child: this,
      );
  
  /// decoration-dashed -> text-decoration-style: dashed;
  Widget decorationDashed() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationStyle: TextDecorationStyle.dashed,
        ),
        child: this,
      );
  
  /// decoration-wavy -> text-decoration-style: wavy;
  Widget decorationWavy() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationStyle: TextDecorationStyle.wavy,
        ),
        child: this,
      );

  // === text-decoration-thickness utilities ===
  
  /// decoration-auto -> text-decoration-thickness: auto;
  Widget decorationAuto() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationThickness: null, // auto
        ),
        child: this,
      );
  
  /// decoration-from-font -> text-decoration-thickness: from-font;
  Widget decorationFromFont() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationThickness: null, // Flutter uses font metrics
        ),
        child: this,
      );
  
  /// decoration-0 -> text-decoration-thickness: 0px;
  Widget decoration0() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationThickness: 0,
        ),
        child: this,
      );
  
  /// decoration-1 -> text-decoration-thickness: 1px;
  Widget decoration1() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationThickness: 1,
        ),
        child: this,
      );
  
  /// decoration-2 -> text-decoration-thickness: 2px;
  Widget decoration2() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationThickness: 2,
        ),
        child: this,
      );
  
  /// decoration-4 -> text-decoration-thickness: 4px;
  Widget decoration4() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationThickness: 4,
        ),
        child: this,
      );
  
  /// decoration-8 -> text-decoration-thickness: 8px;
  Widget decoration8() => DefaultTextStyle.merge(
        style: const TextStyle(
          decorationThickness: 8,
        ),
        child: this,
      );

  // === text-underline-offset utilities ===
  
  /// underline-offset-auto -> text-underline-offset: auto;
  Widget underlineOffsetAuto() => DefaultTextStyle.merge(
        style: const TextStyle(
          // Flutter doesn't directly support underline offset
          // This is a placeholder for semantic consistency
        ),
        child: this,
      );
  
  /// underline-offset-0 -> text-underline-offset: 0px;
  Widget underlineOffset0() => DefaultTextStyle.merge(
        style: const TextStyle(
          // Flutter doesn't directly support underline offset
        ),
        child: this,
      );
  
  /// underline-offset-1 -> text-underline-offset: 1px;
  Widget underlineOffset1() => DefaultTextStyle.merge(
        style: const TextStyle(
          // Flutter doesn't directly support underline offset
        ),
        child: this,
      );
  
  /// underline-offset-2 -> text-underline-offset: 2px;
  Widget underlineOffset2() => DefaultTextStyle.merge(
        style: const TextStyle(
          // Flutter doesn't directly support underline offset
        ),
        child: this,
      );
  
  /// underline-offset-4 -> text-underline-offset: 4px;
  Widget underlineOffset4() => DefaultTextStyle.merge(
        style: const TextStyle(
          // Flutter doesn't directly support underline offset
        ),
        child: this,
      );
  
  /// underline-offset-8 -> text-underline-offset: 8px;
  Widget underlineOffset8() => DefaultTextStyle.merge(
        style: const TextStyle(
          // Flutter doesn't directly support underline offset
        ),
        child: this,
      );

  // === Custom decorations ===
  
  /// Custom decoration thickness
  Widget decorationThickness(double thickness) => DefaultTextStyle.merge(
        style: TextStyle(
          decorationThickness: thickness,
        ),
        child: this,
      );
  
  /// Custom text decoration
  Widget customDecoration({
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) => DefaultTextStyle.merge(
        style: TextStyle(
          decoration: decoration,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decorationThickness: decorationThickness,
        ),
        child: this,
      );

  // === Combination decorations ===
  
  /// Combined underline and overline
  Widget underlineOverline() => DefaultTextStyle.merge(
        style: TextStyle(
          decoration: TextDecoration.combine([
            TextDecoration.underline,
            TextDecoration.overline,
          ]),
        ),
        child: this,
      );
  
  /// Combined underline and line-through
  Widget underlineStrikethrough() => DefaultTextStyle.merge(
        style: TextStyle(
          decoration: TextDecoration.combine([
            TextDecoration.underline,
            TextDecoration.lineThrough,
          ]),
        ),
        child: this,
      );

  // === Semantic decorations ===
  
  /// Link decoration (blue underline)
  Widget linkDecoration() => DefaultTextStyle.merge(
        style: const TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
          color: Colors.blue,
        ),
        child: this,
      );
  
  /// Visited link decoration (purple underline)
  Widget visitedLinkDecoration() => DefaultTextStyle.merge(
        style: const TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.purple,
          color: Colors.purple,
        ),
        child: this,
      );
  
  /// Error decoration (red wavy underline)
  Widget errorDecoration() => DefaultTextStyle.merge(
        style: const TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy,
        ),
        child: this,
      );
  
  /// Warning decoration (orange wavy underline)
  Widget warningDecoration() => DefaultTextStyle.merge(
        style: const TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.orange,
          decorationStyle: TextDecorationStyle.wavy,
        ),
        child: this,
      );
  
  /// Success decoration (green underline)
  Widget successDecoration() => DefaultTextStyle.merge(
        style: const TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.green,
        ),
        child: this,
      );
  
  /// Deleted text decoration (line-through)
  Widget deletedDecoration() => DefaultTextStyle.merge(
        style: const TextStyle(
          decoration: TextDecoration.lineThrough,
          decorationColor: Colors.red,
        ),
        child: this,
      );
  
  /// Inserted text decoration (underline)
  Widget insertedDecoration() => DefaultTextStyle.merge(
        style: const TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.green,
        ),
        child: this,
      );

  // === Conditional decorations ===
  
  /// Conditional underline
  Widget conditionalUnderline(bool condition) => DefaultTextStyle.merge(
        style: TextStyle(
          decoration: condition ? TextDecoration.underline : TextDecoration.none,
        ),
        child: this,
      );
  
  /// Toggle decoration
  Widget toggleDecoration(bool isDecorated, TextDecoration decoration) => DefaultTextStyle.merge(
        style: TextStyle(
          decoration: isDecorated ? decoration : TextDecoration.none,
        ),
        child: this,
      );

  // === Hover/Focus decorations ===
  
  /// Hover underline (for interactive elements)
  Widget hoverUnderline() => MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Builder(
          builder: (context) {
            return DefaultTextStyle.merge(
              style: const TextStyle(
                decoration: TextDecoration.underline,
              ),
              child: this,
            );
          },
        ),
      );
  
  /// Focus decoration
  Widget focusDecoration() => FocusableActionDetector(
        child: this,
        onFocusChange: (focused) {},
      );
}
