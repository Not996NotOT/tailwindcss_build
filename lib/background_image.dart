import 'dart:io';

import 'package:flutter/material.dart';

/// Tailwind CSS Background Image utilities for Flutter
/// Utilities for controlling an element's background image.
extension BackgroundImageExt on Widget {
  
  // === Basic background image utilities ===
  
  /// bg-none -> background-image: none;
  Widget bgNone() => this;
  
  /// bg-gradient-to-t -> background-image: linear-gradient(to top, var(--tw-gradient-stops));
  Widget bgGradientToT(List<Color> colors) => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: colors,
      ),
    ),
    child: this,
  );
  
  /// bg-gradient-to-tr -> background-image: linear-gradient(to top right, var(--tw-gradient-stops));
  Widget bgGradientToTr(List<Color> colors) => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: colors,
      ),
    ),
    child: this,
  );
  
  /// bg-gradient-to-r -> background-image: linear-gradient(to right, var(--tw-gradient-stops));
  Widget bgGradientToR(List<Color> colors) => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: colors,
      ),
    ),
    child: this,
  );
  
  /// bg-gradient-to-br -> background-image: linear-gradient(to bottom right, var(--tw-gradient-stops));
  Widget bgGradientToBr(List<Color> colors) => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: colors,
      ),
    ),
    child: this,
  );
  
  /// bg-gradient-to-b -> background-image: linear-gradient(to bottom, var(--tw-gradient-stops));
  Widget bgGradientToB(List<Color> colors) => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: colors,
      ),
    ),
    child: this,
  );
  
  /// bg-gradient-to-bl -> background-image: linear-gradient(to bottom left, var(--tw-gradient-stops));
  Widget bgGradientToBl(List<Color> colors) => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: colors,
      ),
    ),
    child: this,
  );
  
  /// bg-gradient-to-l -> background-image: linear-gradient(to left, var(--tw-gradient-stops));
  Widget bgGradientToL(List<Color> colors) => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: colors,
      ),
    ),
    child: this,
  );
  
  /// bg-gradient-to-tl -> background-image: linear-gradient(to top left, var(--tw-gradient-stops));
  Widget bgGradientToTl(List<Color> colors) => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
        colors: colors,
      ),
    ),
    child: this,
  );

  // === Custom background image utilities ===
  
  /// 网络图片背景
  Widget bgNetworkImage(
    String url, {
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    ColorFilter? colorFilter,
  }) => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(url),
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        colorFilter: colorFilter,
      ),
    ),
    child: this,
  );
  
  /// 资源图片背景
  Widget bgAssetImage(
    String assetPath, {
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    ColorFilter? colorFilter,
  }) => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(assetPath),
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        colorFilter: colorFilter,
      ),
    ),
    child: this,
  );
  
  /// 文件图片背景
  Widget bgFileImage(
    String filePath, {
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    ColorFilter? colorFilter,
  }) => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: FileImage(File(filePath)),
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        colorFilter: colorFilter,
      ),
    ),
    child: this,
  );

  // === Advanced gradient utilities ===
  
  /// 径向渐变背景图
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
  
  /// 扫描渐变背景图
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
  
  /// 多层背景图
  Widget bgMultipleImages(List<DecorationImage> images) => Container(
    decoration: BoxDecoration(
      image: images.isNotEmpty ? images.first : null,
    ),
    child: images.length > 1 
      ? Stack(
          children: images.skip(1).map((image) => 
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(image: image),
              ),
            ),
          ).toList()..add(Positioned.fill(child: this)),
        )
      : this,
  );

  // === Background with blend modes ===
  
  /// 带混合模式的背景图
  Widget bgImageWithBlend(
    ImageProvider image, {
    BlendMode blendMode = BlendMode.srcOver,
    Color blendColor = Colors.transparent,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: image,
        fit: fit,
        alignment: alignment,
        colorFilter: blendColor != Colors.transparent 
          ? ColorFilter.mode(blendColor, blendMode)
          : null,
      ),
    ),
    child: this,
  );
  
  /// 渐变遮罩的背景图
  Widget bgImageWithGradientOverlay(
    ImageProvider image, {
    required Gradient overlayGradient,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: image,
        fit: fit,
        alignment: alignment,
      ),
    ),
    foregroundDecoration: BoxDecoration(
      gradient: overlayGradient,
    ),
    child: this,
  );

  // === Conditional and responsive background images ===
  
  /// 根据条件应用背景图
  Widget bgImageConditional(
    bool condition,
    ImageProvider trueImage,
    ImageProvider falseImage, {
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: condition ? trueImage : falseImage,
        fit: fit,
        alignment: alignment,
      ),
    ),
    child: this,
  );
  
  /// 响应式背景图
  Widget bgImageResponsive({
    ImageProvider? mobile,
    ImageProvider? tablet,
    ImageProvider? desktop,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) => LayoutBuilder(
    builder: (context, constraints) {
      ImageProvider? backgroundImage;
      
      if (constraints.maxWidth < 768 && mobile != null) {
        backgroundImage = mobile;
      } else if (constraints.maxWidth < 1024 && tablet != null) {
        backgroundImage = tablet;
      } else if (desktop != null) {
        backgroundImage = desktop;
      }
      
      if (backgroundImage != null) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: backgroundImage,
              fit: fit,
              alignment: alignment,
            ),
          ),
          child: this,
        );
      }
      
      return this;
    },
  );

  // === Pattern and texture backgrounds ===
  
  /// 重复图案背景
  Widget bgPattern(
    ImageProvider image, {
    ImageRepeat repeat = ImageRepeat.repeat,
    Alignment alignment = Alignment.center,
  }) => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: image,
        repeat: repeat,
        alignment: alignment,
      ),
    ),
    child: this,
  );
  
  /// 纹理背景
  Widget bgTexture(
    ImageProvider texture, {
    BlendMode blendMode = BlendMode.multiply,
    Color blendColor = Colors.white,
    double opacity = 0.5,
  }) => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: texture,
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          blendColor.withOpacity(opacity),
          blendMode,
        ),
      ),
    ),
    child: this,
  );
}

/// 背景图片工具类
class BackgroundImage {
  /// 创建无背景图
  static Widget none(Widget child) => child.bgNone();
  
  /// 创建网络图片背景
  static Widget network(
    Widget child,
    String url, {
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
  }) => child.bgNetworkImage(url, fit: fit, alignment: alignment, repeat: repeat);
  
  /// 创建资源图片背景
  static Widget asset(
    Widget child,
    String assetPath, {
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
  }) => child.bgAssetImage(assetPath, fit: fit, alignment: alignment, repeat: repeat);
  
  /// 创建渐变背景
  static Widget gradient(
    Widget child, {
    required List<Color> colors,
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
  }) => child.bgGradientToR(colors);
  
  /// 创建径向渐变背景
  static Widget radialGradient(
    Widget child, {
    required List<Color> colors,
    AlignmentGeometry center = Alignment.center,
    double radius = 0.5,
  }) => child.bgRadialGradient(colors: colors, center: center, radius: radius);
  
  /// 创建响应式背景图
  static Widget responsive(
    Widget child, {
    ImageProvider? mobile,
    ImageProvider? tablet,
    ImageProvider? desktop,
    BoxFit fit = BoxFit.cover,
  }) => child.bgImageResponsive(
    mobile: mobile,
    tablet: tablet,
    desktop: desktop,
    fit: fit,
  );
}

