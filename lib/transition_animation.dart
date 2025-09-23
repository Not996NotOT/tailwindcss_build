import 'package:flutter/material.dart';

/// Tailwind CSS Transition and Animation utilities for Flutter
/// Utilities for controlling transitions and animations.
extension TransitionAnimationExt on Widget {
  
  // === Transition Property ===
  
  /// transition-none -> transition-property: none;
  Widget transitionNone() => this;
  
  /// transition-all -> transition-property: all;
  Widget transitionAll({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
  }) => AnimatedContainer(
    duration: duration,
    curve: curve,
    child: this,
  );
  
  /// transition -> transition-property: color, background-color, border-color, text-decoration-color, fill, stroke, opacity, box-shadow, transform, filter, backdrop-filter;
  Widget transition({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
  }) => AnimatedContainer(
    duration: duration,
    curve: curve,
    child: this,
  );
  
  /// transition-colors -> transition-property: color, background-color, border-color, text-decoration-color, fill, stroke;
  Widget transitionColors({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
  }) => Builder(
    builder: (context) => AnimatedDefaultTextStyle(
      duration: duration,
      curve: curve,
      style: DefaultTextStyle.of(context).style,
      child: this,
    ),
  );
  
  /// transition-opacity -> transition-property: opacity;
  Widget transitionOpacity({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    double opacity = 1.0,
  }) => AnimatedOpacity(
    duration: duration,
    curve: curve,
    opacity: opacity,
    child: this,
  );
  
  /// transition-shadow -> transition-property: box-shadow;
  Widget transitionShadow({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
  }) => AnimatedContainer(
    duration: duration,
    curve: curve,
    child: this,
  );
  
  /// transition-transform -> transition-property: transform;
  Widget transitionTransform({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
  }) => AnimatedContainer(
    duration: duration,
    curve: curve,
    child: this,
  );

  // === Transition Behavior ===
  
  /// transition-behavior-normal -> transition-behavior: normal;
  Widget transitionBehaviorNormal() => this;
  
  /// transition-behavior-allow-discrete -> transition-behavior: allow-discrete;
  Widget transitionBehaviorAllowDiscrete() => this;

  // === Transition Duration ===
  
  /// duration-0 -> transition-duration: 0s;
  Widget duration0() => _withDuration(Duration.zero);
  
  /// duration-75 -> transition-duration: 75ms;
  Widget duration75() => _withDuration(Duration(milliseconds: 75));
  
  /// duration-100 -> transition-duration: 100ms;
  Widget duration100() => _withDuration(Duration(milliseconds: 100));
  
  /// duration-150 -> transition-duration: 150ms;
  Widget duration150() => _withDuration(Duration(milliseconds: 150));
  
  /// duration-200 -> transition-duration: 200ms;
  Widget duration200() => _withDuration(Duration(milliseconds: 200));
  
  /// duration-300 -> transition-duration: 300ms;
  Widget duration300() => _withDuration(Duration(milliseconds: 300));
  
  /// duration-500 -> transition-duration: 500ms;
  Widget duration500() => _withDuration(Duration(milliseconds: 500));
  
  /// duration-700 -> transition-duration: 700ms;
  Widget duration700() => _withDuration(Duration(milliseconds: 700));
  
  /// duration-1000 -> transition-duration: 1000ms;
  Widget duration1000() => _withDuration(Duration(milliseconds: 1000));

  // === Transition Timing Function ===
  
  /// ease-linear -> transition-timing-function: linear;
  Widget easeLinear() => _withCurve(Curves.linear);
  
  /// ease-in -> transition-timing-function: cubic-bezier(0.4, 0, 1, 1);
  Widget easeIn() => _withCurve(Curves.easeIn);
  
  /// ease-out -> transition-timing-function: cubic-bezier(0, 0, 0.2, 1);
  Widget easeOut() => _withCurve(Curves.easeOut);
  
  /// ease-in-out -> transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
  Widget easeInOut() => _withCurve(Curves.easeInOut);

  // === Transition Delay ===
  
  /// delay-0 -> transition-delay: 0s;
  Widget delay0() => this;
  
  /// delay-75 -> transition-delay: 75ms;
  Widget delay75() => _withDelay(Duration(milliseconds: 75));
  
  /// delay-100 -> transition-delay: 100ms;
  Widget delay100() => _withDelay(Duration(milliseconds: 100));
  
  /// delay-150 -> transition-delay: 150ms;
  Widget delay150() => _withDelay(Duration(milliseconds: 150));
  
  /// delay-200 -> transition-delay: 200ms;
  Widget delay200() => _withDelay(Duration(milliseconds: 200));
  
  /// delay-300 -> transition-delay: 300ms;
  Widget delay300() => _withDelay(Duration(milliseconds: 300));
  
  /// delay-500 -> transition-delay: 500ms;
  Widget delay500() => _withDelay(Duration(milliseconds: 500));
  
  /// delay-700 -> transition-delay: 700ms;
  Widget delay700() => _withDelay(Duration(milliseconds: 700));
  
  /// delay-1000 -> transition-delay: 1000ms;
  Widget delay1000() => _withDelay(Duration(milliseconds: 1000));

  // === Animation ===
  
  /// animate-none -> animation: none;
  Widget animateNone() => this;
  
  /// animate-spin -> animation: spin 1s linear infinite;
  Widget animateSpin() => _SpinningWidget(child: this);
  
  /// animate-ping -> animation: ping 1s cubic-bezier(0, 0, 0.2, 1) infinite;
  Widget animatePing() => _PingWidget(child: this);
  
  /// animate-pulse -> animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
  Widget animatePulse() => _PulseWidget(child: this);
  
  /// animate-bounce -> animation: bounce 1s infinite;
  Widget animateBounce() => _BounceWidget(child: this);

  // === Custom animations ===
  
  /// 自定义动画
  Widget customAnimation({
    required Animation<double> animation,
    required Widget Function(BuildContext context, Widget? child, double value) builder,
  }) => AnimatedBuilder(
    animation: animation,
    builder: (context, child) => builder(context, child, animation.value),
    child: this,
  );
  
  /// 淡入动画
  Widget fadeIn({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeIn,
  }) => TweenAnimationBuilder<double>(
    duration: duration,
    curve: curve,
    tween: Tween(begin: 0.0, end: 1.0),
    builder: (context, value, child) => Opacity(
      opacity: value,
      child: child,
    ),
    child: this,
  );
  
  /// 淡出动画
  Widget fadeOut({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeOut,
  }) => TweenAnimationBuilder<double>(
    duration: duration,
    curve: curve,
    tween: Tween(begin: 1.0, end: 0.0),
    builder: (context, value, child) => Opacity(
      opacity: value,
      child: child,
    ),
    child: this,
  );
  
  /// 滑入动画
  Widget slideIn({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    Offset begin = const Offset(0, -1),
    Offset end = Offset.zero,
  }) => TweenAnimationBuilder<Offset>(
    duration: duration,
    curve: curve,
    tween: Tween(begin: begin, end: end),
    builder: (context, value, child) => Transform.translate(
      offset: value,
      child: child,
    ),
    child: this,
  );
  
  /// 缩放动画
  Widget scaleIn({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    double begin = 0.0,
    double end = 1.0,
  }) => TweenAnimationBuilder<double>(
    duration: duration,
    curve: curve,
    tween: Tween(begin: begin, end: end),
    builder: (context, value, child) => Transform.scale(
      scale: value,
      child: child,
    ),
    child: this,
  );
  
  /// 旋转动画
  Widget rotateIn({
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    double begin = 0.0,
    double end = 1.0,
  }) => TweenAnimationBuilder<double>(
    duration: duration,
    curve: curve,
    tween: Tween(begin: begin, end: end),
    builder: (context, value, child) => Transform.rotate(
      angle: value * 2 * 3.14159,
      child: child,
    ),
    child: this,
  );

  // === Hover animations ===
  
  /// 悬停缩放动画
  Widget hoverScale({
    double scale = 1.05,
    Duration duration = const Duration(milliseconds: 200),
  }) => MouseRegion(
    onEnter: (_) {},
    onExit: (_) {},
    child: AnimatedContainer(
      duration: duration,
      transform: Matrix4.identity()..scale(1.0),
      child: this,
    ),
  );
  
  /// 悬停透明度动画
  Widget hoverOpacity({
    double opacity = 0.8,
    Duration duration = const Duration(milliseconds: 200),
  }) => MouseRegion(
    onEnter: (_) {},
    onExit: (_) {},
    child: AnimatedOpacity(
      duration: duration,
      opacity: 1.0,
      child: this,
    ),
  );

  // === Helper methods ===
  
  Widget _withDuration(Duration duration) => AnimatedContainer(
    duration: duration,
    child: this,
  );
  
  Widget _withCurve(Curve curve) => AnimatedContainer(
    duration: Duration(milliseconds: 300),
    curve: curve,
    child: this,
  );
  
  Widget _withDelay(Duration delay) => FutureBuilder(
    future: Future.delayed(delay),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        return this;
      }
      return SizedBox.shrink();
    },
  );
  
}

/// 动画控制器管理类
class AnimationManager {
  static Map<String, AnimationController> _controllers = {};
  
  /// 创建动画控制器
  static AnimationController createController({
    required String key,
    required Duration duration,
    required TickerProvider vsync,
  }) {
    final controller = AnimationController(duration: duration, vsync: vsync);
    _controllers[key] = controller;
    return controller;
  }
  
  /// 获取动画控制器
  static AnimationController? getController(String key) {
    return _controllers[key];
  }
  
  /// 销毁动画控制器
  static void disposeController(String key) {
    _controllers[key]?.dispose();
    _controllers.remove(key);
  }
  
  /// 销毁所有动画控制器
  static void disposeAll() {
    _controllers.forEach((key, controller) {
      controller.dispose();
    });
    _controllers.clear();
  }
}

/// 预定义动画
class TailwindAnimations {
  /// 弹跳动画
  static Animation<double> bounce(AnimationController controller) {
    return Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: controller, curve: Curves.bounceOut),
    );
  }
  
  /// 弹性动画
  static Animation<double> elastic(AnimationController controller) {
    return Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: controller, curve: Curves.elasticOut),
    );
  }
  
  /// 回弹动画
  static Animation<double> back(AnimationController controller) {
    return Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn),
    );
  }
  
  /// 渐变缓动
  static Animation<double> ease(AnimationController controller) {
    return Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: controller, curve: Curves.ease),
    );
  }
}

/// 动画序列构建器
class AnimationSequence {
  final List<AnimationStep> _steps = [];
  late AnimationController _controller;
  
  AnimationSequence(this._controller);
  
  /// 添加动画步骤
  AnimationSequence addStep({
    required double begin,
    required double end,
    required Duration duration,
    Curve curve = Curves.linear,
  }) {
    _steps.add(AnimationStep(
      begin: begin,
      end: end,
      duration: duration,
      curve: curve,
    ));
    return this;
  }
  
  /// 构建动画
  Animation<double> build() {
    // 这里应该实现复杂的序列动画逻辑
    return Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }
}

class AnimationStep {
  final double begin;
  final double end;
  final Duration duration;
  final Curve curve;
  
  AnimationStep({
    required this.begin,
    required this.end,
    required this.duration,
    required this.curve,
  });
}

/// 旋转动画Widget
class _SpinningWidget extends StatefulWidget {
  final Widget child;
  
  const _SpinningWidget({required this.child});
  
  @override
  _SpinningWidgetState createState() => _SpinningWidgetState();
}

class _SpinningWidgetState extends State<_SpinningWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    )..repeat();
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: widget.child,
    );
  }
}

/// 缩放脉冲动画Widget
class _PingWidget extends StatefulWidget {
  final Widget child;
  
  const _PingWidget({required this.child});
  
  @override
  _PingWidgetState createState() => _PingWidgetState();
}

class _PingWidgetState extends State<_PingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    )..repeat();
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
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
        return Transform.scale(
          scale: 1.0 + _animation.value * 0.5,
          child: Opacity(
            opacity: 1 - _animation.value,
            child: widget.child,
          ),
        );
      },
    );
  }
}

/// 脉冲动画Widget
class _PulseWidget extends StatefulWidget {
  final Widget child;
  
  const _PulseWidget({required this.child});
  
  @override
  _PulseWidgetState createState() => _PulseWidgetState();
}

class _PulseWidgetState extends State<_PulseWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.ease),
    );
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
        return Opacity(
          opacity: _animation.value,
          child: widget.child,
        );
      },
    );
  }
}

/// 弹跳动画Widget
class _BounceWidget extends StatefulWidget {
  final Widget child;
  
  const _BounceWidget({required this.child});
  
  @override
  _BounceWidgetState createState() => _BounceWidgetState();
}

class _BounceWidgetState extends State<_BounceWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    )..repeat();
    _animation = Tween<double>(begin: 0.0, end: -20.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.bounceOut),
    );
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
          offset: Offset(0, _animation.value),
          child: widget.child,
        );
      },
    );
  }
}
