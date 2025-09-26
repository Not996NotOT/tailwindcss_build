import 'package:flutter/material.dart';

/// Tailwind CSS Background Origin utilities for Flutter
/// Utilities for controlling how an element's background is positioned relative to borders, padding, and content.
extension BackgroundOriginExt on Widget {
  
  // === Background origin utilities ===
  
  /// bg-origin-border -> background-origin: border-box;
  /// 背景相对于边框盒定位
  Widget bgOriginBorder({
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        image: backgroundImage != null 
          ? DecorationImage(
              image: backgroundImage,
              fit: fit,
              alignment: alignment,
            )
          : null,
        gradient: gradient,
      ),
      child: this,
    );
  }
  
  /// bg-origin-padding -> background-origin: padding-box;
  /// 背景相对于内边距盒定位
  Widget bgOriginPadding({
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    BoxDecoration? borderDecoration,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return Container(
      decoration: borderDecoration,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          image: backgroundImage != null 
            ? DecorationImage(
                image: backgroundImage,
                fit: fit,
                alignment: alignment,
              )
            : null,
          gradient: gradient,
        ),
        child: this,
      ),
    );
  }
  
  /// bg-origin-content -> background-origin: content-box;
  /// 背景相对于内容盒定位
  Widget bgOriginContent({
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? borderDecoration,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return Container(
      decoration: borderDecoration,
      margin: margin,
      padding: padding,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          image: backgroundImage != null 
            ? DecorationImage(
                image: backgroundImage,
                fit: fit,
                alignment: alignment,
              )
            : null,
          gradient: gradient,
        ),
        child: this,
      ),
    );
  }

  // === Advanced background origin utilities ===
  
  /// 自定义背景原点
  Widget bgOriginCustom({
    required BoxDecoration decoration,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Border? border,
  }) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: decoration.copyWith(
        border: border ?? decoration.border,
      ),
      child: this,
    );
  }
  
  /// 多层背景原点
  Widget bgOriginMultiLayer({
    required List<BackgroundOriginLayer> layers,
  }) {
    Widget result = this;
    
    for (final layer in layers.reversed) {
      switch (layer.origin) {
        case BackgroundOriginType.border:
          result = result.bgOriginBorder(
            backgroundColor: layer.backgroundColor,
            backgroundImage: layer.backgroundImage,
            gradient: layer.gradient,
            fit: layer.fit,
            alignment: layer.alignment,
          );
          break;
        case BackgroundOriginType.padding:
          result = result.bgOriginPadding(
            backgroundColor: layer.backgroundColor,
            backgroundImage: layer.backgroundImage,
            gradient: layer.gradient,
            padding: layer.padding,
            borderDecoration: layer.borderDecoration,
            fit: layer.fit,
            alignment: layer.alignment,
          );
          break;
        case BackgroundOriginType.content:
          result = result.bgOriginContent(
            backgroundColor: layer.backgroundColor,
            backgroundImage: layer.backgroundImage,
            gradient: layer.gradient,
            padding: layer.padding,
            margin: layer.margin,
            borderDecoration: layer.borderDecoration,
            fit: layer.fit,
            alignment: layer.alignment,
          );
          break;
      }
    }
    
    return result;
  }
  
  /// 响应式背景原点
  Widget bgOriginResponsive({
    BackgroundOriginType mobile = BackgroundOriginType.border,
    BackgroundOriginType tablet = BackgroundOriginType.padding,
    BackgroundOriginType desktop = BackgroundOriginType.content,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? borderDecoration,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        BackgroundOriginType originType;
        
        if (constraints.maxWidth < 768) {
          originType = mobile;
        } else if (constraints.maxWidth < 1024) {
          originType = tablet;
        } else {
          originType = desktop;
        }
        
        switch (originType) {
          case BackgroundOriginType.border:
            return bgOriginBorder(
              backgroundColor: backgroundColor,
              backgroundImage: backgroundImage,
              gradient: gradient,
              fit: fit,
              alignment: alignment,
            );
          case BackgroundOriginType.padding:
            return bgOriginPadding(
              backgroundColor: backgroundColor,
              backgroundImage: backgroundImage,
              gradient: gradient,
              padding: padding,
              borderDecoration: borderDecoration,
              fit: fit,
              alignment: alignment,
            );
          case BackgroundOriginType.content:
            return bgOriginContent(
              backgroundColor: backgroundColor,
              backgroundImage: backgroundImage,
              gradient: gradient,
              padding: padding,
              margin: margin,
              borderDecoration: borderDecoration,
              fit: fit,
              alignment: alignment,
            );
        }
      },
    );
  }
  
  /// 条件背景原点
  Widget bgOriginConditional({
    required BackgroundOriginType originType,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? borderDecoration,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    switch (originType) {
      case BackgroundOriginType.border:
        return bgOriginBorder(
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          gradient: gradient,
          fit: fit,
          alignment: alignment,
        );
      case BackgroundOriginType.padding:
        return bgOriginPadding(
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          gradient: gradient,
          padding: padding,
          borderDecoration: borderDecoration,
          fit: fit,
          alignment: alignment,
        );
      case BackgroundOriginType.content:
        return bgOriginContent(
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          gradient: gradient,
          padding: padding,
          margin: margin,
          borderDecoration: borderDecoration,
          fit: fit,
          alignment: alignment,
        );
    }
  }

  // === Background origin with animations ===
  
  /// 动画背景原点过渡
  Widget bgOriginAnimated({
    required BackgroundOriginType fromOrigin,
    required BackgroundOriginType toOrigin,
    required Duration duration,
    Curve curve = Curves.easeInOut,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? borderDecoration,
  }) {
    return _AnimatedBackgroundOrigin(
      fromOrigin: fromOrigin,
      toOrigin: toOrigin,
      duration: duration,
      curve: curve,
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
      padding: padding,
      margin: margin,
      borderDecoration: borderDecoration,
      child: this,
    );
  }
}

/// 背景原点类型枚举
enum BackgroundOriginType {
  /// 边框盒
  border,
  /// 内边距盒
  padding,
  /// 内容盒
  content,
}

/// 背景原点层配置类
class BackgroundOriginLayer {
  final BackgroundOriginType origin;
  final Color? backgroundColor;
  final ImageProvider? backgroundImage;
  final Gradient? gradient;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration? borderDecoration;
  final BoxFit fit;
  final Alignment alignment;

  const BackgroundOriginLayer({
    required this.origin,
    this.backgroundColor,
    this.backgroundImage,
    this.gradient,
    this.padding,
    this.margin,
    this.borderDecoration,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
  });
}

/// 动画背景原点组件
class _AnimatedBackgroundOrigin extends StatefulWidget {
  final BackgroundOriginType fromOrigin;
  final BackgroundOriginType toOrigin;
  final Duration duration;
  final Curve curve;
  final Color? backgroundColor;
  final ImageProvider? backgroundImage;
  final Gradient? gradient;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration? borderDecoration;
  final Widget child;

  const _AnimatedBackgroundOrigin({
    required this.fromOrigin,
    required this.toOrigin,
    required this.duration,
    required this.curve,
    this.backgroundColor,
    this.backgroundImage,
    this.gradient,
    this.padding,
    this.margin,
    this.borderDecoration,
    required this.child,
  });

  @override
  State<_AnimatedBackgroundOrigin> createState() => _AnimatedBackgroundOriginState();
}

class _AnimatedBackgroundOriginState extends State<_AnimatedBackgroundOrigin>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: widget.curve,
    ));
    
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        // 根据动画进度在两种背景原点之间过渡
        final currentOrigin = _animation.value < 0.5 
          ? widget.fromOrigin 
          : widget.toOrigin;
        
        return widget.child.bgOriginConditional(
          originType: currentOrigin,
          backgroundColor: widget.backgroundColor,
          backgroundImage: widget.backgroundImage,
          gradient: widget.gradient,
          padding: widget.padding,
          margin: widget.margin,
          borderDecoration: widget.borderDecoration,
        );
      },
    );
  }
}

/// 背景原点工具类
class BackgroundOrigin {
  /// 创建边框盒背景原点
  static Widget border({
    required Widget child,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
  }) {
    return child.bgOriginBorder(
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
    );
  }
  
  /// 创建内边距盒背景原点
  static Widget padding({
    required Widget child,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    BoxDecoration? borderDecoration,
  }) {
    return child.bgOriginPadding(
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
      padding: padding,
      borderDecoration: borderDecoration,
    );
  }
  
  /// 创建内容盒背景原点
  static Widget content({
    required Widget child,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? borderDecoration,
  }) {
    return child.bgOriginContent(
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
      padding: padding,
      margin: margin,
      borderDecoration: borderDecoration,
    );
  }
  
  /// 创建响应式背景原点
  static Widget responsive({
    required Widget child,
    BackgroundOriginType mobile = BackgroundOriginType.border,
    BackgroundOriginType tablet = BackgroundOriginType.padding,
    BackgroundOriginType desktop = BackgroundOriginType.content,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? borderDecoration,
  }) {
    return child.bgOriginResponsive(
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
      padding: padding,
      margin: margin,
      borderDecoration: borderDecoration,
    );
  }
}



