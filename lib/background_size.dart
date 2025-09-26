import 'package:flutter/material.dart';

/// Tailwind CSS Background Size utilities for Flutter
/// Utilities for controlling the background size of an element's background image.
extension BackgroundSizeExt on Widget {
  
  // === Basic background size utilities ===
  
  /// bg-auto -> background-size: auto;
  /// 背景图片保持原始尺寸
  Widget bgAuto({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: BoxFit.none,
        alignment: alignment,
        repeat: repeat,
      ),
    ),
    child: this,
  );
  
  /// bg-cover -> background-size: cover;
  /// 背景图片缩放到覆盖整个容器
  Widget bgCover({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: BoxFit.cover,
        alignment: alignment,
        repeat: repeat,
      ),
    ),
    child: this,
  );
  
  /// bg-contain -> background-size: contain;
  /// 背景图片缩放到完全包含在容器内
  Widget bgContain({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: BoxFit.contain,
        alignment: alignment,
        repeat: repeat,
      ),
    ),
    child: this,
  );

  // === Custom background size utilities ===
  
  /// 自定义背景尺寸 - bg-[<value>]
  Widget bgCustomSize(
    BoxFit fit, {
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    ColorFilter? colorFilter,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        colorFilter: colorFilter,
      ),
    ),
    child: this,
  );
  
  /// 填充背景 - 拉伸以填充容器
  Widget bgFill({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: BoxFit.fill,
        alignment: alignment,
      ),
    ),
    child: this,
  );
  
  /// 适应宽度
  Widget bgFitWidth({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: BoxFit.fitWidth,
        alignment: alignment,
      ),
    ),
    child: this,
  );
  
  /// 适应高度
  Widget bgFitHeight({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: BoxFit.fitHeight,
        alignment: alignment,
      ),
    ),
    child: this,
  );
  
  /// 缩小适应
  Widget bgScaleDown({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: BoxFit.scaleDown,
        alignment: alignment,
      ),
    ),
    child: this,
  );

  // === Responsive background size utilities ===
  
  /// 响应式背景尺寸
  Widget bgResponsiveSize({
    BoxFit mobile = BoxFit.cover,
    BoxFit tablet = BoxFit.contain,
    BoxFit desktop = BoxFit.cover,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => LayoutBuilder(
    builder: (context, constraints) {
      BoxFit fit;
      
      if (constraints.maxWidth < 768) {
        fit = mobile;
      } else if (constraints.maxWidth < 1024) {
        fit = tablet;
      } else {
        fit = desktop;
      }
      
      return Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          image: DecorationImage(
            image: backgroundImage,
            fit: fit,
            alignment: alignment,
          ),
        ),
        child: this,
      );
    },
  );
  
  /// 条件背景尺寸
  Widget bgConditionalSize(
    bool condition,
    BoxFit trueFit,
    BoxFit falseFit, {
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: condition ? trueFit : falseFit,
        alignment: alignment,
      ),
    ),
    child: this,
  );

  // === Advanced background size utilities ===
  
  /// 动画背景尺寸
  Widget bgAnimatedSize({
    required BoxFit fromFit,
    required BoxFit toFit,
    required Duration duration,
    Curve curve = Curves.easeInOut,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => _AnimatedBackgroundSize(
    fromFit: fromFit,
    toFit: toFit,
    duration: duration,
    curve: curve,
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
    child: this,
  );
  
  /// 自适应背景尺寸
  Widget bgAdaptiveSize({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    double aspectRatioThreshold = 1.0,
  }) => LayoutBuilder(
    builder: (context, constraints) {
      final containerAspectRatio = constraints.maxWidth / constraints.maxHeight;
      final fit = containerAspectRatio > aspectRatioThreshold 
        ? BoxFit.fitHeight 
        : BoxFit.fitWidth;
      
      return Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          image: DecorationImage(
            image: backgroundImage,
            fit: fit,
            alignment: alignment,
          ),
        ),
        child: this,
      );
    },
  );
  
  /// 多级背景尺寸
  Widget bgMultiLevelSize({
    required List<BackgroundSizeLevel> levels,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => LayoutBuilder(
    builder: (context, constraints) {
      BoxFit fit = BoxFit.cover;
      
      for (final level in levels) {
        if (constraints.maxWidth >= level.minWidth) {
          fit = level.fit;
        }
      }
      
      return Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          image: DecorationImage(
            image: backgroundImage,
            fit: fit,
            alignment: alignment,
          ),
        ),
        child: this,
      );
    },
  );

  // === Multiple background sizes ===
  
  /// 多背景尺寸
  Widget bgMultipleSizes({
    required List<BackgroundSizeLayer> layers,
  }) {
    if (layers.isEmpty) return this;
    
    return Stack(
      children: [
        // 第一层作为主背景
        Container(
          decoration: BoxDecoration(
            color: layers[0].backgroundColor,
            image: DecorationImage(
              image: layers[0].backgroundImage,
              fit: layers[0].fit,
              alignment: layers[0].alignment,
              repeat: layers[0].repeat,
              colorFilter: layers[0].colorFilter,
            ),
          ),
        ),
        // 其他层作为叠加
        ...layers.skip(1).map((layer) => 
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: layer.backgroundImage,
                  fit: layer.fit,
                  alignment: layer.alignment,
                  repeat: layer.repeat,
                  colorFilter: layer.colorFilter,
                ),
              ),
            ),
          ),
        ),
        // 子组件
        this,
      ],
    );
  }

  // === Interactive background sizes ===
  
  /// 悬停变化背景尺寸
  Widget bgHoverSize({
    BoxFit normalFit = BoxFit.cover,
    BoxFit hoverFit = BoxFit.contain,
    Duration duration = const Duration(milliseconds: 200),
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => _HoverBackgroundSize(
    normalFit: normalFit,
    hoverFit: hoverFit,
    duration: duration,
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
    child: this,
  );
  
  /// 缩放背景尺寸
  Widget bgScaleSize({
    double scale = 1.2,
    Duration duration = const Duration(milliseconds: 300),
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => _ScaleBackgroundSize(
    scale: scale,
    duration: duration,
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
    child: this,
  );

  // === Performance optimized background sizes ===
  
  /// 懒加载背景尺寸
  Widget bgLazySize({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
    Widget? placeholder,
  }) => _LazyBackgroundSize(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
    alignment: alignment,
    placeholder: placeholder,
    child: this,
  );
  
  /// 缓存背景尺寸
  Widget bgCachedSize({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
    Duration cacheDuration = const Duration(minutes: 5),
  }) => _CachedBackgroundSize(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
    alignment: alignment,
    cacheDuration: cacheDuration,
    child: this,
  );
}

/// 背景尺寸级别配置类
class BackgroundSizeLevel {
  final double minWidth;
  final BoxFit fit;

  const BackgroundSizeLevel({
    required this.minWidth,
    required this.fit,
  });
}

/// 背景尺寸层配置类
class BackgroundSizeLayer {
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final BoxFit fit;
  final Alignment alignment;
  final ImageRepeat repeat;
  final ColorFilter? colorFilter;

  const BackgroundSizeLayer({
    this.backgroundColor,
    required this.backgroundImage,
    required this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.colorFilter,
  });
}

/// 动画背景尺寸组件
class _AnimatedBackgroundSize extends StatefulWidget {
  final BoxFit fromFit;
  final BoxFit toFit;
  final Duration duration;
  final Curve curve;
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final Alignment alignment;
  final Widget child;

  const _AnimatedBackgroundSize({
    required this.fromFit,
    required this.toFit,
    required this.duration,
    required this.curve,
    this.backgroundColor,
    required this.backgroundImage,
    required this.alignment,
    required this.child,
  });

  @override
  State<_AnimatedBackgroundSize> createState() => _AnimatedBackgroundSizeState();
}

class _AnimatedBackgroundSizeState extends State<_AnimatedBackgroundSize>
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
        final currentFit = _animation.value < 0.5 ? widget.fromFit : widget.toFit;
        
        return Container(
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            image: DecorationImage(
              image: widget.backgroundImage,
              fit: currentFit,
              alignment: widget.alignment,
            ),
          ),
          child: widget.child,
        );
      },
    );
  }
}

/// 悬停背景尺寸组件
class _HoverBackgroundSize extends StatefulWidget {
  final BoxFit normalFit;
  final BoxFit hoverFit;
  final Duration duration;
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final Alignment alignment;
  final Widget child;

  const _HoverBackgroundSize({
    required this.normalFit,
    required this.hoverFit,
    required this.duration,
    this.backgroundColor,
    required this.backgroundImage,
    required this.alignment,
    required this.child,
  });

  @override
  State<_HoverBackgroundSize> createState() => _HoverBackgroundSizeState();
}

class _HoverBackgroundSizeState extends State<_HoverBackgroundSize> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: widget.duration,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          image: DecorationImage(
            image: widget.backgroundImage,
            fit: _isHovered ? widget.hoverFit : widget.normalFit,
            alignment: widget.alignment,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}

/// 缩放背景尺寸组件
class _ScaleBackgroundSize extends StatefulWidget {
  final double scale;
  final Duration duration;
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final Alignment alignment;
  final Widget child;

  const _ScaleBackgroundSize({
    required this.scale,
    required this.duration,
    this.backgroundColor,
    required this.backgroundImage,
    required this.alignment,
    required this.child,
  });

  @override
  State<_ScaleBackgroundSize> createState() => _ScaleBackgroundSizeState();
}

class _ScaleBackgroundSizeState extends State<_ScaleBackgroundSize>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: widget.scale,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_controller.isCompleted) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
      },
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Container(
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                image: DecorationImage(
                  image: widget.backgroundImage,
                  fit: BoxFit.cover,
                  alignment: widget.alignment,
                ),
              ),
              child: widget.child,
            ),
          );
        },
      ),
    );
  }
}

/// 懒加载背景尺寸组件
class _LazyBackgroundSize extends StatefulWidget {
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final BoxFit fit;
  final Alignment alignment;
  final Widget? placeholder;
  final Widget child;

  const _LazyBackgroundSize({
    this.backgroundColor,
    required this.backgroundImage,
    required this.fit,
    required this.alignment,
    this.placeholder,
    required this.child,
  });

  @override
  State<_LazyBackgroundSize> createState() => _LazyBackgroundSizeState();
}

class _LazyBackgroundSizeState extends State<_LazyBackgroundSize> {
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  void _loadImage() {
    final imageStream = widget.backgroundImage.resolve(ImageConfiguration.empty);
    imageStream.addListener(
      ImageStreamListener((info, synchronousCall) {
        if (mounted) {
          setState(() {
            _isLoaded = true;
          });
        }
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!_isLoaded && widget.placeholder != null) {
      return widget.placeholder!;
    }
    
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        image: _isLoaded 
          ? DecorationImage(
              image: widget.backgroundImage,
              fit: widget.fit,
              alignment: widget.alignment,
            )
          : null,
      ),
      child: widget.child,
    );
  }
}

/// 缓存背景尺寸组件
class _CachedBackgroundSize extends StatefulWidget {
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final BoxFit fit;
  final Alignment alignment;
  final Duration cacheDuration;
  final Widget child;

  const _CachedBackgroundSize({
    this.backgroundColor,
    required this.backgroundImage,
    required this.fit,
    required this.alignment,
    required this.cacheDuration,
    required this.child,
  });

  @override
  State<_CachedBackgroundSize> createState() => _CachedBackgroundSizeState();
}

class _CachedBackgroundSizeState extends State<_CachedBackgroundSize> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        image: DecorationImage(
          image: widget.backgroundImage,
          fit: widget.fit,
          alignment: widget.alignment,
        ),
      ),
      child: widget.child,
    );
  }
}

/// 背景尺寸工具类
class BackgroundSize {
  /// 创建自动尺寸背景
  static Widget auto({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => child.bgAuto(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
  );
  
  /// 创建覆盖背景
  static Widget cover({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => child.bgCover(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
  );
  
  /// 创建包含背景
  static Widget contain({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => child.bgContain(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
  );
  
  /// 创建填充背景
  static Widget fill({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => child.bgFill(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
  );
  
  /// 创建响应式尺寸背景
  static Widget responsive({
    required Widget child,
    BoxFit mobile = BoxFit.cover,
    BoxFit tablet = BoxFit.contain,
    BoxFit desktop = BoxFit.cover,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => child.bgResponsiveSize(
    mobile: mobile,
    tablet: tablet,
    desktop: desktop,
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
  );
}



