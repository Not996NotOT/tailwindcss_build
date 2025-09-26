import 'package:flutter/material.dart';

/// Tailwind CSS Background Position utilities for Flutter
/// Utilities for controlling the position of an element's background image.
extension BackgroundPositionExt on Widget {
  
  // === Basic background position utilities ===
  
  /// bg-bottom -> background-position: bottom;
  Widget bgBottom({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: Alignment.bottomCenter,
      ),
    ),
    child: this,
  );
  
  /// bg-center -> background-position: center;
  Widget bgCenter({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: Alignment.center,
      ),
    ),
    child: this,
  );
  
  /// bg-left -> background-position: left;
  Widget bgLeft({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: Alignment.centerLeft,
      ),
    ),
    child: this,
  );
  
  /// bg-left-bottom -> background-position: left bottom;
  Widget bgLeftBottom({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: Alignment.bottomLeft,
      ),
    ),
    child: this,
  );
  
  /// bg-left-top -> background-position: left top;
  Widget bgLeftTop({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: Alignment.topLeft,
      ),
    ),
    child: this,
  );
  
  /// bg-right -> background-position: right;
  Widget bgRight({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: Alignment.centerRight,
      ),
    ),
    child: this,
  );
  
  /// bg-right-bottom -> background-position: right bottom;
  Widget bgRightBottom({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: Alignment.bottomRight,
      ),
    ),
    child: this,
  );
  
  /// bg-right-top -> background-position: right top;
  Widget bgRightTop({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: Alignment.topRight,
      ),
    ),
    child: this,
  );
  
  /// bg-top -> background-position: top;
  Widget bgTop({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: Alignment.topCenter,
      ),
    ),
    child: this,
  );

  // === Custom background position utilities ===
  
  /// 自定义背景位置 - bg-[<value>]
  Widget bgPosition(
    Alignment alignment, {
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
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
  
  /// 精确坐标位置
  Widget bgPositionXY(
    double x,
    double y, {
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
    ImageRepeat repeat = ImageRepeat.noRepeat,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: Alignment(x, y),
        repeat: repeat,
      ),
    ),
    child: this,
  );
  
  /// 百分比位置
  Widget bgPositionPercent(
    double xPercent,
    double yPercent, {
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: Alignment(
          (xPercent - 50) / 50, // 转换为-1到1的范围
          (yPercent - 50) / 50,
        ),
      ),
    ),
    child: this,
  );

  // === Multiple background positions ===
  
  /// 多背景位置
  Widget bgMultiplePositions({
    required List<BackgroundPositionLayer> layers,
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
  
  /// 动画背景位置
  Widget bgPositionAnimated({
    required Alignment fromAlignment,
    required Alignment toAlignment,
    required Duration duration,
    Curve curve = Curves.easeInOut,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => _AnimatedBackgroundPosition(
    fromAlignment: fromAlignment,
    toAlignment: toAlignment,
    duration: duration,
    curve: curve,
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
    child: this,
  );

  // === Responsive background positions ===
  
  /// 响应式背景位置
  Widget bgPositionResponsive({
    Alignment mobile = Alignment.center,
    Alignment tablet = Alignment.center,
    Alignment desktop = Alignment.center,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => LayoutBuilder(
    builder: (context, constraints) {
      Alignment alignment;
      
      if (constraints.maxWidth < 768) {
        alignment = mobile;
      } else if (constraints.maxWidth < 1024) {
        alignment = tablet;
      } else {
        alignment = desktop;
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
  
  /// 条件背景位置
  Widget bgPositionConditional(
    bool condition,
    Alignment trueAlignment,
    Alignment falseAlignment, {
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: backgroundImage,
        fit: fit,
        alignment: condition ? trueAlignment : falseAlignment,
      ),
    ),
    child: this,
  );

  // === Interactive background positions ===
  
  /// 跟随鼠标的背景位置
  Widget bgPositionFollowMouse({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
    double sensitivity = 0.1,
  }) => _MouseFollowBackgroundPosition(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
    sensitivity: sensitivity,
    child: this,
  );
  
  /// 视差滚动背景位置
  Widget bgPositionParallax({
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
    double parallaxFactor = 0.5,
    Axis scrollDirection = Axis.vertical,
  }) => _ParallaxBackgroundPosition(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
    parallaxFactor: parallaxFactor,
    scrollDirection: scrollDirection,
    child: this,
  );
}

/// 背景位置层配置类
class BackgroundPositionLayer {
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final Alignment alignment;
  final BoxFit fit;
  final ImageRepeat repeat;
  final ColorFilter? colorFilter;

  const BackgroundPositionLayer({
    this.backgroundColor,
    required this.backgroundImage,
    required this.alignment,
    this.fit = BoxFit.cover,
    this.repeat = ImageRepeat.noRepeat,
    this.colorFilter,
  });
}

/// 动画背景位置组件
class _AnimatedBackgroundPosition extends StatefulWidget {
  final Alignment fromAlignment;
  final Alignment toAlignment;
  final Duration duration;
  final Curve curve;
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final BoxFit fit;
  final Widget child;

  const _AnimatedBackgroundPosition({
    required this.fromAlignment,
    required this.toAlignment,
    required this.duration,
    required this.curve,
    this.backgroundColor,
    required this.backgroundImage,
    required this.fit,
    required this.child,
  });

  @override
  State<_AnimatedBackgroundPosition> createState() => _AnimatedBackgroundPositionState();
}

class _AnimatedBackgroundPositionState extends State<_AnimatedBackgroundPosition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _alignmentAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    
    _alignmentAnimation = Tween<Alignment>(
      begin: widget.fromAlignment,
      end: widget.toAlignment,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: widget.curve,
    ));
    
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _alignmentAnimation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            image: DecorationImage(
              image: widget.backgroundImage,
              fit: widget.fit,
              alignment: _alignmentAnimation.value,
            ),
          ),
          child: widget.child,
        );
      },
    );
  }
}

/// 跟随鼠标的背景位置组件
class _MouseFollowBackgroundPosition extends StatefulWidget {
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final BoxFit fit;
  final double sensitivity;
  final Widget child;

  const _MouseFollowBackgroundPosition({
    this.backgroundColor,
    required this.backgroundImage,
    required this.fit,
    required this.sensitivity,
    required this.child,
  });

  @override
  State<_MouseFollowBackgroundPosition> createState() => _MouseFollowBackgroundPositionState();
}

class _MouseFollowBackgroundPositionState extends State<_MouseFollowBackgroundPosition> {
  Alignment _alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        final RenderBox box = context.findRenderObject() as RenderBox;
        final localPosition = box.globalToLocal(event.position);
        final size = box.size;
        
        setState(() {
          _alignment = Alignment(
            ((localPosition.dx / size.width) - 0.5) * 2 * widget.sensitivity,
            ((localPosition.dy / size.height) - 0.5) * 2 * widget.sensitivity,
          );
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          image: DecorationImage(
            image: widget.backgroundImage,
            fit: widget.fit,
            alignment: _alignment,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}

/// 视差滚动背景位置组件
class _ParallaxBackgroundPosition extends StatefulWidget {
  final Color? backgroundColor;
  final ImageProvider backgroundImage;
  final BoxFit fit;
  final double parallaxFactor;
  final Axis scrollDirection;
  final Widget child;

  const _ParallaxBackgroundPosition({
    this.backgroundColor,
    required this.backgroundImage,
    required this.fit,
    required this.parallaxFactor,
    required this.scrollDirection,
    required this.child,
  });

  @override
  State<_ParallaxBackgroundPosition> createState() => _ParallaxBackgroundPositionState();
}

class _ParallaxBackgroundPositionState extends State<_ParallaxBackgroundPosition> {
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
    final parallaxOffset = _scrollOffset * widget.parallaxFactor;
    
    final alignment = widget.scrollDirection == Axis.vertical
      ? Alignment(0, parallaxOffset / 100)
      : Alignment(parallaxOffset / 100, 0);
    
    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: widget.scrollDirection,
      child: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          image: DecorationImage(
            image: widget.backgroundImage,
            fit: widget.fit,
            alignment: alignment,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}

/// 背景位置工具类
class BackgroundPosition {
  /// 创建居中背景位置
  static Widget center({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => child.bgCenter(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
  );
  
  /// 创建顶部背景位置
  static Widget top({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => child.bgTop(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
  );
  
  /// 创建底部背景位置
  static Widget bottom({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => child.bgBottom(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
  );
  
  /// 创建左侧背景位置
  static Widget left({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => child.bgLeft(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
  );
  
  /// 创建右侧背景位置
  static Widget right({
    required Widget child,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => child.bgRight(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
  );
  
  /// 创建自定义背景位置
  static Widget custom({
    required Widget child,
    required Alignment alignment,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => child.bgPosition(
    alignment,
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
  );
  
  /// 创建响应式背景位置
  static Widget responsive({
    required Widget child,
    Alignment mobile = Alignment.center,
    Alignment tablet = Alignment.center,
    Alignment desktop = Alignment.center,
    Color? backgroundColor,
    required ImageProvider backgroundImage,
    BoxFit fit = BoxFit.cover,
  }) => child.bgPositionResponsive(
    mobile: mobile,
    tablet: tablet,
    desktop: desktop,
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    fit: fit,
  );
}



