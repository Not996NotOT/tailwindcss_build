import 'package:flutter/material.dart';

/// Tailwind CSS Background Repeat utilities for Flutter
/// Utilities for controlling the repetition of an element's background image.
extension BackgroundRepeatExt on Widget {
  
  // === Basic background repeat utilities ===
  
  /// bg-repeat -> background-repeat: repeat;
  /// 背景图片水平和垂直方向都重复
  Widget bgRepeat({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    BoxFit fit = BoxFit.none,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        repeat: ImageRepeat.repeat,
        alignment: alignment,
        fit: fit,
      ),
    ),
    child: this,
  );
  
  /// bg-no-repeat -> background-repeat: no-repeat;
  /// 背景图片不重复
  Widget bgNoRepeat({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        repeat: ImageRepeat.noRepeat,
        alignment: alignment,
        fit: fit,
      ),
    ),
    child: this,
  );
  
  /// bg-repeat-x -> background-repeat: repeat-x;
  /// 背景图片只在水平方向重复
  Widget bgRepeatX({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    BoxFit fit = BoxFit.none,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        repeat: ImageRepeat.repeatX,
        alignment: alignment,
        fit: fit,
      ),
    ),
    child: this,
  );
  
  /// bg-repeat-y -> background-repeat: repeat-y;
  /// 背景图片只在垂直方向重复
  Widget bgRepeatY({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    BoxFit fit = BoxFit.none,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        repeat: ImageRepeat.repeatY,
        alignment: alignment,
        fit: fit,
      ),
    ),
    child: this,
  );

  // === Custom background repeat utilities ===
  
  /// 自定义背景重复模式
  Widget bgCustomRepeat(
    ImageRepeat repeat, {
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    BoxFit fit = BoxFit.none,
    ColorFilter? colorFilter,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        repeat: repeat,
        alignment: alignment,
        fit: fit,
        colorFilter: colorFilter,
      ),
    ),
    child: this,
  );
  
  /// 平铺背景图案
  Widget bgTile({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    double scale = 1.0,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        repeat: ImageRepeat.repeat,
        alignment: alignment,
        fit: BoxFit.none,
        scale: scale,
      ),
    ),
    child: this,
  );
  
  /// 纹理背景
  Widget bgTexture({
    Color? backgroundColor,
    required ImageProvider textureImage,
    BlendMode blendMode = BlendMode.multiply,
    double opacity = 0.5,
    Alignment alignment = Alignment.center,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: textureImage,
        repeat: ImageRepeat.repeat,
        alignment: alignment,
        fit: BoxFit.none,
        colorFilter: ColorFilter.mode(
          Colors.white.withOpacity(opacity),
          blendMode,
        ),
      ),
    ),
    child: this,
  );

  // === Multiple background repeat patterns ===
  
  /// 多层背景重复
  Widget bgMultipleRepeat({
    required List<BackgroundRepeatLayer> layers,
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
              repeat: layers[0].repeat,
              alignment: layers[0].alignment,
              fit: layers[0].fit,
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
                  repeat: layer.repeat,
                  alignment: layer.alignment,
                  fit: layer.fit,
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
  
  /// 条件背景重复
  Widget bgConditionalRepeat(
    bool condition,
    ImageRepeat trueRepeat,
    ImageRepeat falseRepeat, {
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    BoxFit fit = BoxFit.none,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        repeat: condition ? trueRepeat : falseRepeat,
        alignment: alignment,
        fit: fit,
      ),
    ),
    child: this,
  );
  
  /// 响应式背景重复
  Widget bgResponsiveRepeat({
    ImageRepeat mobile = ImageRepeat.noRepeat,
    ImageRepeat tablet = ImageRepeat.repeatX,
    ImageRepeat desktop = ImageRepeat.repeat,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => LayoutBuilder(
    builder: (context, constraints) {
      ImageRepeat repeat;
      BoxFit fit;
      
      if (constraints.maxWidth < 768) {
        repeat = mobile;
        fit = mobile == ImageRepeat.noRepeat ? BoxFit.cover : BoxFit.none;
      } else if (constraints.maxWidth < 1024) {
        repeat = tablet;
        fit = tablet == ImageRepeat.noRepeat ? BoxFit.cover : BoxFit.none;
      } else {
        repeat = desktop;
        fit = desktop == ImageRepeat.noRepeat ? BoxFit.cover : BoxFit.none;
      }
      
      return Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          image: DecorationImage(
            image: backgroundImage,
            repeat: repeat,
            alignment: alignment,
            fit: fit,
          ),
        ),
        child: this,
      );
    },
  );

  // === Advanced background repeat utilities ===
  
  /// 动画背景重复
  Widget bgAnimatedRepeat({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Duration duration = const Duration(seconds: 10),
    Alignment alignment = Alignment.center,
  }) => _AnimatedBackgroundRepeat(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    duration: duration,
    alignment: alignment,
    child: this,
  );
  
  /// 无缝循环背景
  Widget bgSeamlessLoop({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Axis direction = Axis.horizontal,
    Duration duration = const Duration(seconds: 20),
  }) => _SeamlessLoopBackground(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    direction: direction,
    duration: duration,
    child: this,
  );
  
  /// 视差重复背景
  Widget bgParallaxRepeat({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    double parallaxFactor = 0.5,
    ImageRepeat repeat = ImageRepeat.repeatX,
  }) => _ParallaxRepeatBackground(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    parallaxFactor: parallaxFactor,
    repeat: repeat,
    child: this,
  );

  // === Pattern and texture utilities ===
  
  /// 棋盘图案背景
  Widget bgCheckerboard({
    Color color1 = Colors.white,
    Color color2 = Colors.black,
    double size = 20.0,
  }) => _CheckerboardBackground(
    color1: color1,
    color2: color2,
    size: size,
    child: this,
  );
  
  /// 条纹图案背景
  Widget bgStripes({
    Color color1 = Colors.white,
    Color color2 = Colors.grey,
    double stripeWidth = 10.0,
    Axis direction = Axis.horizontal,
  }) => _StripesBackground(
    color1: color1,
    color2: color2,
    stripeWidth: stripeWidth,
    direction: direction,
    child: this,
  );
  
  /// 网格图案背景
  Widget bgGrid({
    Color backgroundColor = Colors.white,
    Color gridColor = Colors.grey,
    double gridSize = 20.0,
    double lineWidth = 1.0,
  }) => _GridBackground(
    backgroundColor: backgroundColor,
    gridColor: gridColor,
    gridSize: gridSize,
    lineWidth: lineWidth,
    child: this,
  );
  
  /// 点阵图案背景
  Widget bgDots({
    Color backgroundColor = Colors.white,
    Color dotColor = Colors.grey,
    double dotSize = 2.0,
    double spacing = 20.0,
  }) => _DotsBackground(
    backgroundColor: backgroundColor,
    dotColor: dotColor,
    dotSize: dotSize,
    spacing: spacing,
    child: this,
  );
}

/// 背景重复层配置类
class BackgroundRepeatLayer {
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final ImageRepeat repeat;
  final Alignment alignment;
  final BoxFit fit;
  final ColorFilter? colorFilter;

  const BackgroundRepeatLayer({
    this.backgroundColor,
    required this.backgroundImage,
    required this.repeat,
    this.alignment = Alignment.center,
    this.fit = BoxFit.none,
    this.colorFilter,
  });
}

/// 动画背景重复组件
class _AnimatedBackgroundRepeat extends StatefulWidget {
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final Duration duration;
  final Alignment alignment;
  final Widget child;

  const _AnimatedBackgroundRepeat({
    this.backgroundColor,
    required this.backgroundImage,
    required this.duration,
    required this.alignment,
    required this.child,
  });

  @override
  State<_AnimatedBackgroundRepeat> createState() => _AnimatedBackgroundRepeatState();
}

class _AnimatedBackgroundRepeatState extends State<_AnimatedBackgroundRepeat>
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
    ).animate(_controller);
    
    _controller.repeat();
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
        return Transform.translate(
          offset: Offset(_animation.value * 100, 0),
          child: Container(
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              image: DecorationImage(
                image: widget.backgroundImage,
                repeat: ImageRepeat.repeatX,
                alignment: widget.alignment,
                fit: BoxFit.none,
              ),
            ),
            child: widget.child,
          ),
        );
      },
    );
  }
}

/// 无缝循环背景组件
class _SeamlessLoopBackground extends StatefulWidget {
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final Axis direction;
  final Duration duration;
  final Widget child;

  const _SeamlessLoopBackground({
    this.backgroundColor,
    required this.backgroundImage,
    required this.direction,
    required this.duration,
    required this.child,
  });

  @override
  State<_SeamlessLoopBackground> createState() => _SeamlessLoopBackgroundState();
}

class _SeamlessLoopBackgroundState extends State<_SeamlessLoopBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: widget.direction == Axis.horizontal 
        ? const Offset(1.0, 0.0)
        : const Offset(0.0, 1.0),
    ).animate(_controller);
    
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _offsetAnimation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            image: DecorationImage(
              image: widget.backgroundImage,
              repeat: widget.direction == Axis.horizontal 
                ? ImageRepeat.repeatX 
                : ImageRepeat.repeatY,
              fit: BoxFit.none,
            ),
          ),
          child: widget.child,
        );
      },
    );
  }
}

/// 视差重复背景组件
class _ParallaxRepeatBackground extends StatefulWidget {
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final double parallaxFactor;
  final ImageRepeat repeat;
  final Widget child;

  const _ParallaxRepeatBackground({
    this.backgroundColor,
    required this.backgroundImage,
    required this.parallaxFactor,
    required this.repeat,
    required this.child,
  });

  @override
  State<_ParallaxRepeatBackground> createState() => _ParallaxRepeatBackgroundState();
}

class _ParallaxRepeatBackgroundState extends State<_ParallaxRepeatBackground> {
  late ScrollController _scrollController;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Transform.translate(
        offset: Offset(0, _scrollOffset * widget.parallaxFactor),
        child: Container(
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            image: DecorationImage(
              image: widget.backgroundImage,
              repeat: widget.repeat,
              fit: BoxFit.none,
            ),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}

/// 棋盘背景组件
class _CheckerboardBackground extends StatelessWidget {
  final Color color1;
  final Color color2;
  final double size;
  final Widget child;

  const _CheckerboardBackground({
    required this.color1,
    required this.color2,
    required this.size,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CheckerboardPainter(color1: color1, color2: color2, size: size),
      child: child,
    );
  }
}

/// 条纹背景组件
class _StripesBackground extends StatelessWidget {
  final Color color1;
  final Color color2;
  final double stripeWidth;
  final Axis direction;
  final Widget child;

  const _StripesBackground({
    required this.color1,
    required this.color2,
    required this.stripeWidth,
    required this.direction,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _StripesPainter(
        color1: color1,
        color2: color2,
        stripeWidth: stripeWidth,
        direction: direction,
      ),
      child: child,
    );
  }
}

/// 网格背景组件
class _GridBackground extends StatelessWidget {
  final Color backgroundColor;
  final Color gridColor;
  final double gridSize;
  final double lineWidth;
  final Widget child;

  const _GridBackground({
    required this.backgroundColor,
    required this.gridColor,
    required this.gridSize,
    required this.lineWidth,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _GridPainter(
        backgroundColor: backgroundColor,
        gridColor: gridColor,
        gridSize: gridSize,
        lineWidth: lineWidth,
      ),
      child: child,
    );
  }
}

/// 点阵背景组件
class _DotsBackground extends StatelessWidget {
  final Color backgroundColor;
  final Color dotColor;
  final double dotSize;
  final double spacing;
  final Widget child;

  const _DotsBackground({
    required this.backgroundColor,
    required this.dotColor,
    required this.dotSize,
    required this.spacing,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DotsPainter(
        backgroundColor: backgroundColor,
        dotColor: dotColor,
        dotSize: dotSize,
        spacing: spacing,
      ),
      child: child,
    );
  }
}

// Custom painters for pattern backgrounds
class _CheckerboardPainter extends CustomPainter {
  final Color color1;
  final Color color2;
  final double size;

  _CheckerboardPainter({
    required this.color1,
    required this.color2,
    required this.size,
  });

  @override
  void paint(Canvas canvas, Size canvasSize) {
    final paint1 = Paint()..color = color1;
    final paint2 = Paint()..color = color2;
    
    for (int x = 0; x < (canvasSize.width / size).ceil(); x++) {
      for (int y = 0; y < (canvasSize.height / size).ceil(); y++) {
        final paint = (x + y) % 2 == 0 ? paint1 : paint2;
        final rect = Rect.fromLTWH(x * size, y * size, size, size);
        canvas.drawRect(rect, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _StripesPainter extends CustomPainter {
  final Color color1;
  final Color color2;
  final double stripeWidth;
  final Axis direction;

  _StripesPainter({
    required this.color1,
    required this.color2,
    required this.stripeWidth,
    required this.direction,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()..color = color1;
    final paint2 = Paint()..color = color2;
    
    if (direction == Axis.horizontal) {
      for (int i = 0; i < (size.height / stripeWidth).ceil(); i++) {
        final paint = i % 2 == 0 ? paint1 : paint2;
        final rect = Rect.fromLTWH(0, i * stripeWidth, size.width, stripeWidth);
        canvas.drawRect(rect, paint);
      }
    } else {
      for (int i = 0; i < (size.width / stripeWidth).ceil(); i++) {
        final paint = i % 2 == 0 ? paint1 : paint2;
        final rect = Rect.fromLTWH(i * stripeWidth, 0, stripeWidth, size.height);
        canvas.drawRect(rect, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _GridPainter extends CustomPainter {
  final Color backgroundColor;
  final Color gridColor;
  final double gridSize;
  final double lineWidth;

  _GridPainter({
    required this.backgroundColor,
    required this.gridColor,
    required this.gridSize,
    required this.lineWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint()..color = backgroundColor;
    final gridPaint = Paint()
      ..color = gridColor
      ..strokeWidth = lineWidth;
    
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), backgroundPaint);
    
    // Vertical lines
    for (double x = 0; x <= size.width; x += gridSize) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), gridPaint);
    }
    
    // Horizontal lines
    for (double y = 0; y <= size.height; y += gridSize) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), gridPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _DotsPainter extends CustomPainter {
  final Color backgroundColor;
  final Color dotColor;
  final double dotSize;
  final double spacing;

  _DotsPainter({
    required this.backgroundColor,
    required this.dotColor,
    required this.dotSize,
    required this.spacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint()..color = backgroundColor;
    final dotPaint = Paint()..color = dotColor;
    
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), backgroundPaint);
    
    for (double x = spacing / 2; x < size.width; x += spacing) {
      for (double y = spacing / 2; y < size.height; y += spacing) {
        canvas.drawCircle(Offset(x, y), dotSize / 2, dotPaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// 背景重复工具类
class BackgroundRepeat {
  /// 创建重复背景
  static Widget repeat({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => child.bgRepeat(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
  );
  
  /// 创建不重复背景
  static Widget noRepeat({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => child.bgNoRepeat(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
  );
  
  /// 创建水平重复背景
  static Widget repeatX({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => child.bgRepeatX(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
  );
  
  /// 创建垂直重复背景
  static Widget repeatY({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
  }) => child.bgRepeatY(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
  );
  
  /// 创建平铺背景
  static Widget tile({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    Alignment alignment = Alignment.center,
    double scale = 1.0,
  }) => child.bgTile(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    alignment: alignment,
    scale: scale,
  );
  
  /// 创建响应式重复背景
  static Widget responsive({
    required Widget child,
    ImageRepeat mobile = ImageRepeat.noRepeat,
    ImageRepeat tablet = ImageRepeat.repeatX,
    ImageRepeat desktop = ImageRepeat.repeat,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
  }) => child.bgResponsiveRepeat(
    mobile: mobile,
    tablet: tablet,
    desktop: desktop,
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
  );
}
