import 'package:flutter/material.dart';

/// Tailwind CSS Text Color utilities for Flutter
/// Utilities for controlling the text color of an element.
/// 现在使用 BaseColorsExt 来获取统一的颜色系统
extension TextColorExt on Widget {
  
  // === Basic colors ===
  
  /// text-inherit -> color: inherit;
  Widget textInherit() => _applyTextColor((this as dynamic).inheritColor ?? Colors.transparent);
  
  /// text-current -> color: currentColor;
  Widget textCurrent() => _applyTextColor((this as dynamic).currentColor ?? Colors.transparent);
  
  /// text-transparent -> color: transparent;
  Widget textTransparent() => _applyTextColor((this as dynamic).transparentColor ?? Colors.transparent);
  
  /// text-black -> color: rgb(0 0 0);
  Widget textBlack() => _applyTextColor((this as dynamic).blackColor ?? Colors.black);
  
  /// text-white -> color: rgb(255 255 255);
  Widget textWhite() => _applyTextColor((this as dynamic).whiteColor ?? Colors.white);

  // === Gray colors ===
  
  /// text-gray-50
  Widget textGray50() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFAFAFA)),
        child: this,
      );
  
  /// text-gray-100
  Widget textGray100() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFF5F5F5)),
        child: this,
      );
  
  /// text-gray-200
  Widget textGray200() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFEEEEEE)),
        child: this,
      );
  
  /// text-gray-300
  Widget textGray300() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFE0E0E0)),
        child: this,
      );
  
  /// text-gray-400
  Widget textGray400() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFBDBDBD)),
        child: this,
      );
  
  /// text-gray-500
  Widget textGray500() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF9E9E9E)),
        child: this,
      );
  
  /// text-gray-600
  Widget textGray600() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF757575)),
        child: this,
      );
  
  /// text-gray-700
  Widget textGray700() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF616161)),
        child: this,
      );
  
  /// text-gray-800
  Widget textGray800() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF424242)),
        child: this,
      );
  
  /// text-gray-900
  Widget textGray900() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF212121)),
        child: this,
      );

  // === Red colors ===
  
  /// text-red-50
  Widget textRed50() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFEF2F2)),
        child: this,
      );
  
  /// text-red-100
  Widget textRed100() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFEE2E2)),
        child: this,
      );
  
  /// text-red-200
  Widget textRed200() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFECACA)),
        child: this,
      );
  
  /// text-red-300
  Widget textRed300() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFCA5A5)),
        child: this,
      );
  
  /// text-red-400
  Widget textRed400() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFF87171)),
        child: this,
      );
  
  /// text-red-500
  Widget textRed500() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFEF4444)),
        child: this,
      );
  
  /// text-red-600
  Widget textRed600() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFDC2626)),
        child: this,
      );
  
  /// text-red-700
  Widget textRed700() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFB91C1C)),
        child: this,
      );
  
  /// text-red-800
  Widget textRed800() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF991B1B)),
        child: this,
      );
  
  /// text-red-900
  Widget textRed900() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF7F1D1D)),
        child: this,
      );

  // === Blue colors ===
  
  /// text-blue-50
  Widget textBlue50() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFEFF6FF)),
        child: this,
      );
  
  /// text-blue-100
  Widget textBlue100() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFDBEAFE)),
        child: this,
      );
  
  /// text-blue-200
  Widget textBlue200() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFBFDBFE)),
        child: this,
      );
  
  /// text-blue-300
  Widget textBlue300() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF93C5FD)),
        child: this,
      );
  
  /// text-blue-400
  Widget textBlue400() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF60A5FA)),
        child: this,
      );
  
  /// text-blue-500
  Widget textBlue500() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF3B82F6)),
        child: this,
      );
  
  /// text-blue-600
  Widget textBlue600() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF2563EB)),
        child: this,
      );
  
  /// text-blue-700
  Widget textBlue700() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF1D4ED8)),
        child: this,
      );
  
  /// text-blue-800
  Widget textBlue800() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF1E40AF)),
        child: this,
      );
  
  /// text-blue-900
  Widget textBlue900() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF1E3A8A)),
        child: this,
      );

  // === Green colors ===
  
  /// text-green-50
  Widget textGreen50() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFF0FDF4)),
        child: this,
      );
  
  /// text-green-100
  Widget textGreen100() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFDCFCE7)),
        child: this,
      );
  
  /// text-green-200
  Widget textGreen200() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFBBF7D0)),
        child: this,
      );
  
  /// text-green-300
  Widget textGreen300() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF86EFAC)),
        child: this,
      );
  
  /// text-green-400
  Widget textGreen400() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF4ADE80)),
        child: this,
      );
  
  /// text-green-500
  Widget textGreen500() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF22C55E)),
        child: this,
      );
  
  /// text-green-600
  Widget textGreen600() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF16A34A)),
        child: this,
      );
  
  /// text-green-700
  Widget textGreen700() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF15803D)),
        child: this,
      );
  
  /// text-green-800
  Widget textGreen800() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF166534)),
        child: this,
      );
  
  /// text-green-900
  Widget textGreen900() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF14532D)),
        child: this,
      );

  // === Yellow colors ===
  
  /// text-yellow-50
  Widget textYellow50() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFEFCE8)),
        child: this,
      );
  
  /// text-yellow-100
  Widget textYellow100() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFEF3C7)),
        child: this,
      );
  
  /// text-yellow-200
  Widget textYellow200() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFDE68A)),
        child: this,
      );
  
  /// text-yellow-300
  Widget textYellow300() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFCD34D)),
        child: this,
      );
  
  /// text-yellow-400
  Widget textYellow400() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFBBF24)),
        child: this,
      );
  
  /// text-yellow-500
  Widget textYellow500() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFF59E0B)),
        child: this,
      );
  
  /// text-yellow-600
  Widget textYellow600() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFD97706)),
        child: this,
      );
  
  /// text-yellow-700
  Widget textYellow700() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFB45309)),
        child: this,
      );
  
  /// text-yellow-800
  Widget textYellow800() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF92400E)),
        child: this,
      );
  
  /// text-yellow-900
  Widget textYellow900() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF78350F)),
        child: this,
      );

  // === Purple colors ===
  
  /// text-purple-50
  Widget textPurple50() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFAF5FF)),
        child: this,
      );
  
  /// text-purple-100
  Widget textPurple100() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFF3E8FF)),
        child: this,
      );
  
  /// text-purple-200
  Widget textPurple200() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFE9D5FF)),
        child: this,
      );
  
  /// text-purple-300
  Widget textPurple300() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFD8B4FE)),
        child: this,
      );
  
  /// text-purple-400
  Widget textPurple400() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFC084FC)),
        child: this,
      );
  
  /// text-purple-500
  Widget textPurple500() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFA855F7)),
        child: this,
      );
  
  /// text-purple-600
  Widget textPurple600() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF9333EA)),
        child: this,
      );
  
  /// text-purple-700
  Widget textPurple700() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF7C3AED)),
        child: this,
      );
  
  /// text-purple-800
  Widget textPurple800() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF6B21A8)),
        child: this,
      );
  
  /// text-purple-900
  Widget textPurple900() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF581C87)),
        child: this,
      );

  // === Orange colors ===
  
  /// text-orange-50
  Widget textOrange50() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFFF7ED)),
        child: this,
      );
  
  /// text-orange-100
  Widget textOrange100() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFFEDD5)),
        child: this,
      );
  
  /// text-orange-200
  Widget textOrange200() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFED7AA)),
        child: this,
      );
  
  /// text-orange-300
  Widget textOrange300() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFDBA74)),
        child: this,
      );
  
  /// text-orange-400
  Widget textOrange400() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFFB923C)),
        child: this,
      );
  
  /// text-orange-500
  Widget textOrange500() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFF97316)),
        child: this,
      );
  
  /// text-orange-600
  Widget textOrange600() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFEA580C)),
        child: this,
      );
  
  /// text-orange-700
  Widget textOrange700() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFC2410C)),
        child: this,
      );
  
  /// text-orange-800
  Widget textOrange800() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF9A3412)),
        child: this,
      );
  
  /// text-orange-900
  Widget textOrange900() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF7C2D12)),
        child: this,
      );

  // === Material Design colors ===
  
  /// text-primary -> Primary color from theme
  Widget textPrimary() => Builder(
        builder: (context) => DefaultTextStyle.merge(
          style: TextStyle(color: Theme.of(context).primaryColor),
          child: this,
        ),
      );
  
  /// text-secondary -> Secondary color from theme
  Widget textSecondary() => Builder(
        builder: (context) => DefaultTextStyle.merge(
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          child: this,
        ),
      );
  
  /// text-accent -> Accent color from theme
  Widget textAccent() => Builder(
        builder: (context) => DefaultTextStyle.merge(
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          child: this,
        ),
      );
  
  /// text-error -> Error color from theme
  Widget textError() => Builder(
        builder: (context) => DefaultTextStyle.merge(
          style: TextStyle(color: Theme.of(context).colorScheme.error),
          child: this,
        ),
      );

  // === Semantic colors ===
  
  /// text-success -> Success color
  Widget textSuccess() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF22C55E)),
        child: this,
      );
  
  /// text-warning -> Warning color
  Widget textWarning() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFF59E0B)),
        child: this,
      );
  
  /// text-danger -> Danger color
  Widget textDanger() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFFEF4444)),
        child: this,
      );
  
  /// text-info -> Info color
  Widget textInfo() => DefaultTextStyle.merge(
        style: const TextStyle(color: Color(0xFF3B82F6)),
        child: this,
      );

  // === Opacity variations ===
  
  /// text-opacity-0 -> color with 0% opacity
  Widget textOpacity0() => Builder(
        builder: (context) => DefaultTextStyle.merge(
          style: TextStyle(color: (DefaultTextStyle.of(context).style.color ?? Colors.black).withValues(alpha: 0)),
          child: this,
        ),
      );
  
  /// text-opacity-25 -> color with 25% opacity
  Widget textOpacity25() => Builder(
        builder: (context) => DefaultTextStyle.merge(
          style: TextStyle(color: (DefaultTextStyle.of(context).style.color ?? Colors.black).withValues(alpha: 0.25)),
          child: this,
        ),
      );
  
  /// text-opacity-50 -> color with 50% opacity
  Widget textOpacity50() => Builder(
        builder: (context) => DefaultTextStyle.merge(
          style: TextStyle(color: (DefaultTextStyle.of(context).style.color ?? Colors.black).withValues(alpha: 0.5)),
          child: this,
        ),
      );
  
  /// text-opacity-75 -> color with 75% opacity
  Widget textOpacity75() => Builder(
        builder: (context) => DefaultTextStyle.merge(
          style: TextStyle(color: (DefaultTextStyle.of(context).style.color ?? Colors.black).withValues(alpha: 0.75)),
          child: this,
        ),
      );
  
  /// text-opacity-100 -> color with 100% opacity
  Widget textOpacity100() => Builder(
        builder: (context) => DefaultTextStyle.merge(
          style: TextStyle(color: (DefaultTextStyle.of(context).style.color ?? Colors.black).withValues(alpha: 1.0)),
          child: this,
        ),
      );

  // === Custom colors ===
  
  /// Custom text color with opacity
  Widget textColorWithOpacity(Color color, double opacity) => DefaultTextStyle.merge(
        style: TextStyle(color: color.withValues(alpha: opacity)),
        child: this,
      );
  
  /// Hex color
  Widget textHex(String hex) {
    final color = Color(int.parse(hex.replaceFirst('#', '0xFF')));
    return DefaultTextStyle.merge(
      style: TextStyle(color: color),
      child: this,
    );
  }
  
  /// RGB color
  Widget textRgb(int r, int g, int b) => DefaultTextStyle.merge(
        style: TextStyle(color: Color.fromRGBO(r, g, b, 1.0)),
        child: this,
      );
  
  /// RGBA color
  Widget textRgba(int r, int g, int b, double a) => DefaultTextStyle.merge(
        style: TextStyle(color: Color.fromRGBO(r, g, b, a)),
        child: this,
      );

  // === Conditional colors ===
  
  /// Conditional text color
  Widget conditionalTextColor(bool condition, Color trueColor, Color falseColor) => DefaultTextStyle.merge(
        style: TextStyle(color: condition ? trueColor : falseColor),
        child: this,
      );
  
  /// Text color based on theme brightness
  Widget adaptiveTextColor({Color? lightColor, Color? darkColor}) => Builder(
        builder: (context) {
          final brightness = Theme.of(context).brightness;
          final color = brightness == Brightness.light 
              ? (lightColor ?? Colors.black) 
              : (darkColor ?? Colors.white);
          
          return DefaultTextStyle.merge(
            style: TextStyle(color: color),
            child: this,
          );
        },
      );

  // === 新增：基于BaseColorsExt的统一颜色方法 ===
  
  /// 自定义文字颜色
  Widget textColor(Color color) => _applyTextColor(color);
  
  /// 动态文字颜色（根据颜色名称和变体）
  Widget textDynamic(String colorName, int variant) {
    final color = (this as dynamic).getColor?.call(colorName, variant) ?? 
                   _getStaticColor(colorName, variant);
    return _applyTextColor(color);
  }
  
  /// 主题文字颜色
  Widget textTheme(String colorName, int variant) {
    final color = (this as dynamic).getThemeColor?.call(colorName, variant) ?? 
                   _getStaticColor(colorName, variant);
    return _applyTextColor(color);
  }

  // === Helper methods ===
  
  /// 应用文字颜色的通用方法
  Widget _applyTextColor(Color color) {
    // 如果widget混入了BaseColorsExt，应用自定义颜色转换
    final finalColor = (this as dynamic).applyColorCustomization?.call(color) ?? color;
    
    return DefaultTextStyle.merge(
      style: TextStyle(color: finalColor),
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
