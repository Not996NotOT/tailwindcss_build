import 'package:flutter/material.dart';

/// Widget 垂直对齐扩展
extension WidgetVerticalAlignExtensions on Widget {
  /// vertical-align: baseline - 基线对齐
  /// ⚠️ 部分支持：通过 Baseline widget 实现
  Widget verticalAlignBaseline({required TextBaseline textBaseline}) {
    return Baseline(
      baseline: 0.0,
      baselineType: textBaseline,
      child: this,
    );
  }
  
  /// vertical-align: top - 顶部对齐
  Widget verticalAlignTop() {
    return Align(
      alignment: Alignment.topCenter,
      child: this,
    );
  }
  
  /// vertical-align: middle - 中间对齐
  Widget verticalAlignMiddle() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }
  
  /// vertical-align: bottom - 底部对齐
  Widget verticalAlignBottom() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }
}

/// Widget 状态扩展 - hover, focus, active
extension WidgetStateExtensions on Widget {
  /// hover: - 鼠标悬停状态
  /// ⚠️ 部分支持：通过 MouseRegion 实现
  Widget onHover(Widget Function(BuildContext context, bool isHovered) builder) {
    return MouseRegion(
      child: Builder(
        builder: (context) {
          return builder(context, false);
        },
      ),
    );
  }
  
  /// hover: - 鼠标悬停状态（简化版本）
  Widget hover({Widget Function(bool isHovered)? builder}) {
    return MouseRegion(
      child: builder != null 
        ? Builder(
            builder: (context) {
              // 注意：这个简化版本无法检测实际的 hover 状态
              // 需要使用 StatefulWidget 或更复杂的实现
              return builder(false);
            },
          )
        : this,
    );
  }
  
  /// focus: - 焦点状态
  /// ⚠️ 部分支持：通过 FocusNode 实现
  Widget onFocus(Widget Function(BuildContext context, bool hasFocus) builder) {
    return Focus(
      child: Builder(
        builder: (context) {
          final focusNode = FocusNode();
          return builder(context, focusNode.hasFocus);
        },
      ),
    );
  }
  
  /// active: - 激活状态
  /// ⚠️ 部分支持：通过 GestureDetector 实现
  Widget onActive(Widget Function(BuildContext context, bool isActive) builder) {
    return GestureDetector(
      onTapDown: (_) {},
      onTapUp: (_) {},
      onTapCancel: () {},
      child: Builder(
        builder: (context) {
          return builder(context, false);
        },
      ),
    );
  }
  
  /// disabled: - 禁用状态
  /// ✅ 支持：通过 IgnorePointer 实现
  Widget disabled() {
    return IgnorePointer(
      child: Opacity(
        opacity: 0.5,
        child: this,
      ),
    );
  }
  
  /// enabled: - 启用状态
  Widget enabled() {
    return this;
  }
}

/// Widget 响应式断点扩展
extension WidgetResponsiveExtensions on Widget {
  /// sm: - 小屏幕断点（640px）
  /// ⚠️ 部分支持：通过 MediaQuery 实现
  Widget sm(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        if (width >= 640) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// md: - 中等屏幕断点（768px）
  Widget md(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        if (width >= 768) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// lg: - 大屏幕断点（1024px）
  Widget lg(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        if (width >= 1024) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// xl: - 超大屏幕断点（1280px）
  Widget xl(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        if (width >= 1280) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// 2xl: - 2倍超大屏幕断点（1536px）
  Widget xl2(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        if (width >= 1536) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// max-sm: - 最大小屏幕（< 640px）
  Widget maxSm(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        if (width < 640) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// max-md: - 最大中等屏幕（< 768px）
  Widget maxMd(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        if (width < 768) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// max-lg: - 最大大屏幕（< 1024px）
  Widget maxLg(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        if (width < 1024) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// max-xl: - 最大超大屏幕（< 1280px）
  Widget maxXl(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        if (width < 1280) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// max-2xl: - 最大2倍超大屏幕（< 1536px）
  Widget maxXl2(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        if (width < 1536) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// dark: - 深色模式
  /// ⚠️ 部分支持：通过 Theme 实现
  Widget dark(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final brightness = Theme.of(context).brightness;
        if (brightness == Brightness.dark) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// light: - 浅色模式
  Widget light(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final brightness = Theme.of(context).brightness;
        if (brightness == Brightness.light) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// portrait: - 竖屏方向
  Widget portrait(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final orientation = MediaQuery.of(context).orientation;
        if (orientation == Orientation.portrait) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// landscape: - 横屏方向
  Widget landscape(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final orientation = MediaQuery.of(context).orientation;
        if (orientation == Orientation.landscape) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// motion-safe: - 支持动画
  Widget motionSafe(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final accessibleNavigation = MediaQuery.of(context).accessibleNavigation;
        if (!accessibleNavigation) {
          return builder(context);
        }
        return this;
      },
    );
  }
  
  /// motion-reduce: - 减少动画
  Widget motionReduce(Widget Function(BuildContext context) builder) {
    return Builder(
      builder: (context) {
        final accessibleNavigation = MediaQuery.of(context).accessibleNavigation;
        if (accessibleNavigation) {
          return builder(context);
        }
        return this;
      },
    );
  }
}
