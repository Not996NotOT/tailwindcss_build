import 'package:flutter/material.dart';

/// Tailwind CSS Outline Color utilities for Flutter
/// Utilities for controlling the color of an element's outline.
/// 
/// Note: Flutter doesn't have native outline support, so these utilities 
/// simulate outline effects using box shadows or borders.
extension OutlineColorExt on Widget {
  
  // === Basic outline color utilities ===
  
  /// outline-inherit -> outline-color: inherit;
  Widget outlineInherit({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.transparent,
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-current -> outline-color: currentColor;
  Widget outlineCurrent({double width = 2}) => Builder(
    builder: (context) => Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.5) ?? Colors.black.withOpacity(0.5),
            spreadRadius: width,
            blurRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: this,
    ),
  );
  
  /// outline-transparent -> outline-color: transparent;
  Widget outlineTransparent({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.transparent,
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Basic colors ===
  
  /// outline-black -> outline-color: #000000;
  Widget outlineBlack({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-white -> outline-color: #ffffff;
  Widget outlineWhite({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Gray colors ===
  
  /// outline-gray-50 -> outline-color: #f9fafb;
  Widget outlineGray50({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xfff9fafb).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-gray-100 -> outline-color: #f3f4f6;
  Widget outlineGray100({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xfff3f4f6).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-gray-200 -> outline-color: #e5e7eb;
  Widget outlineGray200({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffe5e7eb).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-gray-300 -> outline-color: #d1d5db;
  Widget outlineGray300({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffd1d5db).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-gray-400 -> outline-color: #9ca3af;
  Widget outlineGray400({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff9ca3af).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-gray-500 -> outline-color: #6b7280;
  Widget outlineGray500({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff6b7280).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-gray-600 -> outline-color: #4b5563;
  Widget outlineGray600({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff4b5563).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-gray-700 -> outline-color: #374151;
  Widget outlineGray700({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff374151).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-gray-800 -> outline-color: #1f2937;
  Widget outlineGray800({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff1f2937).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-gray-900 -> outline-color: #111827;
  Widget outlineGray900({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff111827).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Red colors ===
  
  /// outline-red-50 -> outline-color: #fef2f2;
  Widget outlineRed50({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xfffef2f2).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-red-100 -> outline-color: #fee2e2;
  Widget outlineRed100({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xfffee2e2).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-red-200 -> outline-color: #fecaca;
  Widget outlineRed200({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xfffecaca).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-red-300 -> outline-color: #fca5a5;
  Widget outlineRed300({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xfffca5a5).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-red-400 -> outline-color: #f87171;
  Widget outlineRed400({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xfff87171).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-red-500 -> outline-color: #ef4444;
  Widget outlineRed500({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffef4444).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-red-600 -> outline-color: #dc2626;
  Widget outlineRed600({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffdc2626).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-red-700 -> outline-color: #b91c1c;
  Widget outlineRed700({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffb91c1c).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-red-800 -> outline-color: #991b1b;
  Widget outlineRed800({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff991b1b).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-red-900 -> outline-color: #7f1d1d;
  Widget outlineRed900({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff7f1d1d).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Blue colors ===
  
  /// outline-blue-50 -> outline-color: #eff6ff;
  Widget outlineBlue50({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffeff6ff).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-blue-100 -> outline-color: #dbeafe;
  Widget outlineBlue100({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffdbeafe).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-blue-200 -> outline-color: #bfdbfe;
  Widget outlineBlue200({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffbfdbfe).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-blue-300 -> outline-color: #93c5fd;
  Widget outlineBlue300({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff93c5fd).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-blue-400 -> outline-color: #60a5fa;
  Widget outlineBlue400({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff60a5fa).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-blue-500 -> outline-color: #3b82f6;
  Widget outlineBlue500({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff3b82f6).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-blue-600 -> outline-color: #2563eb;
  Widget outlineBlue600({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff2563eb).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-blue-700 -> outline-color: #1d4ed8;
  Widget outlineBlue700({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff1d4ed8).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-blue-800 -> outline-color: #1e40af;
  Widget outlineBlue800({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff1e40af).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-blue-900 -> outline-color: #1e3a8a;
  Widget outlineBlue900({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff1e3a8a).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Green colors ===
  
  /// outline-green-50 -> outline-color: #f0fdf4;
  Widget outlineGreen50({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xfff0fdf4).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-green-100 -> outline-color: #dcfce7;
  Widget outlineGreen100({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffdcfce7).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-green-200 -> outline-color: #bbf7d0;
  Widget outlineGreen200({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffbbf7d0).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-green-300 -> outline-color: #86efac;
  Widget outlineGreen300({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff86efac).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-green-400 -> outline-color: #4ade80;
  Widget outlineGreen400({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff4ade80).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-green-500 -> outline-color: #22c55e;
  Widget outlineGreen500({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff22c55e).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-green-600 -> outline-color: #16a34a;
  Widget outlineGreen600({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff16a34a).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-green-700 -> outline-color: #15803d;
  Widget outlineGreen700({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff15803d).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-green-800 -> outline-color: #166534;
  Widget outlineGreen800({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff166534).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// outline-green-900 -> outline-color: #14532d;
  Widget outlineGreen900({double width = 2}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff14532d).withOpacity(0.8),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Custom outline color utilities ===
  
  /// outline-[<color>] -> outline-color: <color>; (自定义轮廓颜色)
  Widget outlineColor(Color color, {double width = 2, double opacity = 0.8}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color.withOpacity(opacity),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  // === Shorthand utilities (简化版本，常用的组合) ===
  
  /// oc(Color color) -> outline-color: <color>; (最简洁的自定义轮廓颜色)
  Widget oc(Color color, {double width = 2, double opacity = 0.8}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color.withOpacity(opacity),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );

  // === Ring color utilities (模拟Tailwind的ring效果颜色) ===
  
  /// ring-gray-500 -> ring-color: #6b7280;
  Widget ringGray500({double width = 3}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff6b7280).withOpacity(0.5),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ring-red-500 -> ring-color: #ef4444;
  Widget ringRed500({double width = 3}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffef4444).withOpacity(0.5),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ring-blue-500 -> ring-color: #3b82f6;
  Widget ringBlue500({double width = 3}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff3b82f6).withOpacity(0.5),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ring-green-500 -> ring-color: #22c55e;
  Widget ringGreen500({double width = 3}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xff22c55e).withOpacity(0.5),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
  
  /// ringColor(Color color) -> 自定义ring颜色
  Widget ringColor(Color color, {double width = 3, double opacity = 0.5}) => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color.withOpacity(opacity),
          spreadRadius: width,
          blurRadius: 0,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: this,
  );
}
