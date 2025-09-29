import 'package:flutter/material.dart';

import 'container_builder.dart';

/// Flex 建造者 - 只负责Flex布局属性，不包含视觉样式
class FlexBuilder {
  final List<Widget> children;
  
  // 收集的Flex布局属性
  Axis _direction = Axis.horizontal; // 默认为Row
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  TextDirection? _textDirection;
  final VerticalDirection _verticalDirection = VerticalDirection.down;
  double? _gap; // gap间距
  
  FlexBuilder(this.children);
  
  // === Flex Direction ===
  FlexBuilder flexRow() {
    _direction = Axis.horizontal;
    return this;
  }
  
  FlexBuilder flexCol() {
    _direction = Axis.vertical;
    return this;
  }
  
  // === Justify Content (Main Axis) ===
  FlexBuilder justifyStart() {
    _mainAxisAlignment = MainAxisAlignment.start;
    return this;
  }
  
  FlexBuilder justifyEnd() {
    _mainAxisAlignment = MainAxisAlignment.end;
    return this;
  }
  
  FlexBuilder justifyCenter() {
    _mainAxisAlignment = MainAxisAlignment.center;
    return this;
  }
  
  FlexBuilder justifyBetween() {
    _mainAxisAlignment = MainAxisAlignment.spaceBetween;
    return this;
  }
  
  FlexBuilder justifyAround() {
    _mainAxisAlignment = MainAxisAlignment.spaceAround;
    return this;
  }
  
  FlexBuilder justifyEvenly() {
    _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
    return this;
  }
  
  // === Align Items (Cross Axis) ===
  FlexBuilder itemsStart() {
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }
  
  FlexBuilder itemsEnd() {
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }
  
  FlexBuilder itemsCenter() {
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }
  
  FlexBuilder itemsStretch() {
    _crossAxisAlignment = CrossAxisAlignment.stretch;
    return this;
  }
  
  FlexBuilder itemsBaseline() {
    _crossAxisAlignment = CrossAxisAlignment.baseline;
    return this;
  }
  
  // === Flex Size ===
  FlexBuilder flexShrink() {
    _mainAxisSize = MainAxisSize.min;
    return this;
  }
  
  FlexBuilder flexGrow() {
    _mainAxisSize = MainAxisSize.max;
    return this;
  }
  
  // === Gap 间距 ===
  FlexBuilder gap(double gap) {
    _gap = gap;
    return this;
  }
  
  // 常用gap尺寸 - 基于4的倍数（Tailwind标准）
  FlexBuilder gap1() => gap(4.0);   // gap-1 = 4px
  FlexBuilder gap2() => gap(8.0);   // gap-2 = 8px  
  FlexBuilder gap3() => gap(12.0);  // gap-3 = 12px
  FlexBuilder gap4() => gap(16.0);  // gap-4 = 16px
  FlexBuilder gap5() => gap(20.0);  // gap-5 = 20px
  FlexBuilder gap6() => gap(24.0);  // gap-6 = 24px
  FlexBuilder gap8() => gap(32.0);  // gap-8 = 32px
  FlexBuilder gap10() => gap(40.0); // gap-10 = 40px
  FlexBuilder gap12() => gap(48.0); // gap-12 = 48px
  FlexBuilder gap16() => gap(64.0); // gap-16 = 64px
  FlexBuilder gap20() => gap(80.0); // gap-20 = 80px
  FlexBuilder gap24() => gap(96.0); // gap-24 = 96px
  FlexBuilder gap32() => gap(128.0); // gap-32 = 128px
  
  
  /// 构建Flex组件 - 只负责布局，不含视觉样式
  Widget build() {
    // 处理gap间距
    List<Widget> childrenWithGap = _buildChildrenWithGap();
    
    if (_direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: _mainAxisAlignment,
        crossAxisAlignment: _crossAxisAlignment,
        mainAxisSize: _mainAxisSize,
        textDirection: _textDirection,
        verticalDirection: _verticalDirection,
        children: childrenWithGap,
      );
    } else {
      return Column(
        mainAxisAlignment: _mainAxisAlignment,
        crossAxisAlignment: _crossAxisAlignment,
        mainAxisSize: _mainAxisSize,
        textDirection: _textDirection,
        verticalDirection: _verticalDirection,
        children: childrenWithGap,
      );
    }
  }
  
  /// 构建带间距的子组件列表
  List<Widget> _buildChildrenWithGap() {
    if (_gap == null || _gap! <= 0 || children.isEmpty) {
      return children;
    }
    
    List<Widget> result = [];
    for (int i = 0; i < children.length; i++) {
      result.add(children[i]);
      
      // 在非最后一个元素后添加间距
      if (i < children.length - 1) {
        if (_direction == Axis.horizontal) {
          result.add(SizedBox(width: _gap));
        } else {
          result.add(SizedBox(height: _gap));
        }
      }
    }
    
    return result;
  }
  
  /// 转换为ContainerBuilder，添加视觉样式
  ContainerBuilder asContainer() {
    return ContainerBuilder(build());
  }
}

/// List<Widget> 到 FlexBuilder 的转换扩展
extension ListWidgetToFlexBuilder on List<Widget> {
  /// 将 List<Widget> 转换为 FlexBuilder，开始Flex布局链式调用
  FlexBuilder asFlex() {
    return FlexBuilder(this);
  }
}


/// 为 FlexBuilder 添加交互扩展
extension FlexBuilderInteraction on FlexBuilder {
  /// 添加点击事件，自动构建 Flex 并包装 GestureDetector
  Widget onTap(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: build(), // 自动调用build()
    );
  }
}
