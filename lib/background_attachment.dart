import 'package:flutter/material.dart';

/// Tailwind CSS Background Attachment utilities for Flutter
/// Utilities for controlling how a background image behaves when scrolling.
extension BackgroundAttachmentExt on Widget {
  
  // === Background attachment utilities ===
  
  /// bg-fixed -> background-attachment: fixed;
  /// 背景图片相对于视口固定
  Widget bgFixed({
    required ImageProvider image,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: fit,
          alignment: alignment,
        ),
      ),
      child: this,
    );
  }
  
  /// bg-local -> background-attachment: local;
  /// 背景图片随容器和视口一起滚动
  Widget bgLocal({
    required ImageProvider image,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: fit,
          alignment: alignment,
        ),
      ),
      child: this,
    );
  }
  
  /// bg-scroll -> background-attachment: scroll;
  /// 背景图片随视口滚动，但不随容器滚动（默认行为）
  Widget bgScroll({
    required ImageProvider image,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: fit,
          alignment: alignment,
        ),
      ),
      child: this,
    );
  }

  // === Advanced background attachment utilities ===
  
  /// 固定背景与视口（真正的fixed效果）
  Widget bgFixedViewport({
    required ImageProvider image,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: image,
                fit: fit,
                alignment: alignment,
              ),
            ),
          ),
        ),
        this,
      ],
    );
  }
  
  /// 视差滚动效果
  Widget bgParallax({
    required ImageProvider image,
    double parallaxFactor = 0.5,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return _ParallaxBackground(
      image: image,
      parallaxFactor: parallaxFactor,
      fit: fit,
      alignment: alignment,
      child: this,
    );
  }
  
  /// 可滚动背景容器
  Widget bgScrollable({
    required ImageProvider image,
    ScrollController? controller,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
    Axis scrollDirection = Axis.vertical,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: fit,
          alignment: alignment,
        ),
      ),
      child: SingleChildScrollView(
        controller: controller,
        scrollDirection: scrollDirection,
        child: this,
      ),
    );
  }

  // === Background attachment with color overlay ===
  
  /// 固定背景带颜色遮罩
  Widget bgFixedWithOverlay({
    required ImageProvider image,
    required Color overlayColor,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: fit,
          alignment: alignment,
          colorFilter: ColorFilter.mode(
            overlayColor,
            BlendMode.overlay,
          ),
        ),
      ),
      child: this,
    );
  }
  
  /// 渐变遮罩的固定背景
  Widget bgFixedWithGradient({
    required ImageProvider image,
    required Gradient gradient,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: fit,
          alignment: alignment,
        ),
      ),
      foregroundDecoration: BoxDecoration(
        gradient: gradient,
      ),
      child: this,
    );
  }

  // === Multiple background layers ===
  
  /// 多层背景
  Widget bgMultiLayer({
    required List<BackgroundLayer> layers,
  }) {
    return Stack(
      children: [
        ...layers.map((layer) => Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: layer.image,
                fit: layer.fit,
                alignment: layer.alignment,
                colorFilter: layer.colorFilter,
              ),
            ),
          ),
        )),
        this,
      ],
    );
  }

  // === Conditional background attachment ===
  
  /// 根据条件应用不同的背景附件模式
  Widget bgConditionalAttachment({
    required bool isFixed,
    required ImageProvider image,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return isFixed 
      ? bgFixed(image: image, fit: fit, alignment: alignment)
      : bgScroll(image: image, fit: fit, alignment: alignment);
  }
  
  /// 响应式背景附件
  Widget bgResponsiveAttachment({
    required ImageProvider image,
    BackgroundAttachmentType mobile = BackgroundAttachmentType.scroll,
    BackgroundAttachmentType tablet = BackgroundAttachmentType.fixed,
    BackgroundAttachmentType desktop = BackgroundAttachmentType.fixed,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        BackgroundAttachmentType attachmentType;
        
        if (constraints.maxWidth < 768) {
          attachmentType = mobile;
        } else if (constraints.maxWidth < 1024) {
          attachmentType = tablet;
        } else {
          attachmentType = desktop;
        }
        
        switch (attachmentType) {
          case BackgroundAttachmentType.fixed:
            return bgFixed(image: image, fit: fit, alignment: alignment);
          case BackgroundAttachmentType.local:
            return bgLocal(image: image, fit: fit, alignment: alignment);
          case BackgroundAttachmentType.scroll:
            return bgScroll(image: image, fit: fit, alignment: alignment);
        }
      },
    );
  }

  // === Background pattern utilities ===
  
  /// 重复背景图案
  Widget bgPattern({
    required ImageProvider image,
    BackgroundAttachmentType attachment = BackgroundAttachmentType.scroll,
    ImageRepeat repeat = ImageRepeat.repeat,
  }) {
    Widget decoratedContainer = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          repeat: repeat,
        ),
      ),
      child: this,
    );
    
    switch (attachment) {
      case BackgroundAttachmentType.fixed:
        return decoratedContainer.bgFixed(image: image);
      case BackgroundAttachmentType.local:
        return decoratedContainer.bgLocal(image: image);
      case BackgroundAttachmentType.scroll:
        return decoratedContainer;
    }
  }
}

/// 背景附件类型枚举
enum BackgroundAttachmentType {
  /// 固定模式
  fixed,
  /// 本地模式
  local,
  /// 滚动模式
  scroll,
}

/// 背景层配置类
class BackgroundLayer {
  final ImageProvider image;
  final BoxFit fit;
  final Alignment alignment;
  final ColorFilter? colorFilter;
  final BackgroundAttachmentType attachment;

  const BackgroundLayer({
    required this.image,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.colorFilter,
    this.attachment = BackgroundAttachmentType.scroll,
  });
}

/// 视差滚动背景组件
class _ParallaxBackground extends StatefulWidget {
  final ImageProvider image;
  final double parallaxFactor;
  final BoxFit fit;
  final Alignment alignment;
  final Widget child;

  const _ParallaxBackground({
    required this.image,
    required this.parallaxFactor,
    required this.fit,
    required this.alignment,
    required this.child,
  });

  @override
  State<_ParallaxBackground> createState() => _ParallaxBackgroundState();
}

class _ParallaxBackgroundState extends State<_ParallaxBackground> {
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
    return Stack(
      children: [
        Positioned.fill(
          child: Transform.translate(
            offset: Offset(0, _scrollOffset * widget.parallaxFactor),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: widget.image,
                  fit: widget.fit,
                  alignment: widget.alignment,
                ),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          controller: _scrollController,
          child: widget.child,
        ),
      ],
    );
  }
}

/// 背景附件工具类
class BackgroundAttachment {
  /// 创建固定背景
  static Widget fixed({
    required Widget child,
    required ImageProvider image,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return child.bgFixed(image: image, fit: fit, alignment: alignment);
  }
  
  /// 创建本地背景
  static Widget local({
    required Widget child,
    required ImageProvider image,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return child.bgLocal(image: image, fit: fit, alignment: alignment);
  }
  
  /// 创建滚动背景
  static Widget scroll({
    required Widget child,
    required ImageProvider image,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return child.bgScroll(image: image, fit: fit, alignment: alignment);
  }
  
  /// 创建视差背景
  static Widget parallax({
    required Widget child,
    required ImageProvider image,
    double parallaxFactor = 0.5,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return child.bgParallax(
      image: image,
      parallaxFactor: parallaxFactor,
      fit: fit,
      alignment: alignment,
    );
  }
  
  /// 创建多层背景
  static Widget multiLayer({
    required Widget child,
    required List<BackgroundLayer> layers,
  }) {
    return child.bgMultiLayer(layers: layers);
  }
  
  /// 创建响应式背景
  static Widget responsive({
    required Widget child,
    required ImageProvider image,
    BackgroundAttachmentType mobile = BackgroundAttachmentType.scroll,
    BackgroundAttachmentType tablet = BackgroundAttachmentType.fixed,
    BackgroundAttachmentType desktop = BackgroundAttachmentType.fixed,
    BoxFit fit = BoxFit.cover,
    Alignment alignment = Alignment.center,
  }) {
    return child.bgResponsiveAttachment(
      image: image,
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
      fit: fit,
      alignment: alignment,
    );
  }
}


