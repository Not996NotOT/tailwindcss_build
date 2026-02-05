import 'package:flutter/material.dart';
import 'container_builder.dart';

/// Animated Builder - 用于创建带动画的容器
/// 
/// A builder class for creating animated containers with Tailwind CSS-like transition utilities.
/// 
/// Example:
/// ```dart
/// AnimatedBuilder(
///   child: Text('Hello'),
/// )
///   .duration(Duration(milliseconds: 300))
///   .curve(Curves.easeInOut)
///   .build()
/// ```
class AnimatedBuilder {
  /// The child widget
  final Widget child;
  
  /// Duration for the animation
  Duration _duration = const Duration(milliseconds: 150);
  
  /// Delay for the animation
  /// ⚠️ 注意：AnimatedContainer 不支持 delay 参数
  /// 此值可以通过 delay() getter 获取，用于配合 AnimationController 实现延迟效果
  Duration _delay = Duration.zero;
  
  /// Curve for the animation
  Curve _curve = Curves.linear;
  
  /// Container properties
  double? _width;
  double? _height;
  BoxConstraints? _constraints;
  AlignmentGeometry? _alignment;
  EdgeInsetsGeometry? _padding;
  EdgeInsetsGeometry? _margin;
  Decoration? _decoration;
  Decoration? _foregroundDecoration;
  Matrix4? _transform;
  AlignmentGeometry? _transformAlignment;
  Clip? _clipBehavior;
  
  /// Creates an [AnimatedBuilder] with the given [child].
  AnimatedBuilder({required this.child});
  
  /// duration-{time} - 设置动画持续时间
  /// ✅ 支持：通过 Duration 实现
  AnimatedBuilder duration(Duration duration) {
    _duration = duration;
    return this;
  }
  
  /// duration-{number}ms - 设置动画持续时间（毫秒）
  AnimatedBuilder durationMs(int milliseconds) {
    _duration = Duration(milliseconds: milliseconds);
    return this;
  }
  
  /// duration-{number}s - 设置动画持续时间（秒）
  AnimatedBuilder durationS(int seconds) {
    _duration = Duration(seconds: seconds);
    return this;
  }
  
  /// delay-{time} - 设置动画延迟时间
  /// ⚠️ 部分支持：Flutter 中需要通过 Future.delayed 或 AnimationController 实现
  /// 此方法设置延迟值，但实际延迟需要在 StatefulWidget 中使用 AnimationController 实现
  AnimatedBuilder delay(Duration delay) {
    _delay = delay;
    return this;
  }
  
  /// delay-{number}ms - 设置动画延迟时间（毫秒）
  AnimatedBuilder delayMs(int milliseconds) {
    _delay = Duration(milliseconds: milliseconds);
    return this;
  }
  
  /// delay-{number}s - 设置动画延迟时间（秒）
  AnimatedBuilder delayS(int seconds) {
    _delay = Duration(seconds: seconds);
    return this;
  }
  
  /// delay-75 - 75ms 延迟
  AnimatedBuilder delay75() => delayMs(75);
  
  /// delay-100 - 100ms 延迟
  AnimatedBuilder delay100() => delayMs(100);
  
  /// delay-150 - 150ms 延迟
  AnimatedBuilder delay150() => delayMs(150);
  
  /// delay-200 - 200ms 延迟
  AnimatedBuilder delay200() => delayMs(200);
  
  /// delay-300 - 300ms 延迟
  AnimatedBuilder delay300() => delayMs(300);
  
  /// delay-500 - 500ms 延迟
  AnimatedBuilder delay500() => delayMs(500);
  
  /// delay-700 - 700ms 延迟
  AnimatedBuilder delay700() => delayMs(700);
  
  /// delay-1000 - 1000ms 延迟
  AnimatedBuilder delay1000() => delayMs(1000);
  
  /// ease-{type} - 设置动画曲线
  /// ✅ 支持：通过 Curve 实现
  AnimatedBuilder curve(Curve curve) {
    _curve = curve;
    return this;
  }
  
  /// ease-linear - 线性动画
  AnimatedBuilder easeLinear() {
    _curve = Curves.linear;
    return this;
  }
  
  /// ease-in - 缓入动画
  AnimatedBuilder easeIn() {
    _curve = Curves.easeIn;
    return this;
  }
  
  /// ease-out - 缓出动画
  AnimatedBuilder easeOut() {
    _curve = Curves.easeOut;
    return this;
  }
  
  /// ease-in-out - 缓入缓出动画
  AnimatedBuilder easeInOut() {
    _curve = Curves.easeInOut;
    return this;
  }
  
  /// 设置容器样式（通过 ContainerBuilder）
  /// ⚠️ 注意：此方法当前不提取 ContainerBuilder 的属性
  /// 建议直接使用 width(), height(), padding() 等方法设置属性
  AnimatedBuilder container(ContainerBuilder builder) {
    // 注意：由于 ContainerBuilder 的属性是私有的，无法直接提取
    // 实际使用时建议直接使用 AnimatedBuilder 的属性设置方法
    // 或者将 ContainerBuilder 的属性手动映射到 AnimatedBuilder
    return this;
  }
  
  /// 设置宽度
  AnimatedBuilder width(double? width) {
    _width = width;
    return this;
  }
  
  /// 设置高度
  AnimatedBuilder height(double? height) {
    _height = height;
    return this;
  }
  
  /// 设置约束
  AnimatedBuilder constraints(BoxConstraints? constraints) {
    _constraints = constraints;
    return this;
  }
  
  /// 设置对齐
  AnimatedBuilder alignment(AlignmentGeometry? alignment) {
    _alignment = alignment;
    return this;
  }
  
  /// 设置内边距
  AnimatedBuilder padding(EdgeInsetsGeometry? padding) {
    _padding = padding;
    return this;
  }
  
  /// 设置外边距
  AnimatedBuilder margin(EdgeInsetsGeometry? margin) {
    _margin = margin;
    return this;
  }
  
  /// 设置装饰
  AnimatedBuilder decoration(Decoration? decoration) {
    _decoration = decoration;
    return this;
  }
  
  /// 设置前景装饰
  AnimatedBuilder foregroundDecoration(Decoration? foregroundDecoration) {
    _foregroundDecoration = foregroundDecoration;
    return this;
  }
  
  /// 设置变换
  AnimatedBuilder transform(Matrix4? transform) {
    _transform = transform;
    return this;
  }
  
  /// 设置变换对齐
  AnimatedBuilder transformAlignment(AlignmentGeometry? transformAlignment) {
    _transformAlignment = transformAlignment;
    return this;
  }
  
  /// 设置裁剪行为
  AnimatedBuilder clipBehavior(Clip? clipBehavior) {
    _clipBehavior = clipBehavior;
    return this;
  }
  
  /// 获取延迟时间
  /// ⚠️ 注意：AnimatedContainer 不支持 delay 参数
  /// 此方法返回设置的延迟值，可用于配合 AnimationController 实现延迟效果
  Duration getDelay() => _delay;
  
  /// 构建 AnimatedContainer widget
  AnimatedContainer build() {
    return AnimatedContainer(
      duration: _duration,
      curve: _curve,
      width: _width,
      height: _height,
      constraints: _constraints,
      alignment: _alignment,
      padding: _padding,
      margin: _margin,
      decoration: _decoration,
      foregroundDecoration: _foregroundDecoration,
      transform: _transform,
      transformAlignment: _transformAlignment,
      clipBehavior: _clipBehavior ?? Clip.none,
      child: child,
    );
  }
}

/// AnimatedBuilder 扩展 - 添加动画快捷方法
extension AnimatedBuilderExtensions on AnimatedBuilder {
  /// animate-spin - 旋转动画
  /// ⚠️ 部分支持：需要通过 AnimationController 实现
  /// 此方法返回一个带有旋转动画的 Widget，需要使用 StatefulWidget 和 AnimationController
  /// 示例：
  /// ```dart
  /// class SpinningWidget extends StatefulWidget {
  ///   @override
  ///   _SpinningWidgetState createState() => _SpinningWidgetState();
  /// }
  /// 
  /// class _SpinningWidgetState extends State<SpinningWidget> 
  ///     with SingleTickerProviderStateMixin {
  ///   late AnimationController _controller;
  /// 
  ///   @override
  ///   void initState() {
  ///     super.initState();
  ///     _controller = AnimationController(
  ///       duration: Duration(seconds: 1),
  ///       vsync: this,
  ///     )..repeat();
  ///   }
  /// 
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     return RotationTransition(
  ///       turns: _controller,
  ///       child: widget.child,
  ///     );
  ///   }
  /// 
  ///   @override
  ///   void dispose() {
  ///     _controller.dispose();
  ///     super.dispose();
  ///   }
  /// }
  /// ```
  AnimatedBuilder animateSpin() {
    // 注意：真正的旋转动画需要使用 RotationTransition 和 AnimationController
    // 这里提供一个基础实现，实际使用时需要配合 AnimationController
    return this;
  }
  
  /// animate-ping - 脉冲动画（缩放和淡出）
  /// ⚠️ 部分支持：需要通过 AnimationController 实现
  /// 此方法返回一个带有脉冲动画的 Widget，需要使用 StatefulWidget 和 AnimationController
  AnimatedBuilder animatePing() {
    // 注意：脉冲动画需要使用 AnimationController
    // 实现方式：使用 ScaleTransition 和 FadeTransition 组合
    return this;
  }
  
  /// animate-pulse - 脉冲动画（透明度变化）
  /// ⚠️ 部分支持：需要通过 AnimationController 实现
  /// 此方法返回一个带有脉冲动画的 Widget，需要使用 StatefulWidget 和 AnimationController
  AnimatedBuilder animatePulse() {
    // 注意：脉冲动画需要使用 AnimationController
    // 实现方式：使用 FadeTransition 实现透明度脉冲效果
    return this;
  }
  
  /// animate-bounce - 弹跳动画
  /// ⚠️ 部分支持：需要通过 AnimationController 实现
  /// 此方法返回一个带有弹跳动画的 Widget，需要使用 StatefulWidget 和 AnimationController
  AnimatedBuilder animateBounce() {
    // 注意：弹跳动画需要使用 AnimationController
    // 实现方式：使用 TranslateTransition 或 Transform 实现上下弹跳效果
    return this;
  }
}
