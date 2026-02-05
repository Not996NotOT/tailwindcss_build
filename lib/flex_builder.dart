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
/// 
/// A builder class for creating flex layouts (Row/Column) with Tailwind CSS-like utility methods.
/// Handles flex direction, alignment, gap, wrap, and other flex-related properties.
/// 
/// Example:
/// ```dart
/// FlexBuilder([
///   Text('Item 1'),
///   Text('Item 2'),
///   Text('Item 3'),
/// ])
///   .flexRow()
///   .justifyCenter()
///   .itemsCenter()
///   .gap(16)
///   .build()
/// ```
class FlexBuilder {
  /// The list of child widgets to be arranged in the flex layout.
  final List<Widget> children;
  
  // 收集的Flex布局属性
  Axis _direction = Axis.horizontal; // 默认为Row
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  TextDirection? _textDirection;
  final VerticalDirection _verticalDirection = VerticalDirection.down;
  double? _gap; // gap间距
  bool _spaceReverse = false; // space-x-reverse / space-y-reverse
  bool _flexWrap = false; // flex-wrap: 是否启用换行
  
  // === Divide Between Children 相关属性 ===
  bool _divideX = false; // divide-x: 在水平方向的子元素之间添加垂直分隔线
  bool _divideY = false; // divide-y: 在垂直方向的子元素之间添加水平分隔线
  bool _divideReverse = false; // divide-x-reverse / divide-y-reverse
  Color _divideColor = const Color(0xFFE5E7EB); // 默认 gray-200
  double _divideWidth = 1.0; // 默认 1px
  // 注意：Flutter Container 不支持 BorderStyle，所以暂时不存储样式
  
  /// Creates a [FlexBuilder] with the given list of [children].
  /// 
  /// The [children] will be arranged in a Row or Column widget when [build] is called,
  /// depending on the flex direction set.
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
  
  // === Flex Wrap ===
  /// flex-wrap -> 允许子元素换行（使用 Wrap widget）
  FlexBuilder flexWrap() {
    _flexWrap = true;
    return this;
  }
  
  /// flex-nowrap -> 不允许子元素换行（使用 Row/Column）
  FlexBuilder flexNowrap() {
    _flexWrap = false;
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
  
  // === Space Between Children (Tailwind CSS space-x, space-y) ===
  // space-x 和 space-y 实际上就是 gap，但为了保持 Tailwind CSS 的命名习惯，我们提供这些方法
  
  /// space-x-{size} -> 在水平方向的子元素之间添加间距（等同于 gap）
  FlexBuilder spaceX(double size) {
    if (_direction == Axis.horizontal) {
      return gap(size);
    }
    // 如果是垂直方向，space-x 不起作用
    return this;
  }
  
  /// space-y-{size} -> 在垂直方向的子元素之间添加间距（等同于 gap）
  FlexBuilder spaceY(double size) {
    if (_direction == Axis.vertical) {
      return gap(size);
    }
    // 如果是水平方向，space-y 不起作用
    return this;
  }
  
  /// space-x-reverse -> 反转水平方向的间距顺序
  FlexBuilder spaceXReverse() {
    if (_direction == Axis.horizontal) {
      _spaceReverse = true;
    }
    return this;
  }
  
  /// space-y-reverse -> 反转垂直方向的间距顺序
  FlexBuilder spaceYReverse() {
    if (_direction == Axis.vertical) {
      _spaceReverse = true;
    }
    return this;
  }
  
  // space-x 快捷方法
  FlexBuilder spaceX0() => spaceX(0);
  FlexBuilder spaceX1() => spaceX(4.0);
  FlexBuilder spaceX2() => spaceX(8.0);
  FlexBuilder spaceX3() => spaceX(12.0);
  FlexBuilder spaceX4() => spaceX(16.0);
  FlexBuilder spaceX5() => spaceX(20.0);
  FlexBuilder spaceX6() => spaceX(24.0);
  FlexBuilder spaceX8() => spaceX(32.0);
  FlexBuilder spaceX10() => spaceX(40.0);
  FlexBuilder spaceX12() => spaceX(48.0);
  FlexBuilder spaceX16() => spaceX(64.0);
  FlexBuilder spaceX20() => spaceX(80.0);
  FlexBuilder spaceX24() => spaceX(96.0);
  FlexBuilder spaceX32() => spaceX(128.0);
  
  // space-y 快捷方法
  FlexBuilder spaceY0() => spaceY(0);
  FlexBuilder spaceY1() => spaceY(4.0);
  FlexBuilder spaceY2() => spaceY(8.0);
  FlexBuilder spaceY3() => spaceY(12.0);
  FlexBuilder spaceY4() => spaceY(16.0);
  FlexBuilder spaceY5() => spaceY(20.0);
  FlexBuilder spaceY6() => spaceY(24.0);
  FlexBuilder spaceY8() => spaceY(32.0);
  FlexBuilder spaceY10() => spaceY(40.0);
  FlexBuilder spaceY12() => spaceY(48.0);
  FlexBuilder spaceY16() => spaceY(64.0);
  FlexBuilder spaceY20() => spaceY(80.0);
  FlexBuilder spaceY24() => spaceY(96.0);
  FlexBuilder spaceY32() => spaceY(128.0);
  
  // === Divide Between Children (Tailwind CSS divide-x, divide-y) ===
  
  /// divide-x -> 在水平方向的子元素之间添加垂直分隔线
  FlexBuilder divideX({Color? color, double? width, BorderStyle? style}) {
    _divideX = true;
    _divideY = false;
    if (color != null) _divideColor = color;
    if (width != null) _divideWidth = width;
    // 注意：style 参数保留以便将来扩展，但目前 Flutter Container 不支持 BorderStyle
    return this;
  }
  
  /// divide-y -> 在垂直方向的子元素之间添加水平分隔线
  FlexBuilder divideY({Color? color, double? width, BorderStyle? style}) {
    _divideX = false;
    _divideY = true;
    if (color != null) _divideColor = color;
    if (width != null) _divideWidth = width;
    // 注意：style 参数保留以便将来扩展，但目前 Flutter Container 不支持 BorderStyle
    return this;
  }
  
  /// divide-x-reverse -> 反转水平方向的分隔线顺序
  FlexBuilder divideXReverse() {
    if (_divideX) {
      _divideReverse = true;
    }
    return this;
  }
  
  /// divide-y-reverse -> 反转垂直方向的分隔线顺序
  FlexBuilder divideYReverse() {
    if (_divideY) {
      _divideReverse = true;
    }
    return this;
  }
  
  /// divide-{color} -> 设置分隔线颜色（通过 divideX 或 divideY 的 color 参数）
  FlexBuilder divideColor(Color color) {
    _divideColor = color;
    return this;
  }
  
  /// divide-{width} -> 设置分隔线宽度（通过 divideX 或 divideY 的 width 参数）
  FlexBuilder divideWidth(double width) {
    _divideWidth = width;
    return this;
  }
  
  /// divide-solid -> 实线分隔线（默认）
  FlexBuilder divideSolid() {
    // Flutter Container 默认就是实线
    return this;
  }
  
  /// divide-dashed -> 虚线分隔线（Flutter 中暂不支持，使用实线代替）
  FlexBuilder divideDashed() {
    // Flutter Container 不支持 dashed，使用实线代替
    return this;
  }
  
  /// divide-dotted -> 点线分隔线（Flutter 中暂不支持，使用实线代替）
  FlexBuilder divideDotted() {
    // Flutter Container 不支持 dotted，使用实线代替
    return this;
  }
  
  /// divide-none -> 移除分隔线
  FlexBuilder divideNone() {
    _divideX = false;
    _divideY = false;
    return this;
  }
  
  
  /// 构建Flex组件 - 只负责布局，不含视觉样式
  Widget build() {
    // 先处理order排序，再处理gap间距，最后处理divide分隔线
    List<Widget> orderedChildren = _buildOrderedChildren();
    List<Widget> childrenWithGap = _buildChildrenWithGap(orderedChildren);
    List<Widget> childrenWithDivide = _buildChildrenWithDivide(childrenWithGap);
    
    // 如果启用了 flex-wrap，使用 Wrap widget
    if (_flexWrap) {
      // 将 MainAxisAlignment 转换为 WrapAlignment
      WrapAlignment wrapAlignment = WrapAlignment.start;
      switch (_mainAxisAlignment) {
        case MainAxisAlignment.start:
          wrapAlignment = WrapAlignment.start;
          break;
        case MainAxisAlignment.end:
          wrapAlignment = WrapAlignment.end;
          break;
        case MainAxisAlignment.center:
          wrapAlignment = WrapAlignment.center;
          break;
        case MainAxisAlignment.spaceBetween:
          wrapAlignment = WrapAlignment.spaceBetween;
          break;
        case MainAxisAlignment.spaceAround:
          wrapAlignment = WrapAlignment.spaceAround;
          break;
        case MainAxisAlignment.spaceEvenly:
          wrapAlignment = WrapAlignment.spaceEvenly;
          break;
      }
      
      // 将 CrossAxisAlignment 转换为 WrapCrossAlignment
      WrapCrossAlignment wrapCrossAlignment = WrapCrossAlignment.start;
      switch (_crossAxisAlignment) {
        case CrossAxisAlignment.start:
          wrapCrossAlignment = WrapCrossAlignment.start;
          break;
        case CrossAxisAlignment.end:
          wrapCrossAlignment = WrapCrossAlignment.end;
          break;
        case CrossAxisAlignment.center:
          wrapCrossAlignment = WrapCrossAlignment.center;
          break;
        case CrossAxisAlignment.stretch:
          wrapCrossAlignment = WrapCrossAlignment.center; // Wrap 不支持 stretch
          break;
        case CrossAxisAlignment.baseline:
          wrapCrossAlignment = WrapCrossAlignment.start; // Wrap 不支持 baseline
          break;
      }
      
      return Wrap(
        direction: _direction,
        alignment: wrapAlignment,
        spacing: _gap ?? 0.0,
        runAlignment: wrapAlignment,
        runSpacing: _gap ?? 0.0,
        crossAxisAlignment: wrapCrossAlignment,
        textDirection: _textDirection,
        verticalDirection: _verticalDirection,
        children: childrenWithDivide,
      );
    }
    
    // 否则使用 Row/Column
    if (_direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: _mainAxisAlignment,
        crossAxisAlignment: _crossAxisAlignment,
        mainAxisSize: _mainAxisSize,
        textDirection: _textDirection,
        verticalDirection: _verticalDirection,
        children: childrenWithDivide,
      );
    } else {
      return Column(
        mainAxisAlignment: _mainAxisAlignment,
        crossAxisAlignment: _crossAxisAlignment,
        mainAxisSize: _mainAxisSize,
        textDirection: _textDirection,
        verticalDirection: _verticalDirection,
        children: childrenWithDivide,
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
    
    // 如果设置了 reverse，反转列表
    if (_spaceReverse) {
      targetChildren = targetChildren.reversed.toList();
    }
    
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
    
    // 如果设置了 reverse，再次反转结果
    if (_spaceReverse) {
      result = result.reversed.toList();
    }
    
    return result;
  }
  
  /// 构建带分隔线的子组件列表
  List<Widget> _buildChildrenWithDivide([List<Widget>? childrenList]) {
    List<Widget> targetChildren = childrenList ?? children;
    
    if ((!_divideX && !_divideY) || targetChildren.isEmpty || targetChildren.length < 2) {
      return targetChildren;
    }
    
    List<Widget> result = [];
    
    // 如果设置了 reverse，反转列表
    if (_divideReverse) {
      targetChildren = targetChildren.reversed.toList();
    }
    
    for (int i = 0; i < targetChildren.length; i++) {
      result.add(targetChildren[i]);
      
      // 在非最后一个元素后添加分隔线
      if (i < targetChildren.length - 1) {
        if (_divideX && _direction == Axis.horizontal) {
          // 垂直分隔线（在水平布局中）
          result.add(
            Container(
              width: _divideWidth,
              color: _divideColor,
            ),
          );
        } else if (_divideY && _direction == Axis.vertical) {
          // 水平分隔线（在垂直布局中）
          result.add(
            Container(
              height: _divideWidth,
              color: _divideColor,
            ),
          );
        }
      }
    }
    
    // 如果设置了 reverse，再次反转结果
    if (_divideReverse) {
      result = result.reversed.toList();
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
