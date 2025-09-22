import 'package:flutter/material.dart';

/// Tailwind CSS Object Fit utilities for Flutter
/// Utilities for controlling how a replaced element's content should be resized.
extension ObjectFitExt on Widget {
  
  // === Object Fit utilities ===
  
  /// object-contain -> object-fit: contain;
  /// 保持纵横比，确保内容完全可见
  Widget objectContain() => FittedBox(
    fit: BoxFit.contain,
    child: this,
  );
  
  /// object-cover -> object-fit: cover;
  /// 保持纵横比，裁剪以填充容器
  Widget objectCover() => FittedBox(
    fit: BoxFit.cover,
    child: this,
  );
  
  /// object-fill -> object-fit: fill;
  /// 拉伸以填充容器（可能改变纵横比）
  Widget objectFill() => FittedBox(
    fit: BoxFit.fill,
    child: this,
  );
  
  /// object-none -> object-fit: none;
  /// 保持原始尺寸
  Widget objectNone() => FittedBox(
    fit: BoxFit.none,
    child: this,
  );
  
  /// object-scale-down -> object-fit: scale-down;
  /// 在none和contain之间选择较小的尺寸
  Widget objectScaleDown() => FittedBox(
    fit: BoxFit.scaleDown,
    child: this,
  );
}

/// 专门为Image Widget提供的object-fit扩展
extension ImageObjectFitExt on Image {
  
  /// 应用object-contain
  Image objectContain() => Image(
    image: image,
    fit: BoxFit.contain,
    width: width,
    height: height,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    filterQuality: filterQuality,
    frameBuilder: frameBuilder,
    errorBuilder: errorBuilder,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    color: color,
    opacity: opacity,
    colorBlendMode: colorBlendMode,
  );
  
  /// 应用object-cover
  Image objectCover() => Image(
    image: image,
    fit: BoxFit.cover,
    width: width,
    height: height,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    filterQuality: filterQuality,
    frameBuilder: frameBuilder,
    errorBuilder: errorBuilder,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    color: color,
    opacity: opacity,
    colorBlendMode: colorBlendMode,
  );
  
  /// 应用object-fill
  Image objectFill() => Image(
    image: image,
    fit: BoxFit.fill,
    width: width,
    height: height,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    filterQuality: filterQuality,
    frameBuilder: frameBuilder,
    errorBuilder: errorBuilder,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    color: color,
    opacity: opacity,
    colorBlendMode: colorBlendMode,
  );
  
  /// 应用object-none
  Image objectNone() => Image(
    image: image,
    fit: BoxFit.none,
    width: width,
    height: height,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    filterQuality: filterQuality,
    frameBuilder: frameBuilder,
    errorBuilder: errorBuilder,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    color: color,
    opacity: opacity,
    colorBlendMode: colorBlendMode,
  );
  
  /// 应用object-scale-down
  Image objectScaleDown() => Image(
    image: image,
    fit: BoxFit.scaleDown,
    width: width,
    height: height,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    filterQuality: filterQuality,
    frameBuilder: frameBuilder,
    errorBuilder: errorBuilder,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    color: color,
    opacity: opacity,
    colorBlendMode: colorBlendMode,
  );
}

/// Tailwind CSS Object Position utilities for Flutter
/// Utilities for controlling how a replaced element's content should be positioned within its container.
extension ObjectPositionExt on Widget {
  
  // === Object Position utilities ===
  
  /// object-bottom -> object-position: bottom;
  Widget objectBottom() => Align(
    alignment: Alignment.bottomCenter,
    child: this,
  );
  
  /// object-center -> object-position: center;
  Widget objectCenter() => Align(
    alignment: Alignment.center,
    child: this,
  );
  
  /// object-left -> object-position: left;
  Widget objectLeft() => Align(
    alignment: Alignment.centerLeft,
    child: this,
  );
  
  /// object-left-bottom -> object-position: left bottom;
  Widget objectLeftBottom() => Align(
    alignment: Alignment.bottomLeft,
    child: this,
  );
  
  /// object-left-top -> object-position: left top;
  Widget objectLeftTop() => Align(
    alignment: Alignment.topLeft,
    child: this,
  );
  
  /// object-right -> object-position: right;
  Widget objectRight() => Align(
    alignment: Alignment.centerRight,
    child: this,
  );
  
  /// object-right-bottom -> object-position: right bottom;
  Widget objectRightBottom() => Align(
    alignment: Alignment.bottomRight,
    child: this,
  );
  
  /// object-right-top -> object-position: right top;
  Widget objectRightTop() => Align(
    alignment: Alignment.topRight,
    child: this,
  );
  
  /// object-top -> object-position: top;
  Widget objectTop() => Align(
    alignment: Alignment.topCenter,
    child: this,
  );
  
  /// 自定义object-position
  Widget objectPosition(Alignment alignment) => Align(
    alignment: alignment,
    child: this,
  );
}

/// 专门为Image Widget提供的object-position扩展
extension ImageObjectPositionExt on Image {
  
  /// 设置图片对齐位置
  Image objectPosition(Alignment alignment) => Image(
    image: image,
    alignment: alignment,
    fit: fit,
    width: width,
    height: height,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    filterQuality: filterQuality,
    frameBuilder: frameBuilder,
    errorBuilder: errorBuilder,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    color: color,
    opacity: opacity,
    colorBlendMode: colorBlendMode,
  );
  
  /// object-center
  Image objectCenter() => objectPosition(Alignment.center);
  
  /// object-top
  Image objectTop() => objectPosition(Alignment.topCenter);
  
  /// object-bottom
  Image objectBottom() => objectPosition(Alignment.bottomCenter);
  
  /// object-left
  Image objectLeft() => objectPosition(Alignment.centerLeft);
  
  /// object-right
  Image objectRight() => objectPosition(Alignment.centerRight);
  
  /// object-left-top
  Image objectLeftTop() => objectPosition(Alignment.topLeft);
  
  /// object-right-top
  Image objectRightTop() => objectPosition(Alignment.topRight);
  
  /// object-left-bottom
  Image objectLeftBottom() => objectPosition(Alignment.bottomLeft);
  
  /// object-right-bottom
  Image objectRightBottom() => objectPosition(Alignment.bottomRight);
}

/// Object工具类
class ObjectUtils {
  /// 创建contain fit的元素
  static Widget contain(Widget child) => child.objectContain();
  
  /// 创建cover fit的元素
  static Widget cover(Widget child) => child.objectCover();
  
  /// 创建fill fit的元素
  static Widget fill(Widget child) => child.objectFill();
  
  /// 创建none fit的元素
  static Widget none(Widget child) => child.objectNone();
  
  /// 创建scale-down fit的元素
  static Widget scaleDown(Widget child) => child.objectScaleDown();
  
  /// 设置元素位置
  static Widget position(Widget child, Alignment alignment) => 
      child.objectPosition(alignment);
  
  /// 创建居中的元素
  static Widget center(Widget child) => child.objectCenter();
  
  /// 创建顶部对齐的元素
  static Widget top(Widget child) => child.objectTop();
  
  /// 创建底部对齐的元素
  static Widget bottom(Widget child) => child.objectBottom();
  
  /// 创建左对齐的元素
  static Widget left(Widget child) => child.objectLeft();
  
  /// 创建右对齐的元素
  static Widget right(Widget child) => child.objectRight();
}
