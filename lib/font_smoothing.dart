import 'package:flutter/material.dart';

/// Tailwind CSS Font Smoothing utilities for Flutter
/// Utilities for controlling the font smoothing of an element.
/// 注意：Flutter中字体平滑主要通过TextStyle的不同属性来实现
extension FontSmoothingExt on Widget {
  
  /// antialiased -> -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale;
  /// 在Flutter中通过设置合适的字体渲染属性来实现抗锯齿效果
  Widget antialiased() => DefaultTextStyle.merge(
        style: const TextStyle(
          // Flutter默认已经开启了字体抗锯齿，这里主要是语义化的方法
          fontFeatures: [
            FontFeature.enable('kern'), // 启用字距调整
          ],
        ),
        child: this,
      );
  
  /// subpixel-antialiased -> -webkit-font-smoothing: auto; -moz-osx-font-smoothing: auto;
  /// 使用子像素抗锯齿（系统默认）
  Widget subpixelAntialiased() => DefaultTextStyle.merge(
        style: const TextStyle(
          // 使用默认的字体渲染设置
        ),
        child: this,
      );

  // === 扩展的字体渲染选项 ===
  
  /// 高质量字体渲染
  Widget fontRenderingOptimizeQuality() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.enable('kern'), // 字距调整
            FontFeature.enable('liga'), // 连字
          ],
        ),
        child: this,
      );
  
  /// 优化渲染速度
  Widget fontRenderingOptimizeSpeed() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.disable('kern'), // 禁用字距调整以提高渲染速度
            FontFeature.disable('liga'), // 禁用连字
          ],
        ),
        child: this,
      );
  
  /// 启用连字
  Widget enableLigatures() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.enable('liga'), // 标准连字
            FontFeature.enable('dlig'), // 可选连字
          ],
        ),
        child: this,
      );
  
  /// 禁用连字
  Widget disableLigatures() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.disable('liga'),
            FontFeature.disable('dlig'),
          ],
        ),
        child: this,
      );
  
  /// 启用字距调整
  Widget enableKerning() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.enable('kern'),
          ],
        ),
        child: this,
      );
  
  /// 禁用字距调整
  Widget disableKerning() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.disable('kern'),
          ],
        ),
        child: this,
      );

  // === 数字和特殊字符渲染 ===
  
  /// 等宽数字
  Widget tabularNums() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.tabularFigures(),
          ],
        ),
        child: this,
      );
  
  /// 比例数字
  Widget proportionalNums() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.proportionalFigures(),
          ],
        ),
        child: this,
      );
  
  /// 老式数字
  Widget oldstyleNums() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.oldstyleFigures(),
          ],
        ),
        child: this,
      );
  
  /// 内衬数字
  Widget liningNums() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.liningFigures(),
          ],
        ),
        child: this,
      );
  
  /// 斜分数
  Widget slashedZero() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.enable('zero'), // 斜分数零
          ],
        ),
        child: this,
      );

  // === 文本装饰和效果 ===
  
  /// 小型大写字母
  Widget fontVariantSmallCaps() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.enable('smcp'), // 小型大写
          ],
        ),
        child: this,
      );
  
  /// 全部大写
  Widget fontVariantAllSmallCaps() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.enable('c2sc'), // 大写转小型大写
            FontFeature.enable('smcp'), // 小型大写
          ],
        ),
        child: this,
      );
  
  /// 上标序数
  Widget ordinal() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.enable('ordn'), // 序数
          ],
        ),
        child: this,
      );

  // === 自定义字体特性 ===
  
  /// 自定义字体特性
  Widget customFontFeatures(List<FontFeature> features) => DefaultTextStyle.merge(
        style: TextStyle(
          fontFeatures: features,
        ),
        child: this,
      );
  
  /// 启用所有推荐的字体特性（高质量渲染）
  Widget fontOptimal() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.enable('kern'), // 字距调整
            FontFeature.enable('liga'), // 连字
            FontFeature.enable('clig'), // 上下文连字
            FontFeature.proportionalFigures(), // 比例数字
          ],
        ),
        child: this,
      );
  
  /// 编程字体优化（等宽、无连字）
  Widget fontMonospace() => DefaultTextStyle.merge(
        style: const TextStyle(
          fontFeatures: [
            FontFeature.disable('liga'), // 禁用连字
            FontFeature.disable('clig'), // 禁用上下文连字
            FontFeature.tabularFigures(), // 等宽数字
            FontFeature.liningFigures(), // 内衬数字
          ],
        ),
        child: this,
      );
}
