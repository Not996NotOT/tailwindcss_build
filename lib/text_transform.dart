import 'package:flutter/material.dart';

/// Tailwind CSS Text Transform utilities for Flutter
/// Utilities for controlling the transformation of text.
extension TextTransformExt on Widget {
  
  // === text-transform utilities ===
  
  /// uppercase -> text-transform: uppercase;
  Widget uppercase() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        (text.data ?? '').toUpperCase(),
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return _TextTransformWrapper(
      transform: TextTransformType.uppercase,
      child: this,
    );
  }
  
  /// lowercase -> text-transform: lowercase;
  Widget lowercase() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        (text.data ?? '').toLowerCase(),
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return _TextTransformWrapper(
      transform: TextTransformType.lowercase,
      child: this,
    );
  }
  
  /// capitalize -> text-transform: capitalize;
  Widget capitalize() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        _capitalizeString(text.data ?? ''),
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return _TextTransformWrapper(
      transform: TextTransformType.capitalize,
      child: this,
    );
  }
  
  /// normal-case -> text-transform: none;
  Widget normalCase() {
    return _TextTransformWrapper(
      transform: TextTransformType.none,
      child: this,
    );
  }

  // === Custom text transformations ===
  
  /// Custom text transformation
  Widget customTransform(String Function(String) transformer) {
    if (this is Text) {
      final text = this as Text;
      return Text(
        transformer(text.data ?? ''),
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return _CustomTextTransformWrapper(
      transformer: transformer,
      child: this,
    );
  }

  // === Specific case transformations ===
  
  /// Title case (capitalize first letter of each word)
  Widget titleCase() {
    return customTransform(_titleCase);
  }
  
  /// Sentence case (capitalize first letter of first word)
  Widget sentenceCase() {
    return customTransform(_sentenceCase);
  }
  
  /// camelCase transformation
  Widget camelCase() {
    return customTransform(_camelCase);
  }
  
  /// snake_case transformation
  Widget snakeCase() {
    return customTransform(_snakeCase);
  }
  
  /// kebab-case transformation
  Widget kebabCase() {
    return customTransform(_kebabCase);
  }
  
  /// CONSTANT_CASE transformation
  Widget constantCase() {
    return customTransform(_constantCase);
  }

  // === Conditional transformations ===
  
  /// Conditional uppercase
  Widget conditionalUppercase(bool condition) {
    return condition ? uppercase() : this;
  }
  
  /// Conditional lowercase
  Widget conditionalLowercase(bool condition) {
    return condition ? lowercase() : this;
  }
  
  /// Conditional capitalize
  Widget conditionalCapitalize(bool condition) {
    return condition ? capitalize() : this;
  }
  
  /// Toggle case transformation
  Widget toggleCase(bool isUpper) {
    return isUpper ? uppercase() : lowercase();
  }

  // === Locale-specific transformations ===
  
  /// Locale-specific uppercase
  Widget localeUppercase(Locale locale) {
    return customTransform((text) => text.toUpperCase());
  }
  
  /// Locale-specific lowercase
  Widget localeLowercase(Locale locale) {
    return customTransform((text) => text.toLowerCase());
  }

  // === Advanced transformations ===
  
  /// Remove extra spaces and normalize whitespace
  Widget normalizeWhitespace() {
    return customTransform((text) => text.replaceAll(RegExp(r'\s+'), ' ').trim());
  }
  
  /// Remove all whitespace
  Widget removeSpaces() {
    return customTransform((text) => text.replaceAll(RegExp(r'\s'), ''));
  }
  
  /// Reverse text
  Widget reverseText() {
    return customTransform((text) => text.split('').reversed.join(''));
  }
  
  /// Replace text
  Widget replaceText(String from, String to) {
    return customTransform((text) => text.replaceAll(from, to));
  }
  
  /// Replace with regex
  Widget replaceRegex(RegExp pattern, String replacement) {
    return customTransform((text) => text.replaceAll(pattern, replacement));
  }
}

/// Text transformation types
enum TextTransformType {
  none,
  uppercase,
  lowercase,
  capitalize,
}

/// Wrapper widget for text transformations
class _TextTransformWrapper extends StatelessWidget {
  final TextTransformType transform;
  final Widget child;

  const _TextTransformWrapper({
    required this.transform,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      child: child,
    );
  }
}

/// Custom text transform wrapper
class _CustomTextTransformWrapper extends StatelessWidget {
  final String Function(String) transformer;
  final Widget child;

  const _CustomTextTransformWrapper({
    required this.transformer,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      child: child,
    );
  }
}

// === Helper functions for text transformations ===

String _capitalizeString(String text) {
  if (text.isEmpty) return text;
  return text.split(' ').map((word) {
    if (word.isEmpty) return word;
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).join(' ');
}

String _titleCase(String text) {
  if (text.isEmpty) return text;
  return text.split(' ').map((word) {
    if (word.isEmpty) return word;
    return word[0].toUpperCase() + word.substring(1);
  }).join(' ');
}

String _sentenceCase(String text) {
  if (text.isEmpty) return text;
  return text[0].toUpperCase() + text.substring(1).toLowerCase();
}

String _camelCase(String text) {
  if (text.isEmpty) return text;
  final words = text.split(RegExp(r'[\s_-]+'));
  if (words.isEmpty) return text;
  
  String result = words[0].toLowerCase();
  for (int i = 1; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      result += words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
    }
  }
  return result;
}

String _snakeCase(String text) {
  return text
      .replaceAllMapped(RegExp(r'[A-Z]'), (match) => '_${match.group(0)?.toLowerCase() ?? ''}')
      .replaceAll(RegExp(r'[\s-]+'), '_')
      .replaceAll(RegExp(r'^_'), '')
      .toLowerCase();
}

String _kebabCase(String text) {
  return text
      .replaceAllMapped(RegExp(r'[A-Z]'), (match) => '-${match.group(0)?.toLowerCase() ?? ''}')
      .replaceAll(RegExp(r'[\s_]+'), '-')
      .replaceAll(RegExp(r'^-'), '')
      .toLowerCase();
}

String _constantCase(String text) {
  return _snakeCase(text).toUpperCase();
}
