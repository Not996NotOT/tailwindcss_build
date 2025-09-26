import 'package:flutter/material.dart';

/// Flex容器类 - 简单的StatelessWidget包装
/// 专门用于实现TailwindCSS的flex语法糖
class FlexContainer extends StatelessWidget {
  final Widget child;
  final Axis direction;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;

  const FlexContainer({
    super.key,
    required this.child,
    this.direction = Axis.horizontal,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
  });

  @override
  Widget build(BuildContext context) {
    // 直接返回Row或Column，让它们可以正常应用其他Widget扩展
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: [child],
      );
    } else {
      return Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: [child],
      );
    }
  }

}

/// FlexContainer 特有的扩展方法
/// 使用简化的方法，直接基于Flex原生功能
extension FlexContainerAlignExt on FlexContainer {
  
  // ===== Flex对齐方法 - 直接利用Flex的原生特性 =====
  
  /// items-center -> align-items: center
  FlexContainer itemsCenter() {
    return FlexContainer(
      key: key,
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: mainAxisSize,
      child: child,
    );
  }

  /// justify-center -> justify-content: center
  FlexContainer justifyCenter() {
    return FlexContainer(
      key: key,
      direction: direction,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      child: child,
    );
  }

  /// justify-start -> justify-content: flex-start
  FlexContainer justifyStart() {
    return FlexContainer(
      key: key,
      direction: direction,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      child: child,
    );
  }

  /// justify-end -> justify-content: flex-end
  FlexContainer justifyEnd() {
    return FlexContainer(
      key: key,
      direction: direction,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      child: child,
    );
  }

  /// justify-between -> justify-content: space-between
  FlexContainer justifyBetween() {
    return FlexContainer(
      key: key,
      direction: direction,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      child: child,
    );
  }

  /// justify-around -> justify-content: space-around
  FlexContainer justifyAround() {
    return FlexContainer(
      key: key,
      direction: direction,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      child: child,
    );
  }

  /// justify-evenly -> justify-content: space-evenly
  FlexContainer justifyEvenly() {
    return FlexContainer(
      key: key,
      direction: direction,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      child: child,
    );
  }

  /// items-start -> align-items: flex-start
  FlexContainer itemsStart() {
    return FlexContainer(
      key: key,
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize,
      child: child,
    );
  }

  /// items-end -> align-items: flex-end
  FlexContainer itemsEnd() {
    return FlexContainer(
      key: key,
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: mainAxisSize,
      child: child,
    );
  }

  /// items-stretch -> align-items: stretch
  FlexContainer itemsStretch() {
    return FlexContainer(
      key: key,
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: mainAxisSize,
      child: child,
    );
  }

  /// items-baseline -> align-items: baseline
  FlexContainer itemsBaseline() {
    return FlexContainer(
      key: key,
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisSize: mainAxisSize,
      child: child,
    );
  }
}
