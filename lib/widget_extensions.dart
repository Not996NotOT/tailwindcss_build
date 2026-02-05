import 'package:flutter/material.dart';

/// Widget转换扩展 - 让各种组件可以转换为其他组件并支持TailwindCSS Build链式调用
/// 让Flutter开发更接近TailwindCSS的体验

/// List&lt;Widget&gt; 转换扩展
extension ListWidgetExt on List<Widget> {
  /// 转换为 Row，支持 TailwindCSS Build 链式调用
  Row asRow({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.min,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: this,
    );
  }

  /// 转换为安全的 Row，自动处理约束问题
  Widget asSafeRow({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) {
    return IntrinsicWidth(
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: MainAxisSize.min,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: this,
      ),
    );
  }

  /// 转换为弹性布局的 Row，适用于有界约束
  Row asFlexRow({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: this,
    );
  }

  /// 转换为 Column，支持 TailwindCSS Build 链式调用
  Column asColumn({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: this,
    );
  }

  /// 转换为 Wrap，支持流式布局
  Wrap asWrap({
    Axis direction = Axis.horizontal,
    WrapAlignment alignment = WrapAlignment.start,
    double spacing = 0.0,
    WrapAlignment runAlignment = WrapAlignment.start,
    double runSpacing = 0.0,
    WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
  }) {
    return Wrap(
      direction: direction,
      alignment: alignment,
      spacing: spacing,
      runAlignment: runAlignment,
      runSpacing: runSpacing,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      children: this,
    );
  }

  /// 转换为 Stack，支持重叠布局
  Stack asStackWidget({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return Stack(
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      clipBehavior: clipBehavior,
      children: this,
    );
  }

  /// 转换为 ListView，支持滚动列表
  ListView asListView({
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry? padding,
    double? itemExtent,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
  }) {
    return ListView(
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
      itemExtent: itemExtent,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      children: this,
    );
  }

  /// 转换为 SingleChildScrollView，支持滚动
  SingleChildScrollView asScrollView({
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    EdgeInsetsGeometry? padding,
    bool? primary,
    ScrollPhysics? physics,
    ScrollController? controller,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return SingleChildScrollView(
      scrollDirection: scrollDirection,
      reverse: reverse,
      padding: padding,
      primary: primary,
      physics: physics,
      controller: controller,
      child: scrollDirection == Axis.vertical 
        ? Column(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            children: this,
          )
        : Row(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            children: this,
          ),
    );
  }

  /// 转换为可滚动的 Column
  SingleChildScrollView asScrollableColumn({
    EdgeInsetsGeometry? padding,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return SingleChildScrollView(
      padding: padding,
      child: Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: this,
      ),
    );
  }
}

/// Display 模式扩展 - inline-flex, inline-grid, inline-block
extension WidgetDisplayExtensions on Widget {
  /// inline-flex - 内联弹性布局
  /// ⚠️ 部分支持：通过 IntrinsicWidth/IntrinsicHeight 包装 Row/Column 实现
  /// 在 Flutter 中，inline-flex 通过 IntrinsicWidth/IntrinsicHeight 限制尺寸来实现内联效果
  Widget inlineFlex({
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    if (direction == Axis.horizontal) {
      return IntrinsicWidth(
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          mainAxisSize: MainAxisSize.min,
          children: [this],
        ),
      );
    } else {
      return IntrinsicHeight(
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          mainAxisSize: MainAxisSize.min,
          children: [this],
        ),
      );
    }
  }
  
  /// inline-grid - 内联网格布局
  /// ⚠️ 部分支持：通过 IntrinsicWidth/IntrinsicHeight 包装 Grid 实现
  /// 注意：inline-grid 在 Flutter 中通过 IntrinsicWidth 限制尺寸来实现内联效果
  Widget inlineGrid({
    int crossAxisCount = 2,
    double mainAxisSpacing = 0.0,
    double crossAxisSpacing = 0.0,
  }) {
    // 使用 IntrinsicWidth 包装 GridView 以实现内联效果
    return IntrinsicWidth(
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        children: [this],
      ),
    );
  }
  
  /// inline-block - 内联块布局
  /// ⚠️ 部分支持：通过 IntrinsicWidth/IntrinsicHeight 包装 Container 实现
  Widget inlineBlock() {
    return IntrinsicWidth(
      child: Container(
        child: this,
      ),
    );
  }
}

/// Widget 转换扩展
extension WidgetConversionExt on Widget {
  /// 转换为 Container，最基础的容器转换
  /// @deprecated 使用新的建造者模式 asContainer() 替代
  /// 旧版本的 asContainer 方法，已弃用
  @Deprecated('Use the new builder pattern asContainer() instead. This will be removed in a future version.')
  Container asLegacyContainer({
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    Color? color,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Clip clipBehavior = Clip.none,
  }) {
    return Container(
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// 转换为 Center，居中布局
  Center asCenter({
    double? widthFactor,
    double? heightFactor,
  }) {
    return Center(
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  /// 转换为 Align，对齐布局
  Align asAlign({
    AlignmentGeometry alignment = Alignment.center,
    double? widthFactor,
    double? heightFactor,
  }) {
    return Align(
      alignment: alignment,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  /// 转换为 Padding，内边距
  Padding asPadding(EdgeInsetsGeometry padding) {
    return Padding(
      padding: padding,
      child: this,
    );
  }

  /// 转换为 SizedBox，固定尺寸盒子
  SizedBox asSizedBox({
    double? width,
    double? height,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: this,
    );
  }

  /// 转换为 Expanded，Flex 扩展
  Expanded asExpanded({
    int flex = 1,
  }) {
    return Expanded(
      flex: flex,
      child: this,
    );
  }

  /// 转换为 Flexible，Flex 弹性
  Flexible asFlexible({
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) {
    return Flexible(
      flex: flex,
      fit: fit,
      child: this,
    );
  }

  /// 转换为 Positioned，Stack 定位
  Positioned asPositioned({
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
  }) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      child: this,
    );
  }

  /// 转换为 ClipRRect，圆角裁剪
  ClipRRect asClipRRect({
    BorderRadius? borderRadius,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// 转换为 GestureDetector，手势检测
  GestureDetector asGestureDetector({
    GestureTapCallback? onTap,
    GestureTapCallback? onDoubleTap,
    GestureLongPressCallback? onLongPress,
    void Function(DragUpdateDetails)? onPanUpdate,
    HitTestBehavior? behavior,
  }) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onPanUpdate: onPanUpdate,
      behavior: behavior,
      child: this,
    );
  }

  /// 转换为 InkWell，墨水井效果
  InkWell asInkWell({
    GestureTapCallback? onTap,
    GestureTapCallback? onDoubleTap,
    GestureLongPressCallback? onLongPress,
    Color? splashColor,
    Color? highlightColor,
    BorderRadius? borderRadius,
  }) {
    return InkWell(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      splashColor: splashColor,
      highlightColor: highlightColor,
      borderRadius: borderRadius,
      child: this,
    );
  }

  /// 转换为 Card，卡片布局
  Card asCard({
    Color? color,
    double? elevation,
    ShapeBorder? shape,
    bool borderOnForeground = true,
    EdgeInsetsGeometry? margin,
    Clip? clipBehavior,
  }) {
    return Card(
      color: color,
      elevation: elevation,
      shape: shape,
      borderOnForeground: borderOnForeground,
      margin: margin,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// 转换为 Hero，英雄动画
  Hero asHero({
    required Object tag,
    CreateRectTween? createRectTween,
    HeroFlightShuttleBuilder? flightShuttleBuilder,
    HeroPlaceholderBuilder? placeholderBuilder,
    bool transitionOnUserGestures = false,
  }) {
    return Hero(
      tag: tag,
      createRectTween: createRectTween,
      flightShuttleBuilder: flightShuttleBuilder,
      placeholderBuilder: placeholderBuilder,
      transitionOnUserGestures: transitionOnUserGestures,
      child: this,
    );
  }

  /// 转换为 ScrollView，更简洁的调用
  /// 注意：如果需要链式调用 overflow 方法，请使用 ScrollBuilder.asScrollView()
  SingleChildScrollView asScrollable({
    Axis scrollDirection = Axis.vertical,
    EdgeInsetsGeometry? padding,
  }) {
    return SingleChildScrollView(
      scrollDirection: scrollDirection,
      padding: padding,
      child: this,
    );
  }

  // ===== 快捷样式方法 =====
  
  /// 设置背景色 - 简化调用
  Container bg(Color color) {
    return Container(
      color: color,
      child: this,
    );
  }

  // 注意：rounded 方法已在 border_radius.dart 中定义，这里不重复定义

  /// 设置复杂的 BoxDecoration，支持链式调用
  Container boxDecoration({
    Color? color,
    DecorationImage? image,
    Border? border,
    BorderRadius? borderRadius,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
    BlendMode? backgroundBlendMode,
    BoxShape shape = BoxShape.rectangle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        image: image,
        border: border,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        gradient: gradient,
        backgroundBlendMode: backgroundBlendMode,
        shape: shape,
      ),
      child: this,
    );
  }

  // 注意：shadow 相关方法已在 box_shadow.dart 中定义，这里不重复定义

  /// 动态圆角 - 根据位置智能设置
  Container smartBorderRadius({
    required bool isFirst,
    required bool isLast,
    double radius = 12.0,
    Axis direction = Axis.vertical,
  }) {
    BorderRadius borderRadius;
    
    if (direction == Axis.vertical) {
      borderRadius = BorderRadius.only(
        topLeft: isFirst ? Radius.circular(radius) : Radius.zero,
        topRight: isFirst ? Radius.circular(radius) : Radius.zero,
        bottomLeft: isLast ? Radius.circular(radius) : Radius.zero,
        bottomRight: isLast ? Radius.circular(radius) : Radius.zero,
      );
    } else {
      borderRadius = BorderRadius.only(
        topLeft: isFirst ? Radius.circular(radius) : Radius.zero,
        bottomLeft: isFirst ? Radius.circular(radius) : Radius.zero,
        topRight: isLast ? Radius.circular(radius) : Radius.zero,
        bottomRight: isLast ? Radius.circular(radius) : Radius.zero,
      );
    }
    
    return Container(
      decoration: BoxDecoration(borderRadius: borderRadius),
      child: this,
    );
  }

  /// 条件圆角 - 可控制每个角
  Container conditionalBorderRadius({
    bool topLeft = false,
    bool topRight = false,
    bool bottomLeft = false,
    bool bottomRight = false,
    double radius = 12.0,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: topLeft ? Radius.circular(radius) : Radius.zero,
          topRight: topRight ? Radius.circular(radius) : Radius.zero,
          bottomLeft: bottomLeft ? Radius.circular(radius) : Radius.zero,
          bottomRight: bottomRight ? Radius.circular(radius) : Radius.zero,
        ),
      ),
      child: this,
    );
  }

  // 注意：border, margin 和 padding 方法已在专门的扩展文件中定义，这里不重复定义

  /// 将单个Widget转换为Column（包装在列表中）
  Column asColumn({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.min,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: [this],
    );
  }

  /// 将单个Widget转换为Row（包装在列表中）
  Row asRow({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.min,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: [this],
    );
  }
}

/// Icon 专用转换扩展
extension IconConversionExt on Icon {
  /// Icon转Container的专用方法，保持Icon的特性
  Container asIconContainer({
    double? width,
    double? height,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? decoration,
  }) {
    return Container(
      width: width,
      height: height,
      alignment: alignment ?? Alignment.center,
      padding: padding,
      margin: margin,
      decoration: decoration ?? BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: this,
    );
  }

}

/// Widget 的交互扩展 - cursor 和 user-select
extension WidgetInteractivityExtensions on Widget {
  /// cursor-{type} - 设置鼠标光标样式（仅 Web 平台）
  Widget cursor(MouseCursor cursor) {
    return MouseRegion(
      cursor: cursor,
      child: this,
    );
  }
  
  /// cursor-pointer - 指针光标
  Widget cursorPointer() => cursor(SystemMouseCursors.click);
  
  /// cursor-text - 文本光标
  Widget cursorText() => cursor(SystemMouseCursors.text);
  
  /// cursor-not-allowed - 禁止光标
  Widget cursorNotAllowed() => cursor(SystemMouseCursors.forbidden);
  
  /// cursor-wait - 等待光标
  Widget cursorWait() => cursor(SystemMouseCursors.wait);
  
  /// cursor-move - 移动光标
  Widget cursorMove() => cursor(SystemMouseCursors.move);
  
  /// cursor-grab - 抓取光标
  Widget cursorGrab() => cursor(SystemMouseCursors.grab);
  
  /// cursor-grabbing - 抓取中光标
  Widget cursorGrabbing() => cursor(SystemMouseCursors.grabbing);
  
  /// cursor-help - 帮助光标
  Widget cursorHelp() => cursor(SystemMouseCursors.help);
  
  /// cursor-default - 默认光标
  Widget cursorDefault() => cursor(SystemMouseCursors.basic);
  
  /// select-none - 禁止文本选择
  Widget selectNone() {
    return SelectionContainer.disabled(
      child: this,
    );
  }
  
  /// select-text - 允许文本选择
  Widget selectText() {
    return SelectionArea(
      child: this,
    );
  }
  
  /// select-all - 允许选择所有内容
  Widget selectAll() {
    return SelectionArea(
      child: this,
    );
  }
  
  /// select-auto - 自动选择行为
  Widget selectAuto() {
    return this; // Flutter 默认行为
  }
}

/// Image widget 的 object-fit 和 object-position 扩展
extension ImageObjectFitExtensions on Image {
  /// object-fit-contain - 保持宽高比，完整显示图片
  Image objectContain() {
    return Image(
      image: image,
      width: width,
      height: height,
      fit: BoxFit.contain,
      alignment: alignment,
      repeat: repeat,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
      isAntiAlias: isAntiAlias,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      color: color,
      colorBlendMode: colorBlendMode,
      opacity: opacity,
    );
  }
  
  /// object-fit-cover - 填充容器，保持宽高比，可能裁剪
  Image objectCover() {
    return Image(
      image: image,
      width: width,
      height: height,
      fit: BoxFit.cover,
      alignment: alignment,
      repeat: repeat,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
      isAntiAlias: isAntiAlias,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      color: color,
      colorBlendMode: colorBlendMode,
      opacity: opacity,
    );
  }
  
  /// object-fit-fill - 拉伸填充容器，不保持宽高比
  Image objectFill() {
    return Image(
      image: image,
      width: width,
      height: height,
      fit: BoxFit.fill,
      alignment: alignment,
      repeat: repeat,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
      isAntiAlias: isAntiAlias,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      color: color,
      colorBlendMode: colorBlendMode,
      opacity: opacity,
    );
  }
  
  /// object-fit-none - 不缩放，保持原始尺寸
  Image objectNone() {
    return Image(
      image: image,
      width: width,
      height: height,
      fit: BoxFit.none,
      alignment: alignment,
      repeat: repeat,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
      isAntiAlias: isAntiAlias,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      color: color,
      colorBlendMode: colorBlendMode,
      opacity: opacity,
    );
  }
  
  /// object-fit-scale-down - 缩小以适应，但不放大
  Image objectScaleDown() {
    return Image(
      image: image,
      width: width,
      height: height,
      fit: BoxFit.scaleDown,
      alignment: alignment,
      repeat: repeat,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
      isAntiAlias: isAntiAlias,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      color: color,
      colorBlendMode: colorBlendMode,
      opacity: opacity,
    );
  }
  
  /// object-position - 设置图片位置
  Image objectPosition(AlignmentGeometry position) {
    return Image(
      image: image,
      width: width,
      height: height,
      fit: fit,
      alignment: position,
      repeat: repeat,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
      isAntiAlias: isAntiAlias,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      color: color,
      colorBlendMode: colorBlendMode,
      opacity: opacity,
    );
  }
  
  /// object-position 快捷方法
  Image objectCenter() => objectPosition(Alignment.center);
  Image objectTop() => objectPosition(Alignment.topCenter);
  Image objectBottom() => objectPosition(Alignment.bottomCenter);
  Image objectLeft() => objectPosition(Alignment.centerLeft);
  Image objectRight() => objectPosition(Alignment.centerRight);
  Image objectTopLeft() => objectPosition(Alignment.topLeft);
  Image objectTopRight() => objectPosition(Alignment.topRight);
  Image objectBottomLeft() => objectPosition(Alignment.bottomLeft);
  Image objectBottomRight() => objectPosition(Alignment.bottomRight);
}
