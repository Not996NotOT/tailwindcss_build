import 'package:flutter/material.dart';

/// Widget转换扩展 - 让各种组件可以转换为其他组件并支持TailwindCSS Build链式调用
/// 让Flutter开发更接近TailwindCSS的体验

/// List<Widget> 转换扩展
extension ListWidgetExt on List<Widget> {
  /// 转换为 Row，支持 TailwindCSS Build 链式调用
  Row asRow({
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
  Stack asStack({
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
}

/// Widget 转换扩展
extension WidgetConversionExt on Widget {
  /// 转换为 Container，最基础的容器转换
  Container asContainer({
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
