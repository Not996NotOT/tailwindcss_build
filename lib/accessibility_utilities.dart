import 'package:flutter/material.dart';
import 'dart:math' as Math;

/// Tailwind CSS Accessibility utilities for Flutter
/// Utilities for improving accessibility and forced color adjustments.
extension AccessibilityUtilitiesExt on Widget {
  
  // === Forced Color Adjust ===
  
  /// forced-color-adjust-auto -> forced-color-adjust: auto;
  Widget forcedColorAdjustAuto() => this;
  
  /// forced-color-adjust-none -> forced-color-adjust: none;
  Widget forcedColorAdjustNone() => this;

  // === Custom Accessibility utilities ===
  
  /// 高对比度模式
  Widget highContrast({
    bool enabled = true,
    Color? foregroundColor,
    Color? backgroundColor,
  }) => enabled 
    ? Container(
        color: backgroundColor ?? Colors.white,
        child: DefaultTextStyle(
          style: TextStyle(
            color: foregroundColor ?? Colors.black,
            fontWeight: FontWeight.bold,
          ),
          child: this,
        ),
      )
    : this;
  
  /// 暗色模式适配
  Widget darkModeAdaptive({
    Widget? lightWidget,
    Widget? darkWidget,
  }) => Builder(
    builder: (context) {
      final brightness = Theme.of(context).brightness;
      if (brightness == Brightness.dark) {
        return darkWidget ?? this;
      }
      return lightWidget ?? this;
    },
  );
  
  /// 减少动画（适用于用户偏好设置）
  Widget reduceMotion({
    bool respectSystemSettings = true,
  }) => Builder(
    builder: (context) => respectSystemSettings
      ? MediaQuery.of(context).disableAnimations
        ? this
        : this
      : this,
  );
  
  /// 屏幕阅读器友好
  Widget screenReaderFriendly({
    String? semanticLabel,
    String? hint,
    bool excludeSemantics = false,
  }) => Semantics(
    label: semanticLabel,
    hint: hint,
    excludeSemantics: excludeSemantics,
    child: this,
  );
  
  /// 焦点可见性增强
  Widget enhancedFocus({
    Color focusColor = Colors.blue,
    double focusWidth = 2.0,
    BorderRadius? borderRadius,
  }) => FocusableActionDetector(
    onShowFocusHighlight: (focused) {},
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: focusColor,
          width: focusWidth,
        ),
        borderRadius: borderRadius,
      ),
      child: this,
    ),
  );
  
  /// 颜色盲友好
  Widget colorBlindFriendly({
    ColorBlindType type = ColorBlindType.protanopia,
  }) => ColorFiltered(
    colorFilter: _getColorBlindFilter(type),
    child: this,
  );
  
  /// 字体大小自适应
  Widget adaptiveFontSize({
    double baseFontSize = 14.0,
    double maxScale = 2.0,
  }) => Builder(
    builder: (context) {
      final textScaleFactor = MediaQuery.of(context).textScaleFactor;
      final scaledSize = baseFontSize * textScaleFactor.clamp(1.0, maxScale);
      
      return DefaultTextStyle(
        style: TextStyle(fontSize: scaledSize),
        child: this,
      );
    },
  );
  
  /// 触摸目标最小尺寸确保
  Widget minTouchTarget({
    double minWidth = 44.0,
    double minHeight = 44.0,
  }) => Container(
    constraints: BoxConstraints(
      minWidth: minWidth,
      minHeight: minHeight,
    ),
    child: this,
  );

  /// 键盘导航支持
  Widget keyboardNavigable({
    VoidCallback? onEnter,
    VoidCallback? onExit,
    bool autofocus = false,
  }) => Focus(
    autofocus: autofocus,
    onKey: (node, event) => KeyEventResult.ignored,
    child: MouseRegion(
      onEnter: (_) => onEnter?.call(),
      onExit: (_) => onExit?.call(),
      child: this,
    ),
  );
  
  /// 动态字体支持
  Widget dynamicFont({
    String? fontFamily,
    bool respectSystemFont = true,
  }) => Builder(
    builder: (context) {
      if (respectSystemFont) {
        return DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontFamily: fontFamily,
          ) ?? TextStyle(fontFamily: fontFamily),
          child: this,
        );
      }
      return this;
    },
  );
  
  /// 系统主题适配
  Widget systemThemeAdaptive() => Builder(
    builder: (context) {
      final platformBrightness = MediaQuery.of(context).platformBrightness;
      final theme = Theme.of(context);
      
      return Theme(
        data: theme.copyWith(
          brightness: platformBrightness,
        ),
        child: this,
      );
    },
  );
}

/// 色盲类型枚举
enum ColorBlindType {
  protanopia,    // 红色盲
  deuteranopia,  // 绿色盲
  tritanopia,    // 蓝色盲
  monochromacy,  // 全色盲
}

/// 获取色盲滤镜
ColorFilter _getColorBlindFilter(ColorBlindType type) {
  switch (type) {
    case ColorBlindType.protanopia:
      // 红色盲滤镜矩阵
      return const ColorFilter.matrix([
        0.567, 0.433, 0,     0, 0,
        0.558, 0.442, 0,     0, 0,
        0,     0.242, 0.758, 0, 0,
        0,     0,     0,     1, 0,
      ]);
    case ColorBlindType.deuteranopia:
      // 绿色盲滤镜矩阵
      return const ColorFilter.matrix([
        0.625, 0.375, 0,   0, 0,
        0.7,   0.3,   0,   0, 0,
        0,     0.3,   0.7, 0, 0,
        0,     0,     0,   1, 0,
      ]);
    case ColorBlindType.tritanopia:
      // 蓝色盲滤镜矩阵
      return const ColorFilter.matrix([
        0.95, 0.05,  0,     0, 0,
        0,    0.433, 0.567, 0, 0,
        0,    0.475, 0.525, 0, 0,
        0,    0,     0,     1, 0,
      ]);
    case ColorBlindType.monochromacy:
      // 全色盲滤镜矩阵（灰度）
      return const ColorFilter.matrix([
        0.299, 0.587, 0.114, 0, 0,
        0.299, 0.587, 0.114, 0, 0,
        0.299, 0.587, 0.114, 0, 0,
        0,     0,     0,     1, 0,
      ]);
  }
}

/// 无障碍性检查器
class AccessibilityChecker {
  /// 检查颜色对比度
  static double calculateContrastRatio(Color foreground, Color background) {
    final fgLuminance = _calculateLuminance(foreground);
    final bgLuminance = _calculateLuminance(background);
    
    final lighter = fgLuminance > bgLuminance ? fgLuminance : bgLuminance;
    final darker = fgLuminance > bgLuminance ? bgLuminance : fgLuminance;
    
    return (lighter + 0.05) / (darker + 0.05);
  }
  
  /// 检查是否符合WCAG AA标准
  static bool meetsWCAGAA(Color foreground, Color background, {bool isLargeText = false}) {
    final ratio = calculateContrastRatio(foreground, background);
    return isLargeText ? ratio >= 3.0 : ratio >= 4.5;
  }
  
  /// 检查是否符合WCAG AAA标准
  static bool meetsWCAGAAA(Color foreground, Color background, {bool isLargeText = false}) {
    final ratio = calculateContrastRatio(foreground, background);
    return isLargeText ? ratio >= 4.5 : ratio >= 7.0;
  }
  
  /// 计算相对亮度
  static double _calculateLuminance(Color color) {
    final r = _linearizeColorValue(color.red / 255.0);
    final g = _linearizeColorValue(color.green / 255.0);
    final b = _linearizeColorValue(color.blue / 255.0);
    
    return 0.2126 * r + 0.7152 * g + 0.0722 * b;
  }
  
  /// 线性化颜色值
  static double _linearizeColorValue(double value) {
    return value <= 0.03928 ? value / 12.92 : Math.pow((value + 0.055) / 1.055, 2.4).toDouble();
  }
}

/// 无障碍性主题
class AccessibilityTheme {
  /// 高对比度主题
  static ThemeData highContrastTheme({
    Brightness brightness = Brightness.light,
  }) {
    final isDark = brightness == Brightness.dark;
    
    return ThemeData(
      brightness: brightness,
      primaryColor: isDark ? Colors.white : Colors.black,
      scaffoldBackgroundColor: isDark ? Colors.black : Colors.white,
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: isDark ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          color: isDark ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: TextStyle(
          color: isDark ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: isDark ? Colors.white : Colors.black,
          foregroundColor: isDark ? Colors.black : Colors.white,
          side: BorderSide(
            color: isDark ? Colors.white : Colors.black,
            width: 2.0,
          ),
        ),
      ),
    );
  }
  
  /// 大字体主题
  static ThemeData largeTextTheme({
    double scaleFactor = 1.5,
  }) {
    return ThemeData().copyWith(
      textTheme: ThemeData().textTheme.apply(
        fontSizeFactor: scaleFactor,
      ),
    );
  }
}
