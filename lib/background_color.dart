import 'package:flutter/material.dart';

/// Tailwind CSS Background Color utilities for Flutter
/// Utilities for controlling an element's background color.
/// 现在使用 BaseColorsExt 来获取统一的颜色系统
extension BackgroundColorExt on Widget {
  
  // === Basic background color utilities ===
  
  /// bg-inherit -> background-color: inherit;
  Widget bgInherit() => _applyBackgroundColor(Colors.transparent);
  
  /// bg-current -> background-color: currentColor;
  Widget bgCurrent() => _applyBackgroundColor(Colors.transparent);
  
  /// bg-transparent -> background-color: transparent;
  Widget bgTransparent() => _applyBackgroundColor(Colors.transparent);
  
  /// bg-black -> background-color: rgb(0 0 0);
  Widget bgBlack() => _applyBackgroundColor(Colors.black);
  
  /// bg-white -> background-color: rgb(255 255 255);
  Widget bgWhite() => _applyBackgroundColor(Colors.white);

  // === Red color scale ===
  
  /// bg-red-50
  Widget bgRed50() => Container(color: Color(0xFFFEF2F2), child: this);
  
  /// bg-red-100
  Widget bgRed100() => Container(color: Color(0xFFFEE2E2), child: this);
  
  /// bg-red-200
  Widget bgRed200() => Container(color: Color(0xFFFECACA), child: this);
  
  /// bg-red-300
  Widget bgRed300() => Container(color: Color(0xFFFCA5A5), child: this);
  
  /// bg-red-400
  Widget bgRed400() => Container(color: Color(0xFFF87171), child: this);
  
  /// bg-red-500
  Widget bgRed500() => Container(color: Color(0xFFEF4444), child: this);
  
  /// bg-red-600
  Widget bgRed600() => Container(color: Color(0xFFDC2626), child: this);
  
  /// bg-red-700
  Widget bgRed700() => Container(color: Color(0xFFB91C1C), child: this);
  
  /// bg-red-800
  Widget bgRed800() => Container(color: Color(0xFF991B1B), child: this);
  
  /// bg-red-900
  Widget bgRed900() => Container(color: Color(0xFF7F1D1D), child: this);
  
  /// bg-red-950
  Widget bgRed950() => Container(color: Color(0xFF450A0A), child: this);

  // === Blue color scale ===
  
  /// bg-blue-50
  Widget bgBlue50() => Container(color: Color(0xFFEFF6FF), child: this);
  
  /// bg-blue-100
  Widget bgBlue100() => Container(color: Color(0xFFDBEAFE), child: this);
  
  /// bg-blue-200
  Widget bgBlue200() => Container(color: Color(0xFFBFDBFE), child: this);
  
  /// bg-blue-300
  Widget bgBlue300() => Container(color: Color(0xFF93C5FD), child: this);
  
  /// bg-blue-400
  Widget bgBlue400() => Container(color: Color(0xFF60A5FA), child: this);
  
  /// bg-blue-500
  Widget bgBlue500() => Container(color: Color(0xFF3B82F6), child: this);
  
  /// bg-blue-600
  Widget bgBlue600() => Container(color: Color(0xFF2563EB), child: this);
  
  /// bg-blue-700
  Widget bgBlue700() => Container(color: Color(0xFF1D4ED8), child: this);
  
  /// bg-blue-800
  Widget bgBlue800() => Container(color: Color(0xFF1E40AF), child: this);
  
  /// bg-blue-900
  Widget bgBlue900() => Container(color: Color(0xFF1E3A8A), child: this);
  
  /// bg-blue-950
  Widget bgBlue950() => Container(color: Color(0xFF172554), child: this);

  // === Green color scale ===
  
  /// bg-green-50
  Widget bgGreen50() => Container(color: Color(0xFFF0FDF4), child: this);
  
  /// bg-green-100
  Widget bgGreen100() => Container(color: Color(0xFFDCFCE7), child: this);
  
  /// bg-green-200
  Widget bgGreen200() => Container(color: Color(0xFFBBF7D0), child: this);
  
  /// bg-green-300
  Widget bgGreen300() => Container(color: Color(0xFF86EFAC), child: this);
  
  /// bg-green-400
  Widget bgGreen400() => Container(color: Color(0xFF4ADE80), child: this);
  
  /// bg-green-500
  Widget bgGreen500() => Container(color: Color(0xFF22C55E), child: this);
  
  /// bg-green-600
  Widget bgGreen600() => Container(color: Color(0xFF16A34A), child: this);
  
  /// bg-green-700
  Widget bgGreen700() => Container(color: Color(0xFF15803D), child: this);
  
  /// bg-green-800
  Widget bgGreen800() => Container(color: Color(0xFF166534), child: this);
  
  /// bg-green-900
  Widget bgGreen900() => Container(color: Color(0xFF14532D), child: this);
  
  /// bg-green-950
  Widget bgGreen950() => Container(color: Color(0xFF052E16), child: this);

  // === Gray color scale ===
  
  /// bg-gray-50
  Widget bgGray50() => Container(color: Color(0xFFF9FAFB), child: this);
  
  /// bg-gray-100
  Widget bgGray100() => Container(color: Color(0xFFF3F4F6), child: this);
  
  /// bg-gray-200
  Widget bgGray200() => Container(color: Color(0xFFE5E7EB), child: this);
  
  /// bg-gray-300
  Widget bgGray300() => Container(color: Color(0xFFD1D5DB), child: this);
  
  /// bg-gray-400
  Widget bgGray400() => Container(color: Color(0xFF9CA3AF), child: this);
  
  /// bg-gray-500
  Widget bgGray500() => Container(color: Color(0xFF6B7280), child: this);
  
  /// bg-gray-600
  Widget bgGray600() => Container(color: Color(0xFF4B5563), child: this);
  
  /// bg-gray-700
  Widget bgGray700() => Container(color: Color(0xFF374151), child: this);
  
  /// bg-gray-800
  Widget bgGray800() => Container(color: Color(0xFF1F2937), child: this);
  
  /// bg-gray-900
  Widget bgGray900() => Container(color: Color(0xFF111827), child: this);
  
  /// bg-gray-950
  Widget bgGray950() => Container(color: Color(0xFF030712), child: this);

  // === Custom background color ===
  
  /// 自定义背景颜色 - bg-[#hexcode] or bg-(--variable)
  Widget bgCustom(Color color) => Container(
    color: color,
    child: this,
  );
  
  /// 带透明度的背景颜色
  Widget bgWithOpacity(Color color, double opacity) => Container(
    color: color.withOpacity(opacity),
    child: this,
  );

  // === Gradient backgrounds ===
  
  /// 线性渐变背景
  Widget bgLinearGradient({
    required List<Color> colors,
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
    List<double>? stops,
  }) => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: colors,
        begin: begin,
        end: end,
        stops: stops,
      ),
    ),
    child: this,
  );
  
  /// 径向渐变背景
  Widget bgRadialGradient({
    required List<Color> colors,
    AlignmentGeometry center = Alignment.center,
    double radius = 0.5,
    List<double>? stops,
  }) => Container(
    decoration: BoxDecoration(
      gradient: RadialGradient(
        colors: colors,
        center: center,
        radius: radius,
        stops: stops,
      ),
    ),
    child: this,
  );
  
  /// 扫描渐变背景
  Widget bgSweepGradient({
    required List<Color> colors,
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = 6.283185307179586,
    List<double>? stops,
  }) => Container(
    decoration: BoxDecoration(
      gradient: SweepGradient(
        colors: colors,
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        stops: stops,
      ),
    ),
    child: this,
  );

  // === Conditional background colors ===
  
  /// 根据条件应用背景颜色
  Widget bgConditional(bool condition, Color trueColor, Color falseColor) => Container(
    color: condition ? trueColor : falseColor,
    child: this,
  );
  
  /// 响应式背景颜色
  Widget bgResponsive({
    Color mobile = Colors.white,
    Color tablet = Colors.grey,
    Color desktop = Colors.blue,
  }) => LayoutBuilder(
    builder: (context, constraints) {
      Color backgroundColor;
      
      if (constraints.maxWidth < 768) {
        backgroundColor = mobile;
      } else if (constraints.maxWidth < 1024) {
        backgroundColor = tablet;
      } else {
        backgroundColor = desktop;
      }
      
      return Container(
        color: backgroundColor,
        child: this,
      );
    },
  );

  // === 新增：基于BaseColorsExt的统一颜色方法 ===
  
  /// 自定义背景颜色
  Widget backgroundColor(Color color) => _applyBackgroundColor(color);
  
  /// 动态背景颜色（根据颜色名称和变体）
  Widget bgDynamic(String colorName, int variant) {
    final color = (this as dynamic).getColor?.call(colorName, variant) ?? 
                   _getStaticColor(colorName, variant);
    return _applyBackgroundColor(color);
  }
  
  /// 主题背景颜色
  Widget bgTheme(String colorName, int variant) {
    final color = (this as dynamic).getThemeColor?.call(colorName, variant) ?? 
                   _getStaticColor(colorName, variant);
    return _applyBackgroundColor(color);
  }

  // === Helper methods ===
  
  /// 应用背景颜色的通用方法
  Widget _applyBackgroundColor(Color color) {
    // 直接使用提供的颜色，简化实现
    final finalColor = color;
    
    return Container(
      color: finalColor,
      child: this,
    );
  }
  
  /// 静态颜色获取方法（当widget没有混入BaseColorsExt时使用）
  Color _getStaticColor(String colorName, int variant) {
    switch ('$colorName-$variant') {
      case 'red-500': return const Color(0xFFEF4444);
      case 'blue-500': return const Color(0xFF3B82F6);
      case 'green-500': return const Color(0xFF22C55E);
      case 'gray-500': return const Color(0xFF6B7280);
      default: return const Color(0xFF6B7280); // 默认灰色
    }
  }
}

/// 背景颜色工具类
class BackgroundColor {
  /// 创建透明背景
  static Widget transparent(Widget child) => child.bgTransparent();
  
  /// 创建黑色背景
  static Widget black(Widget child) => child.bgBlack();
  
  /// 创建白色背景
  static Widget white(Widget child) => child.bgWhite();
  
  /// 创建自定义颜色背景
  static Widget custom(Widget child, Color color) => child.bgCustom(color);
  
  /// 创建带透明度的背景
  static Widget withOpacity(Widget child, Color color, double opacity) => 
    child.bgWithOpacity(color, opacity);
  
  /// 创建线性渐变背景
  static Widget linearGradient({
    required Widget child,
    required List<Color> colors,
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
    List<double>? stops,
  }) => child.bgLinearGradient(
    colors: colors,
    begin: begin,
    end: end,
    stops: stops,
  );
  
  /// 创建径向渐变背景
  static Widget radialGradient({
    required Widget child,
    required List<Color> colors,
    AlignmentGeometry center = Alignment.center,
    double radius = 0.5,
    List<double>? stops,
  }) => child.bgRadialGradient(
    colors: colors,
    center: center,
    radius: radius,
    stops: stops,
  );
  
  /// 创建响应式背景
  static Widget responsive({
    required Widget child,
    Color mobile = Colors.white,
    Color tablet = Colors.grey,
    Color desktop = Colors.blue,
  }) => child.bgResponsive(
    mobile: mobile,
    tablet: tablet,
    desktop: desktop,
  );
}
