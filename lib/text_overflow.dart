import 'package:flutter/material.dart';

/// Tailwind CSS Text Overflow utilities for Flutter
/// Utilities for controlling text overflow in an element.
extension TextOverflowExt on Widget {
  
  // === text-overflow utilities ===
  
  /// truncate -> overflow: hidden; text-overflow: ellipsis; white-space: nowrap;
  Widget truncate() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: false,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      softWrap: false,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      child: this,
    );
  }
  
  /// text-ellipsis -> text-overflow: ellipsis;
  Widget textEllipsis() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: TextOverflow.ellipsis,
        maxLines: text.maxLines,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      overflow: TextOverflow.ellipsis,
      child: this,
    );
  }
  
  /// text-clip -> text-overflow: clip;
  Widget textClip() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: TextOverflow.clip,
        maxLines: text.maxLines,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      overflow: TextOverflow.clip,
      child: this,
    );
  }

  // === Custom text overflow ===
  
  /// Custom text overflow
  Widget customOverflow(TextOverflow overflow) {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: overflow,
        maxLines: text.maxLines,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      overflow: overflow,
      child: this,
    );
  }

  // === Line clamping utilities ===
  
  /// line-clamp-1 -> display: -webkit-box; -webkit-line-clamp: 1;
  Widget lineClamp1() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      child: this,
    );
  }
  
  /// line-clamp-2 -> display: -webkit-box; -webkit-line-clamp: 2;
  Widget lineClamp2() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      child: this,
    );
  }
  
  /// line-clamp-3 -> display: -webkit-box; -webkit-line-clamp: 3;
  Widget lineClamp3() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      child: this,
    );
  }
  
  /// line-clamp-4 -> display: -webkit-box; -webkit-line-clamp: 4;
  Widget lineClamp4() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: 4,
      child: this,
    );
  }
  
  /// line-clamp-5 -> display: -webkit-box; -webkit-line-clamp: 5;
  Widget lineClamp5() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 5,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: 5,
      child: this,
    );
  }
  
  /// line-clamp-6 -> display: -webkit-box; -webkit-line-clamp: 6;
  Widget lineClamp6() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 6,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: 6,
      child: this,
    );
  }
  
  /// line-clamp-none -> -webkit-line-clamp: none;
  Widget lineClampNone() {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: true,
        overflow: null,
        maxLines: null,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      softWrap: true,
      overflow: null,
      maxLines: null,
      child: this,
    );
  }

  // === Custom line clamping ===
  
  /// Custom line clamp
  Widget lineClamp(int lines) {
    if (this is Text) {
      final text = this as Text;
      return Text(
        text.data ?? '',
        style: text.style,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: lines,
        textScaler: text.textScaler,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior,
        strutStyle: text.strutStyle,
      );
    }
    return DefaultTextStyle.merge(
      style: const TextStyle(),
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: lines,
      child: this,
    );
  }

  // === Advanced text overflow ===
  
  /// Fade overflow (using a custom widget)
  Widget fadeOverflow() {
    return _FadeOverflowText(child: this);
  }
  
  /// Custom ellipsis text
  Widget customEllipsis(String ellipsis) {
    return _CustomEllipsisText(ellipsis: ellipsis, child: this);
  }

  // === Conditional overflow ===
  
  /// Conditional truncate
  Widget conditionalTruncate(bool condition) {
    return condition ? truncate() : this;
  }
  
  /// Conditional line clamp
  Widget conditionalLineClamp(bool condition, int lines) {
    return condition ? lineClamp(lines) : this;
  }

  // === Responsive text overflow ===
  
  /// Responsive line clamp based on screen size
  Widget responsiveLineClamp({
    int? xs, // < 576px
    int? sm, // >= 576px
    int? md, // >= 768px
    int? lg, // >= 992px
    int? xl, // >= 1200px
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int? lines;
        
        final width = constraints.maxWidth;
        
        if (width >= 1200 && xl != null) {
          lines = xl;
        } else if (width >= 992 && lg != null) {
          lines = lg;
        } else if (width >= 768 && md != null) {
          lines = md;
        } else if (width >= 576 && sm != null) {
          lines = sm;
        } else if (xs != null) {
          lines = xs;
        }
        
        return lines != null ? lineClamp(lines) : this;
      },
    );
  }
}

/// Custom fade overflow widget
class _FadeOverflowText extends StatelessWidget {
  final Widget child;

  const _FadeOverflowText({required this.child});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.black, Colors.black, Colors.transparent],
          stops: [0.0, 0.8, 1.0],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstIn,
      child: child,
    );
  }
}

/// Custom ellipsis text widget
class _CustomEllipsisText extends StatelessWidget {
  final String ellipsis;
  final Widget child;

  const _CustomEllipsisText({
    required this.ellipsis,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    // This is a simplified implementation
    // In a real implementation, you would need to measure text and manually add ellipsis
    return child;
  }
}


