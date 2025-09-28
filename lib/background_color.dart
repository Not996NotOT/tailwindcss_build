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

  // === Yellow color scale ===
  
  /// bg-yellow-50
  Widget bgYellow50() => Container(color: Color(0xFFFEFCE8), child: this);
  
  /// bg-yellow-100
  Widget bgYellow100() => Container(color: Color(0xFFFEF3C7), child: this);
  
  /// bg-yellow-200
  Widget bgYellow200() => Container(color: Color(0xFFFDE68A), child: this);
  
  /// bg-yellow-300
  Widget bgYellow300() => Container(color: Color(0xFFFCD34D), child: this);
  
  /// bg-yellow-400
  Widget bgYellow400() => Container(color: Color(0xFFFBBF24), child: this);
  
  /// bg-yellow-500
  Widget bgYellow500() => Container(color: Color(0xFFF59E0B), child: this);
  
  /// bg-yellow-600
  Widget bgYellow600() => Container(color: Color(0xFFD97706), child: this);
  
  /// bg-yellow-700
  Widget bgYellow700() => Container(color: Color(0xFFB45309), child: this);
  
  /// bg-yellow-800
  Widget bgYellow800() => Container(color: Color(0xFF92400E), child: this);
  
  /// bg-yellow-900
  Widget bgYellow900() => Container(color: Color(0xFF78350F), child: this);
  
  /// bg-yellow-950
  Widget bgYellow950() => Container(color: Color(0xFF451A03), child: this);

  // === Orange color scale ===
  
  /// bg-orange-50
  Widget bgOrange50() => Container(color: Color(0xFFFFF7ED), child: this);
  
  /// bg-orange-100
  Widget bgOrange100() => Container(color: Color(0xFFFFEDD5), child: this);
  
  /// bg-orange-200
  Widget bgOrange200() => Container(color: Color(0xFFFED7AA), child: this);
  
  /// bg-orange-300
  Widget bgOrange300() => Container(color: Color(0xFFFDBA74), child: this);
  
  /// bg-orange-400
  Widget bgOrange400() => Container(color: Color(0xFFFB923C), child: this);
  
  /// bg-orange-500
  Widget bgOrange500() => Container(color: Color(0xFFF97316), child: this);
  
  /// bg-orange-600
  Widget bgOrange600() => Container(color: Color(0xFFEA580C), child: this);
  
  /// bg-orange-700
  Widget bgOrange700() => Container(color: Color(0xFFC2410C), child: this);
  
  /// bg-orange-800
  Widget bgOrange800() => Container(color: Color(0xFF9A3412), child: this);
  
  /// bg-orange-900
  Widget bgOrange900() => Container(color: Color(0xFF7C2D12), child: this);
  
  /// bg-orange-950
  Widget bgOrange950() => Container(color: Color(0xFF431407), child: this);

  // === Purple color scale ===
  
  /// bg-purple-50
  Widget bgPurple50() => Container(color: Color(0xFFFAF5FF), child: this);
  
  /// bg-purple-100
  Widget bgPurple100() => Container(color: Color(0xFFF3E8FF), child: this);
  
  /// bg-purple-200
  Widget bgPurple200() => Container(color: Color(0xFFE9D5FF), child: this);
  
  /// bg-purple-300
  Widget bgPurple300() => Container(color: Color(0xFFD8B4FE), child: this);
  
  /// bg-purple-400
  Widget bgPurple400() => Container(color: Color(0xFFC084FC), child: this);
  
  /// bg-purple-500
  Widget bgPurple500() => Container(color: Color(0xFFA855F7), child: this);
  
  /// bg-purple-600
  Widget bgPurple600() => Container(color: Color(0xFF9333EA), child: this);
  
  /// bg-purple-700
  Widget bgPurple700() => Container(color: Color(0xFF7C3AED), child: this);
  
  /// bg-purple-800
  Widget bgPurple800() => Container(color: Color(0xFF6B21A8), child: this);
  
  /// bg-purple-900
  Widget bgPurple900() => Container(color: Color(0xFF581C87), child: this);
  
  /// bg-purple-950
  Widget bgPurple950() => Container(color: Color(0xFF3B0764), child: this);

  // === Pink color scale ===
  
  /// bg-pink-50
  Widget bgPink50() => Container(color: Color(0xFFFDF2F8), child: this);
  
  /// bg-pink-100
  Widget bgPink100() => Container(color: Color(0xFFFCE7F3), child: this);
  
  /// bg-pink-200
  Widget bgPink200() => Container(color: Color(0xFFFBCFE8), child: this);
  
  /// bg-pink-300
  Widget bgPink300() => Container(color: Color(0xFFF9A8D4), child: this);
  
  /// bg-pink-400
  Widget bgPink400() => Container(color: Color(0xFFF472B6), child: this);
  
  /// bg-pink-500
  Widget bgPink500() => Container(color: Color(0xFFEC4899), child: this);
  
  /// bg-pink-600
  Widget bgPink600() => Container(color: Color(0xFFDB2777), child: this);
  
  /// bg-pink-700
  Widget bgPink700() => Container(color: Color(0xFFBE185D), child: this);
  
  /// bg-pink-800
  Widget bgPink800() => Container(color: Color(0xFF9D174D), child: this);
  
  /// bg-pink-900
  Widget bgPink900() => Container(color: Color(0xFF831843), child: this);
  
  /// bg-pink-950
  Widget bgPink950() => Container(color: Color(0xFF500724), child: this);

  // === Indigo color scale ===
  
  /// bg-indigo-50
  Widget bgIndigo50() => Container(color: Color(0xFFEEF2FF), child: this);
  
  /// bg-indigo-100
  Widget bgIndigo100() => Container(color: Color(0xFFE0E7FF), child: this);
  
  /// bg-indigo-200
  Widget bgIndigo200() => Container(color: Color(0xFFC7D2FE), child: this);
  
  /// bg-indigo-300
  Widget bgIndigo300() => Container(color: Color(0xFFA5B4FC), child: this);
  
  /// bg-indigo-400
  Widget bgIndigo400() => Container(color: Color(0xFF818CF8), child: this);
  
  /// bg-indigo-500
  Widget bgIndigo500() => Container(color: Color(0xFF6366F1), child: this);
  
  /// bg-indigo-600
  Widget bgIndigo600() => Container(color: Color(0xFF4F46E5), child: this);
  
  /// bg-indigo-700
  Widget bgIndigo700() => Container(color: Color(0xFF4338CA), child: this);
  
  /// bg-indigo-800
  Widget bgIndigo800() => Container(color: Color(0xFF3730A3), child: this);
  
  /// bg-indigo-900
  Widget bgIndigo900() => Container(color: Color(0xFF312E81), child: this);
  
  /// bg-indigo-950
  Widget bgIndigo950() => Container(color: Color(0xFF1E1B4B), child: this);

  // === Teal color scale ===
  
  /// bg-teal-50
  Widget bgTeal50() => Container(color: Color(0xFFF0FDFA), child: this);
  
  /// bg-teal-100
  Widget bgTeal100() => Container(color: Color(0xFFCCFBF1), child: this);
  
  /// bg-teal-200
  Widget bgTeal200() => Container(color: Color(0xFF99F6E4), child: this);
  
  /// bg-teal-300
  Widget bgTeal300() => Container(color: Color(0xFF5EEAD4), child: this);
  
  /// bg-teal-400
  Widget bgTeal400() => Container(color: Color(0xFF2DD4BF), child: this);
  
  /// bg-teal-500
  Widget bgTeal500() => Container(color: Color(0xFF14B8A6), child: this);
  
  /// bg-teal-600
  Widget bgTeal600() => Container(color: Color(0xFF0D9488), child: this);
  
  /// bg-teal-700
  Widget bgTeal700() => Container(color: Color(0xFF0F766E), child: this);
  
  /// bg-teal-800
  Widget bgTeal800() => Container(color: Color(0xFF115E59), child: this);
  
  /// bg-teal-900
  Widget bgTeal900() => Container(color: Color(0xFF134E4A), child: this);
  
  /// bg-teal-950
  Widget bgTeal950() => Container(color: Color(0xFF042F2E), child: this);

  // === Custom background color ===
  
  /// 自定义背景颜色 - bg-[#hexcode] or bg-(--variable)
  Widget bgCustom(Color color) => Container(
    color: color,
    child: this,
  );
  
  /// 带透明度的背景颜色
  Widget bgWithOpacity(Color color, double opacity) => Container(
    color: color.withValues(alpha: opacity),
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

/// 动态颜色支持扩展
extension DynamicBackgroundColorExt on Widget {
  /// 动态背景颜色 - 支持任意Color对象
  Widget bgColor(Color color) => Container(
    color: color,
    child: this,
  );
  
  /// 动态背景颜色 - 带透明度
  Widget bgColorWithOpacity(Color color, double opacity) => Container(
    color: color.withValues(alpha: opacity),
    child: this,
  );
}
