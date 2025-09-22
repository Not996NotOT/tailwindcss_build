import 'package:flutter/material.dart';

/// Tailwind CSS Order utilities for Flutter
/// Utilities for controlling the order of flex and grid items.
extension OrderExt on Widget {
  
  // === Order utilities ===
  
  /// order-1 -> order: 1;
  Widget order1() => _OrderWrapper(order: 1, child: this);
  
  /// order-2 -> order: 2;
  Widget order2() => _OrderWrapper(order: 2, child: this);
  
  /// order-3 -> order: 3;
  Widget order3() => _OrderWrapper(order: 3, child: this);
  
  /// order-4 -> order: 4;
  Widget order4() => _OrderWrapper(order: 4, child: this);
  
  /// order-5 -> order: 5;
  Widget order5() => _OrderWrapper(order: 5, child: this);
  
  /// order-6 -> order: 6;
  Widget order6() => _OrderWrapper(order: 6, child: this);
  
  /// order-7 -> order: 7;
  Widget order7() => _OrderWrapper(order: 7, child: this);
  
  /// order-8 -> order: 8;
  Widget order8() => _OrderWrapper(order: 8, child: this);
  
  /// order-9 -> order: 9;
  Widget order9() => _OrderWrapper(order: 9, child: this);
  
  /// order-10 -> order: 10;
  Widget order10() => _OrderWrapper(order: 10, child: this);
  
  /// order-11 -> order: 11;
  Widget order11() => _OrderWrapper(order: 11, child: this);
  
  /// order-12 -> order: 12;
  Widget order12() => _OrderWrapper(order: 12, child: this);
  
  /// order-first -> order: -9999;
  Widget orderFirst() => _OrderWrapper(order: -9999, child: this);
  
  /// order-last -> order: 9999;
  Widget orderLast() => _OrderWrapper(order: 9999, child: this);
  
  /// order-none -> order: 0;
  Widget orderNone() => _OrderWrapper(order: 0, child: this);
  
  /// 自定义order值
  Widget order(int orderValue) => _OrderWrapper(order: orderValue, child: this);
}

/// Order包装器，用于标记order信息
class _OrderWrapper extends StatelessWidget {
  final int order;
  final Widget child;
  
  const _OrderWrapper({
    required this.order,
    required this.child,
  });
  
  @override
  Widget build(BuildContext context) {
    return child;
  }
}

/// 用于处理order排序的扩展
extension OrderListExt on List<Widget> {
  
  /// 根据order值排序并创建Flex容器
  Widget flexWithOrder({
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    final sortedWidgets = _sortByOrder();
    
    return Flex(
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: sortedWidgets,
    );
  }
  
  /// 根据order值排序并创建Row容器
  Widget rowWithOrder({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    final sortedWidgets = _sortByOrder();
    
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: sortedWidgets,
    );
  }
  
  /// 根据order值排序并创建Column容器
  Widget columnWithOrder({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    final sortedWidgets = _sortByOrder();
    
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: sortedWidgets,
    );
  }
  
  /// 根据order值排序并创建Wrap容器
  Widget wrapWithOrder({
    Axis direction = Axis.horizontal,
    WrapAlignment alignment = WrapAlignment.start,
    double spacing = 0.0,
    WrapAlignment runAlignment = WrapAlignment.start,
    double runSpacing = 0.0,
  }) {
    final sortedWidgets = _sortByOrder();
    
    return Wrap(
      direction: direction,
      alignment: alignment,
      spacing: spacing,
      runAlignment: runAlignment,
      runSpacing: runSpacing,
      children: sortedWidgets,
    );
  }
  
  /// 内部方法：根据order值排序
  List<Widget> _sortByOrder() {
    final List<Widget> sortedWidgets = [...this];
    
    sortedWidgets.sort((a, b) {
      final aOrder = _extractOrder(a);
      final bOrder = _extractOrder(b);
      return aOrder.compareTo(bOrder);
    });
    
    return sortedWidgets;
  }
  
  /// 提取Widget的order值
  int _extractOrder(Widget widget) {
    if (widget is _OrderWrapper) {
      return widget.order;
    }
    return 0; // 默认order值
  }
}

/// Order工具类
class Order {
  /// 设置order为1
  static Widget order1(Widget child) => child.order1();
  
  /// 设置order为2
  static Widget order2(Widget child) => child.order2();
  
  /// 设置order为3
  static Widget order3(Widget child) => child.order3();
  
  /// 设置order为first
  static Widget first(Widget child) => child.orderFirst();
  
  /// 设置order为last
  static Widget last(Widget child) => child.orderLast();
  
  /// 设置order为none
  static Widget none(Widget child) => child.orderNone();
  
  /// 自定义order值
  static Widget custom(Widget child, int order) => child.order(order);
  
  /// 创建有序的Row
  static Widget row(List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) => children.rowWithOrder(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
  );
  
  /// 创建有序的Column
  static Widget column(List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) => children.columnWithOrder(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
  );
  
  /// 创建有序的Flex
  static Widget flex(List<Widget> children, {
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) => children.flexWithOrder(
    direction: direction,
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
  );
  
  /// 创建有序的Wrap
  static Widget wrap(List<Widget> children, {
    Axis direction = Axis.horizontal,
    double spacing = 0.0,
  }) => children.wrapWithOrder(
    direction: direction,
    spacing: spacing,
  );
}
