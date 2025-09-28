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
  VerticalDirection _verticalDirection = VerticalDirection.down;
  
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
  
  
  /// 构建Flex组件 - 只负责布局，不含视觉样式
  Widget build() {
    if (_direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: _mainAxisAlignment,
        crossAxisAlignment: _crossAxisAlignment,
        mainAxisSize: _mainAxisSize,
        textDirection: _textDirection,
        verticalDirection: _verticalDirection,
        children: children,
      );
    } else {
      return Column(
        mainAxisAlignment: _mainAxisAlignment,
        crossAxisAlignment: _crossAxisAlignment,
        mainAxisSize: _mainAxisSize,
        textDirection: _textDirection,
        verticalDirection: _verticalDirection,
        children: children,
      );
    }
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
