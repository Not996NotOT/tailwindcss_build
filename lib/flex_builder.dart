import 'package:flutter/material.dart';

import 'container_builder.dart';

/// Widget扩展，用于为子组件添加order属性
extension WidgetOrderExtension on Widget {
  /// 设置组件的order值（用于Flex布局排序）
  OrderedWidget order(int order) {
    return OrderedWidget(order: order, child: this);
  }
}

/// 包装Widget并携带order信息的容器
class OrderedWidget extends StatelessWidget {
  final Widget child;
  final int order;
  
  const OrderedWidget({
    super.key,
    required this.order,
    required this.child,
  });
  
  @override
  Widget build(BuildContext context) {
    return child;
  }
}

/// 内部辅助类，用于排序时保持原始索引信息
class _IndexedWidget {
  final Widget widget;
  final int order;
  final int originalIndex;
  
  _IndexedWidget({
    required this.widget,
    required this.order,
    required this.originalIndex,
  });
}

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
    // 先处理order排序，再处理gap间距
    List<Widget> orderedChildren = _buildOrderedChildren();
    List<Widget> childrenWithGap = _buildChildrenWithGap(orderedChildren);
    
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
  
  /// 构建按order排序的子组件列表
  List<Widget> _buildOrderedChildren() {
    if (children.isEmpty) return children;
    
    // 创建带索引的列表，用于保持原始顺序
    List<_IndexedWidget> indexedWidgets = [];
    
    for (int i = 0; i < children.length; i++) {
      Widget child = children[i];
      int order = 0; // 默认order为0
      
      // 检查是否是OrderedWidget
      if (child is OrderedWidget) {
        order = child.order;
        child = child.child; // 获取实际的子组件
      }
      
      indexedWidgets.add(_IndexedWidget(
        widget: child,
        order: order,
        originalIndex: i,
      ));
    }
    
    // 按order排序，如果order相同则按原始索引排序
    indexedWidgets.sort((a, b) {
      int orderComparison = a.order.compareTo(b.order);
      if (orderComparison != 0) {
        return orderComparison;
      }
      return a.originalIndex.compareTo(b.originalIndex);
    });
    
    // 返回排序后的Widget列表
    return indexedWidgets.map((indexed) => indexed.widget).toList();
  }
  
  /// 构建带间距的子组件列表
  List<Widget> _buildChildrenWithGap([List<Widget>? childrenList]) {
    List<Widget> targetChildren = childrenList ?? children;
    
    if (_gap == null || _gap! <= 0 || targetChildren.isEmpty) {
      return targetChildren;
    }
    
    List<Widget> result = [];
    for (int i = 0; i < targetChildren.length; i++) {
      result.add(targetChildren[i]);
      
      // 在非最后一个元素后添加间距
      if (i < targetChildren.length - 1) {
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

/// List&lt;Widget&gt; 到 FlexBuilder 的转换扩展
extension ListWidgetToFlexBuilder on List<Widget> {
  /// 将 List&lt;Widget&gt; 转换为 FlexBuilder，开始Flex布局链式调用
  FlexBuilder asFlex() {
    return FlexBuilder(this);
  }
  
  /// 将 List&lt;Widget&gt; 转换为 RowBuilder (水平布局)
  RowBuilder asRow() {
    return RowBuilder(this);
  }
  
  /// 将 List&lt;Widget&gt; 转换为 ColumnBuilder (垂直布局)
  ColumnBuilder asColumn() {
    return ColumnBuilder(this);
  }
}


/// Row 建造者 - 专门处理 Row 布局
class RowBuilder {
  final List<Widget> children;
  
  // 收集的Row布局属性
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  TextDirection? _textDirection;
  final VerticalDirection _verticalDirection = VerticalDirection.down;
  double? _gap; // gap间距
  
  RowBuilder(this.children);
  
  // === Justify Content (Main Axis) ===
  RowBuilder justifyStart() {
    _mainAxisAlignment = MainAxisAlignment.start;
    return this;
  }
  
  RowBuilder justifyEnd() {
    _mainAxisAlignment = MainAxisAlignment.end;
    return this;
  }
  
  RowBuilder justifyCenter() {
    _mainAxisAlignment = MainAxisAlignment.center;
    return this;
  }
  
  RowBuilder justifyBetween() {
    _mainAxisAlignment = MainAxisAlignment.spaceBetween;
    return this;
  }
  
  RowBuilder justifyAround() {
    _mainAxisAlignment = MainAxisAlignment.spaceAround;
    return this;
  }
  
  RowBuilder justifyEvenly() {
    _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
    return this;
  }
  
  // === Align Items (Cross Axis) ===
  RowBuilder itemsStart() {
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }
  
  RowBuilder itemsEnd() {
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }
  
  RowBuilder itemsCenter() {
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }
  
  RowBuilder itemsStretch() {
    _crossAxisAlignment = CrossAxisAlignment.stretch;
    return this;
  }
  
  RowBuilder itemsBaseline() {
    _crossAxisAlignment = CrossAxisAlignment.baseline;
    return this;
  }
  
  // === Row Size ===
  RowBuilder rowShrink() {
    _mainAxisSize = MainAxisSize.min;
    return this;
  }
  
  RowBuilder rowGrow() {
    _mainAxisSize = MainAxisSize.max;
    return this;
  }
  
  // === Gap 间距 ===
  RowBuilder gap(double gap) {
    _gap = gap;
    return this;
  }
  
  // 常用gap尺寸
  RowBuilder gap1() => gap(4.0);
  RowBuilder gap2() => gap(8.0);
  RowBuilder gap3() => gap(12.0);
  RowBuilder gap4() => gap(16.0);
  RowBuilder gap5() => gap(20.0);
  RowBuilder gap6() => gap(24.0);
  RowBuilder gap8() => gap(32.0);
  
  /// 构建Row组件
  Widget build() {
    // 先处理order排序，再处理gap间距
    List<Widget> orderedChildren = _buildOrderedChildren();
    List<Widget> childrenWithGap = _buildChildrenWithGap(orderedChildren);
    
    return Row(
      mainAxisAlignment: _mainAxisAlignment,
      crossAxisAlignment: _crossAxisAlignment,
      mainAxisSize: _mainAxisSize,
      textDirection: _textDirection,
      verticalDirection: _verticalDirection,
      children: childrenWithGap,
    );
  }
  
  /// 构建按order排序的子组件列表
  List<Widget> _buildOrderedChildren() {
    if (children.isEmpty) return children;
    
    // 创建带索引的列表，用于保持原始顺序
    List<_IndexedWidget> indexedWidgets = [];
    
    for (int i = 0; i < children.length; i++) {
      Widget child = children[i];
      int order = 0; // 默认order为0
      
      // 检查是否是OrderedWidget
      if (child is OrderedWidget) {
        order = child.order;
        child = child.child; // 获取实际的子组件
      }
      
      indexedWidgets.add(_IndexedWidget(
        widget: child,
        order: order,
        originalIndex: i,
      ));
    }
    
    // 按order排序，如果order相同则按原始索引排序
    indexedWidgets.sort((a, b) {
      int orderComparison = a.order.compareTo(b.order);
      if (orderComparison != 0) {
        return orderComparison;
      }
      return a.originalIndex.compareTo(b.originalIndex);
    });
    
    // 返回排序后的Widget列表
    return indexedWidgets.map((indexed) => indexed.widget).toList();
  }
  
  /// 构建带间距的子组件列表
  List<Widget> _buildChildrenWithGap([List<Widget>? childrenList]) {
    List<Widget> targetChildren = childrenList ?? children;
    
    if (_gap == null || _gap! <= 0 || targetChildren.isEmpty) {
      return targetChildren;
    }
    
    List<Widget> result = [];
    for (int i = 0; i < targetChildren.length; i++) {
      result.add(targetChildren[i]);
      
      // 在非最后一个元素后添加间距
      if (i < targetChildren.length - 1) {
        result.add(SizedBox(width: _gap));
      }
    }
    
    return result;
  }
  
  /// 转换为ContainerBuilder
  ContainerBuilder asContainer() {
    return ContainerBuilder(build());
  }
  
  /// 添加点击事件
  Widget onTap(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: build(),
    );
  }
}

/// Column 建造者 - 专门处理 Column 布局
class ColumnBuilder {
  final List<Widget> children;
  
  // 收集的Column布局属性
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  TextDirection? _textDirection;
  final VerticalDirection _verticalDirection = VerticalDirection.down;
  double? _gap; // gap间距
  
  ColumnBuilder(this.children);
  
  // === Justify Content (Main Axis) ===
  ColumnBuilder justifyStart() {
    _mainAxisAlignment = MainAxisAlignment.start;
    return this;
  }
  
  ColumnBuilder justifyEnd() {
    _mainAxisAlignment = MainAxisAlignment.end;
    return this;
  }
  
  ColumnBuilder justifyCenter() {
    _mainAxisAlignment = MainAxisAlignment.center;
    return this;
  }
  
  ColumnBuilder justifyBetween() {
    _mainAxisAlignment = MainAxisAlignment.spaceBetween;
    return this;
  }
  
  ColumnBuilder justifyAround() {
    _mainAxisAlignment = MainAxisAlignment.spaceAround;
    return this;
  }
  
  ColumnBuilder justifyEvenly() {
    _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
    return this;
  }
  
  // === Align Items (Cross Axis) ===
  ColumnBuilder itemsStart() {
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }
  
  ColumnBuilder itemsEnd() {
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }
  
  ColumnBuilder itemsCenter() {
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }
  
  ColumnBuilder itemsStretch() {
    _crossAxisAlignment = CrossAxisAlignment.stretch;
    return this;
  }
  
  ColumnBuilder itemsBaseline() {
    _crossAxisAlignment = CrossAxisAlignment.baseline;
    return this;
  }
  
  // === Column Size ===
  ColumnBuilder columnShrink() {
    _mainAxisSize = MainAxisSize.min;
    return this;
  }
  
  ColumnBuilder columnGrow() {
    _mainAxisSize = MainAxisSize.max;
    return this;
  }
  
  // === Gap 间距 ===
  ColumnBuilder gap(double gap) {
    _gap = gap;
    return this;
  }
  
  // 常用gap尺寸
  ColumnBuilder gap1() => gap(4.0);
  ColumnBuilder gap2() => gap(8.0);
  ColumnBuilder gap3() => gap(12.0);
  ColumnBuilder gap4() => gap(16.0);
  ColumnBuilder gap5() => gap(20.0);
  ColumnBuilder gap6() => gap(24.0);
  ColumnBuilder gap8() => gap(32.0);
  
  /// 构建Column组件
  Widget build() {
    // 先处理order排序，再处理gap间距
    List<Widget> orderedChildren = _buildOrderedChildren();
    List<Widget> childrenWithGap = _buildChildrenWithGap(orderedChildren);
    
    return Column(
      mainAxisAlignment: _mainAxisAlignment,
      crossAxisAlignment: _crossAxisAlignment,
      mainAxisSize: _mainAxisSize,
      textDirection: _textDirection,
      verticalDirection: _verticalDirection,
      children: childrenWithGap,
    );
  }
  
  /// 构建按order排序的子组件列表
  List<Widget> _buildOrderedChildren() {
    if (children.isEmpty) return children;
    
    // 创建带索引的列表，用于保持原始顺序
    List<_IndexedWidget> indexedWidgets = [];
    
    for (int i = 0; i < children.length; i++) {
      Widget child = children[i];
      int order = 0; // 默认order为0
      
      // 检查是否是OrderedWidget
      if (child is OrderedWidget) {
        order = child.order;
        child = child.child; // 获取实际的子组件
      }
      
      indexedWidgets.add(_IndexedWidget(
        widget: child,
        order: order,
        originalIndex: i,
      ));
    }
    
    // 按order排序，如果order相同则按原始索引排序
    indexedWidgets.sort((a, b) {
      int orderComparison = a.order.compareTo(b.order);
      if (orderComparison != 0) {
        return orderComparison;
      }
      return a.originalIndex.compareTo(b.originalIndex);
    });
    
    // 返回排序后的Widget列表
    return indexedWidgets.map((indexed) => indexed.widget).toList();
  }
  
  /// 构建带间距的子组件列表
  List<Widget> _buildChildrenWithGap([List<Widget>? childrenList]) {
    List<Widget> targetChildren = childrenList ?? children;
    
    if (_gap == null || _gap! <= 0 || targetChildren.isEmpty) {
      return targetChildren;
    }
    
    List<Widget> result = [];
    for (int i = 0; i < targetChildren.length; i++) {
      result.add(targetChildren[i]);
      
      // 在非最后一个元素后添加间距
      if (i < targetChildren.length - 1) {
        result.add(SizedBox(height: _gap));
      }
    }
    
    return result;
  }
  
  /// 转换为ContainerBuilder
  ContainerBuilder asContainer() {
    return ContainerBuilder(build());
  }
  
  /// 添加点击事件
  Widget onTap(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: build(),
    );
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
