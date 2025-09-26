import 'package:flutter/material.dart';

/// Tailwind CSS Background Clip utilities for Flutter
/// Utilities for controlling the bounding box of an element's background.
extension BackgroundClipExt on Widget {
  
  // === Background clip utilities ===
  
  /// bg-clip-border -> background-clip: border-box;
  /// 背景延伸到边框的外边缘（默认行为）
  Widget bgClipBorder({
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
  
  /// bg-clip-padding -> background-clip: padding-box;
  /// 背景延伸到内边距的外边缘
  Widget bgClipPadding({
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
  
  /// bg-clip-content -> background-clip: content-box;
  /// 背景被裁剪到内容框
  Widget bgClipContent({
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
  
  /// bg-clip-text -> background-clip: text;
  /// 背景被裁剪到文本的形状
  Widget bgClipText({
    required Gradient gradient,
    TextStyle? textStyle,
    BlendMode blendMode = BlendMode.srcIn,
  }) {
    if (this is Text) {
      final text = this as Text;
      return ShaderMask(
        shaderCallback: (bounds) => gradient.createShader(bounds),
        blendMode: blendMode,
        child: Text(
          text.data ?? '',
          style: (text.style ?? const TextStyle()).copyWith(
            color: Colors.white,
          ).merge(textStyle),
          textAlign: text.textAlign,
          textDirection: text.textDirection,
          locale: text.locale,
          softWrap: text.softWrap,
          overflow: text.overflow,
          textScaler: text.textScaler,
          maxLines: text.maxLines,
          semanticsLabel: text.semanticsLabel,
          textWidthBasis: text.textWidthBasis,
          textHeightBehavior: text.textHeightBehavior,
          strutStyle: text.strutStyle,
        ),
      );
    }
    
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(bounds),
      blendMode: blendMode,
      child: DefaultTextStyle.merge(
        style: const TextStyle(color: Colors.white).merge(textStyle),
        child: this,
      ),
    );
  }

  // === Advanced background clip utilities ===
  
  /// 自定义形状裁剪背景
  Widget bgClipCustom({
    required CustomClipper<Path> clipper,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return ClipPath(
      clipper: clipper,
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
  
  /// 圆形裁剪背景
  Widget bgClipCircle({
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return ClipOval(
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
  
  /// 圆角矩形裁剪背景
  Widget bgClipRRect({
    required BorderRadius borderRadius,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return ClipRRect(
      borderRadius: borderRadius,
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
  
  /// 矩形裁剪背景
  Widget bgClipRect({
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return ClipRect(
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

  // === Multi-color text gradients ===
  
  /// 线性渐变文本
  Widget bgClipLinearGradient({
    required List<Color> colors,
    List<double>? stops,
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
    TextStyle? textStyle,
    BlendMode blendMode = BlendMode.srcIn,
  }) {
    return bgClipText(
      gradient: LinearGradient(
        colors: colors,
        stops: stops,
        begin: begin,
        end: end,
      ),
      textStyle: textStyle,
      blendMode: blendMode,
    );
  }
  
  /// 径向渐变文本
  Widget bgClipRadialGradient({
    required List<Color> colors,
    List<double>? stops,
    AlignmentGeometry center = Alignment.center,
    double radius = 0.5,
    TextStyle? textStyle,
    BlendMode blendMode = BlendMode.srcIn,
  }) {
    return bgClipText(
      gradient: RadialGradient(
        colors: colors,
        stops: stops,
        center: center,
        radius: radius,
      ),
      textStyle: textStyle,
      blendMode: blendMode,
    );
  }
  
  /// 扫描渐变文本
  Widget bgClipSweepGradient({
    required List<Color> colors,
    List<double>? stops,
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = 6.283185307179586,
    TextStyle? textStyle,
    BlendMode blendMode = BlendMode.srcIn,
  }) {
    return bgClipText(
      gradient: SweepGradient(
        colors: colors,
        stops: stops,
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
      ),
      textStyle: textStyle,
      blendMode: blendMode,
    );
  }

  // === Animated background clip utilities ===
  
  /// 动画渐变文本
  Widget bgClipAnimatedGradient({
    required List<Color> colors,
    Duration duration = const Duration(seconds: 3),
    TextStyle? textStyle,
  }) {
    return _AnimatedGradientText(
      colors: colors,
      duration: duration,
      textStyle: textStyle,
      child: this,
    );
  }
  
  /// 呼吸效果背景裁剪
  Widget bgClipBreathing({
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    Duration duration = const Duration(seconds: 2),
    double minScale = 0.95,
    double maxScale = 1.05,
  }) {
    return _BreathingBackground(
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
      duration: duration,
      minScale: minScale,
      maxScale: maxScale,
      child: this,
    );
  }

  // === Conditional background clip utilities ===
  
  /// 根据条件应用背景裁剪
  Widget bgClipConditional({
    required BackgroundClipType clipType,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? borderDecoration,
    BorderRadius? borderRadius,
    CustomClipper<Path>? customClipper,
    TextStyle? textStyle,
  }) {
    switch (clipType) {
      case BackgroundClipType.border:
        return bgClipBorder(
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          gradient: gradient,
        );
      case BackgroundClipType.padding:
        return bgClipPadding(
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          gradient: gradient,
          padding: padding,
          borderDecoration: borderDecoration,
        );
      case BackgroundClipType.content:
        return bgClipContent(
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          gradient: gradient,
          padding: padding,
          margin: margin,
          borderDecoration: borderDecoration,
        );
      case BackgroundClipType.text:
        return bgClipText(
          gradient: gradient ?? const LinearGradient(colors: [Colors.blue, Colors.purple]),
          textStyle: textStyle,
        );
      case BackgroundClipType.circle:
        return bgClipCircle(
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          gradient: gradient,
        );
      case BackgroundClipType.rect:
        return bgClipRect(
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          gradient: gradient,
        );
      case BackgroundClipType.rRect:
        return bgClipRRect(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          gradient: gradient,
        );
      case BackgroundClipType.custom:
        return customClipper != null
          ? bgClipCustom(
              clipper: customClipper,
              backgroundColor: backgroundColor,
              backgroundImage: backgroundImage,
              gradient: gradient,
            )
          : this;
    }
  }
  
  /// 响应式背景裁剪
  Widget bgClipResponsive({
    BackgroundClipType mobile = BackgroundClipType.border,
    BackgroundClipType tablet = BackgroundClipType.padding,
    BackgroundClipType desktop = BackgroundClipType.content,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? borderDecoration,
    BorderRadius? borderRadius,
    TextStyle? textStyle,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        BackgroundClipType clipType;
        
        if (constraints.maxWidth < 768) {
          clipType = mobile;
        } else if (constraints.maxWidth < 1024) {
          clipType = tablet;
        } else {
          clipType = desktop;
        }
        
        return bgClipConditional(
          clipType: clipType,
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          gradient: gradient,
          padding: padding,
          margin: margin,
          borderDecoration: borderDecoration,
          borderRadius: borderRadius,
          textStyle: textStyle,
        );
      },
    );
  }
}

/// 背景裁剪类型枚举
enum BackgroundClipType {
  /// 边框盒子
  border,
  /// 内边距盒子
  padding,
  /// 内容盒子
  content,
  /// 文本形状
  text,
  /// 圆形
  circle,
  /// 矩形
  rect,
  /// 圆角矩形
  rRect,
  /// 自定义形状
  custom,
}

/// 动画渐变文本组件
class _AnimatedGradientText extends StatefulWidget {
  final List<Color> colors;
  final Duration duration;
  final TextStyle? textStyle;
  final Widget child;

  const _AnimatedGradientText({
    required this.colors,
    required this.duration,
    this.textStyle,
    required this.child,
  });

  @override
  State<_AnimatedGradientText> createState() => _AnimatedGradientTextState();
}

class _AnimatedGradientTextState extends State<_AnimatedGradientText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..repeat();
    
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
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
        return widget.child.bgClipLinearGradient(
          colors: widget.colors,
          begin: Alignment(-1.0 + 2.0 * _animation.value, 0.0),
          end: Alignment(1.0 + 2.0 * _animation.value, 0.0),
          textStyle: widget.textStyle,
        );
      },
    );
  }
}

/// 呼吸效果背景组件
class _BreathingBackground extends StatefulWidget {
  final Color? backgroundColor;
  final ImageProvider? backgroundImage;
  final Gradient? gradient;
  final Duration duration;
  final double minScale;
  final double maxScale;
  final Widget child;

  const _BreathingBackground({
    this.backgroundColor,
    this.backgroundImage,
    this.gradient,
    required this.duration,
    required this.minScale,
    required this.maxScale,
    required this.child,
  });

  @override
  State<_BreathingBackground> createState() => _BreathingBackgroundState();
}

class _BreathingBackgroundState extends State<_BreathingBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..repeat(reverse: true);
    
    _scaleAnimation = Tween<double>(
      begin: widget.minScale,
      end: widget.maxScale,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Container(
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              image: widget.backgroundImage != null 
                ? DecorationImage(
                    image: widget.backgroundImage!,
                    fit: BoxFit.cover,
                  )
                : null,
              gradient: widget.gradient,
            ),
            child: widget.child,
          ),
        );
      },
    );
  }
}

/// 背景裁剪工具类
class BackgroundClip {
  /// 创建边框裁剪背景
  static Widget border({
    required Widget child,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
  }) {
    return child.bgClipBorder(
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
    );
  }
  
  /// 创建内边距裁剪背景
  static Widget padding({
    required Widget child,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    BoxDecoration? borderDecoration,
  }) {
    return child.bgClipPadding(
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
      padding: padding,
      borderDecoration: borderDecoration,
    );
  }
  
  /// 创建内容裁剪背景
  static Widget content({
    required Widget child,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? borderDecoration,
  }) {
    return child.bgClipContent(
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
      padding: padding,
      margin: margin,
      borderDecoration: borderDecoration,
    );
  }
  
  /// 创建文本裁剪背景
  static Widget text({
    required Widget child,
    required Gradient gradient,
    TextStyle? textStyle,
    BlendMode blendMode = BlendMode.srcIn,
  }) {
    return child.bgClipText(
      gradient: gradient,
      textStyle: textStyle,
      blendMode: blendMode,
    );
  }
  
  /// 创建圆形裁剪背景
  static Widget circle({
    required Widget child,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
  }) {
    return child.bgClipCircle(
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
    );
  }
  
  /// 创建圆角矩形裁剪背景
  static Widget roundedRect({
    required Widget child,
    required BorderRadius borderRadius,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
  }) {
    return child.bgClipRRect(
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
    );
  }
  
  /// 创建自定义形状裁剪背景
  static Widget custom({
    required Widget child,
    required CustomClipper<Path> clipper,
    Color? backgroundColor,
    ImageProvider? backgroundImage,
    Gradient? gradient,
  }) {
    return child.bgClipCustom(
      clipper: clipper,
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      gradient: gradient,
    );
  }
  
  /// 创建线性渐变文本
  static Widget linearGradientText({
    required Widget child,
    required List<Color> colors,
    List<double>? stops,
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
    TextStyle? textStyle,
  }) {
    return child.bgClipLinearGradient(
      colors: colors,
      stops: stops,
      begin: begin,
      end: end,
      textStyle: textStyle,
    );
  }
  
  /// 创建径向渐变文本
  static Widget radialGradientText({
    required Widget child,
    required List<Color> colors,
    List<double>? stops,
    AlignmentGeometry center = Alignment.center,
    double radius = 0.5,
    TextStyle? textStyle,
  }) {
    return child.bgClipRadialGradient(
      colors: colors,
      stops: stops,
      center: center,
      radius: radius,
      textStyle: textStyle,
    );
  }
}



