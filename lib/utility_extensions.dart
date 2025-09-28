import 'package:flutter/material.dart';

/// 实用工具扩展 - 包含各种常用的 TailwindCSS 风格的扩展方法
/// 这些方法用于补充主要扩展文件中缺失的功能
extension UtilityExtensions on Widget {
  
  // === 透明度相关 ===
  
  /// 设置透明度
  Widget opacity(double opacity) {
    return Opacity(
      opacity: opacity.clamp(0.0, 1.0),
      child: this,
    );
  }
  
  /// opacity-0 -> opacity: 0;
  Widget opacity0() => Opacity(opacity: 0, child: this);
  
  /// opacity-5 -> opacity: 0.05;
  Widget opacity5() => Opacity(opacity: 0.05, child: this);
  
  /// opacity-10 -> opacity: 0.1;
  Widget opacity10() => Opacity(opacity: 0.1, child: this);
  
  /// opacity-20 -> opacity: 0.2;
  Widget opacity20() => Opacity(opacity: 0.2, child: this);
  
  /// opacity-25 -> opacity: 0.25;
  Widget opacity25() => Opacity(opacity: 0.25, child: this);
  
  /// opacity-30 -> opacity: 0.3;
  Widget opacity30() => Opacity(opacity: 0.3, child: this);
  
  /// opacity-40 -> opacity: 0.4;
  Widget opacity40() => Opacity(opacity: 0.4, child: this);
  
  /// opacity-50 -> opacity: 0.5;
  Widget opacity50() => Opacity(opacity: 0.5, child: this);
  
  /// opacity-60 -> opacity: 0.6;
  Widget opacity60() => Opacity(opacity: 0.6, child: this);
  
  /// opacity-70 -> opacity: 0.7;
  Widget opacity70() => Opacity(opacity: 0.7, child: this);
  
  /// opacity-75 -> opacity: 0.75;
  Widget opacity75() => Opacity(opacity: 0.75, child: this);
  
  /// opacity-80 -> opacity: 0.8;
  Widget opacity80() => Opacity(opacity: 0.8, child: this);
  
  /// opacity-90 -> opacity: 0.9;
  Widget opacity90() => Opacity(opacity: 0.9, child: this);
  
  /// opacity-95 -> opacity: 0.95;
  Widget opacity95() => Opacity(opacity: 0.95, child: this);
  
  /// opacity-100 -> opacity: 1;
  Widget opacity100() => this;

  // === 背景透明度相关 ===
  
  /// 设置背景透明度
  Widget bgOpacity(double opacity) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: opacity.clamp(0.0, 1.0)),
      ),
      child: this,
    );
  }
  
  /// bg-opacity-0 -> background with 0% opacity
  Widget bgOpacity0() => bgOpacity(0);
  
  /// bg-opacity-5 -> background with 5% opacity
  Widget bgOpacity5() => bgOpacity(0.05);
  
  /// bg-opacity-10 -> background with 10% opacity
  Widget bgOpacity10() => bgOpacity(0.1);
  
  /// bg-opacity-20 -> background with 20% opacity
  Widget bgOpacity20() => bgOpacity(0.2);
  
  /// bg-opacity-25 -> background with 25% opacity
  Widget bgOpacity25() => bgOpacity(0.25);
  
  /// bg-opacity-30 -> background with 30% opacity
  Widget bgOpacity30() => bgOpacity(0.3);
  
  /// bg-opacity-40 -> background with 40% opacity
  Widget bgOpacity40() => bgOpacity(0.4);
  
  /// bg-opacity-50 -> background with 50% opacity
  Widget bgOpacity50() => bgOpacity(0.5);
  
  /// bg-opacity-60 -> background with 60% opacity
  Widget bgOpacity60() => bgOpacity(0.6);
  
  /// bg-opacity-70 -> background with 70% opacity
  Widget bgOpacity70() => bgOpacity(0.7);
  
  /// bg-opacity-75 -> background with 75% opacity
  Widget bgOpacity75() => bgOpacity(0.75);
  
  /// bg-opacity-80 -> background with 80% opacity
  Widget bgOpacity80() => bgOpacity(0.8);
  
  /// bg-opacity-90 -> background with 90% opacity
  Widget bgOpacity90() => bgOpacity(0.9);
  
  /// bg-opacity-95 -> background with 95% opacity
  Widget bgOpacity95() => bgOpacity(0.95);
  
  /// bg-opacity-100 -> background with 100% opacity
  Widget bgOpacity100() => this;

  // === 渐变背景相关 ===
  
  /// 设置渐变背景
  Widget bgGradient({
    required List<Color> colors,
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
    List<double>? stops,
  }) {
    return DecoratedBox(
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
  }
  
  /// bg-gradient-to-r -> 从左到右的渐变
  Widget bgGradientToR(List<Color> colors) => bgGradient(
    colors: colors,
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  
  /// bg-gradient-to-l -> 从右到左的渐变
  Widget bgGradientToL(List<Color> colors) => bgGradient(
    colors: colors,
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );
  
  /// bg-gradient-to-t -> 从下到上的渐变
  Widget bgGradientToT(List<Color> colors) => bgGradient(
    colors: colors,
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
  
  /// bg-gradient-to-b -> 从上到下的渐变
  Widget bgGradientToB(List<Color> colors) => bgGradient(
    colors: colors,
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  
  /// bg-gradient-to-tr -> 对角线渐变（右上）
  Widget bgGradientToTr(List<Color> colors) => bgGradient(
    colors: colors,
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );
  
  /// bg-gradient-to-tl -> 对角线渐变（左上）
  Widget bgGradientToTl(List<Color> colors) => bgGradient(
    colors: colors,
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );
  
  /// bg-gradient-to-br -> 对角线渐变（右下）
  Widget bgGradientToBr(List<Color> colors) => bgGradient(
    colors: colors,
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  /// bg-gradient-to-bl -> 对角线渐变（左下）
  Widget bgGradientToBl(List<Color> colors) => bgGradient(
    colors: colors,
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  // === 边框相关 ===
  // 注意：由于与BorderWidthExt冲突，这些方法已移除
  // 请使用border_width.dart中定义的方法

  // === 工具方法 ===
  
  /// 条件应用
  Widget conditional(bool condition, Widget Function(Widget) transform) {
    return condition ? transform(this) : this;
  }
  
  /// 可空条件应用
  Widget conditionalNullable<T>(T? value, Widget Function(Widget, T) transform) {
    return value != null ? transform(this, value) : this;
  }
  
  /// 调试边框
  Widget debugBorder({Color color = Colors.red, double width = 1.0}) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: color, width: width),
      ),
      child: this,
    );
  }
  
  /// 调试背景色
  Widget debugBackground({Color color = Colors.red}) {
    return DecoratedBox(
      decoration: BoxDecoration(color: color.withValues(alpha: 0.2)),
      child: this,
    );
  }
}
