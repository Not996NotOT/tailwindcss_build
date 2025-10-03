# Overflow 功能使用指南

## 概述

TailwindCSS Build 的 Overflow 功能模块提供了完整的内容溢出控制和滚动行为管理，完全对应 TailwindCSS 的 overflow 类。

## ScrollBuilder 建造者模式

ScrollBuilder 是一个专门处理滚动和溢出行为的建造者类，提供了链式调用的 API。

### 基本用法

```dart
import 'package:tailwindcss_build/tailwindcss_build.dart';

// 将任何 Widget 转换为 ScrollBuilder
Widget myWidget = Text('Hello World');
myWidget.asScrollView().overflowXScroll().build();
```

## Overflow 基础方法

### 1. overflow-visible - 允许内容溢出

允许内容超出容器边界显示。

```dart
Text('这段文字可以溢出容器显示')
    .asScrollView()
    .overflowVisible()
    .build()
```

**对应 CSS:**
```css
overflow: visible;
```

### 2. overflow-hidden - 隐藏溢出内容

超出容器的内容会被裁剪隐藏。

```dart
Text('超出部分会被隐藏' * 10)
    .asScrollView()
    .overflowHidden()
    .build()
    .asContainer()
    .w(200)
    .h(100)
    .build()
```

**对应 CSS:**
```css
overflow: hidden;
```

### 3. overflow-clip - 裁剪溢出内容

类似 hidden，但更严格的裁剪（不允许程序化滚动）。

```dart
Widget()
    .asScrollView()
    .overflowClip()
    .build()
```

**对应 CSS:**
```css
overflow: clip;
```

### 4. overflow-auto - 自动滚动

内容超出时自动显示滚动条（双向滚动）。

```dart
Container(
  width: 600,
  height: 400,
  child: Text('大内容'),
)
    .asScrollView()
    .overflowAuto()
    .build()
```

**对应 CSS:**
```css
overflow: auto;
```

### 5. overflow-scroll - 始终显示滚动

始终显示滚动条（双向滚动）。

```dart
Widget()
    .asScrollView()
    .overflowScroll()
    .build()
```

**对应 CSS:**
```css
overflow: scroll;
```

## Overflow X 轴方法（横向滚动）

### 1. overflow-x-auto - X轴自动滚动

```dart
Row(
  children: List.generate(
    10,
    (index) => Container(
      width: 100,
      height: 80,
      child: Text('Item $index'),
    ),
  ),
)
    .asFlex()
    .build()
    .asScrollView()
    .overflowXAuto()
    .build()
```

**对应 CSS:**
```css
overflow-x: auto;
```

### 2. overflow-x-scroll - X轴始终可滚动

```dart
Widget()
    .asScrollView()
    .overflowXScroll()
    .build()
```

**对应 CSS:**
```css
overflow-x: scroll;
```

### 3. overflow-x-hidden - 隐藏X轴溢出

```dart
Widget()
    .asScrollView()
    .overflowXHidden()
    .build()
```

**对应 CSS:**
```css
overflow-x: hidden;
```

### 4. overflow-x-clip - 裁剪X轴溢出

```dart
Widget()
    .asScrollView()
    .overflowXClip()
    .build()
```

**对应 CSS:**
```css
overflow-x: clip;
```

### 5. overflow-x-visible - 允许X轴溢出

```dart
Widget()
    .asScrollView()
    .overflowXVisible()
    .build()
```

**对应 CSS:**
```css
overflow-x: visible;
```

## Overflow Y 轴方法（垂直滚动）

### 1. overflow-y-auto - Y轴自动滚动

```dart
Column(
  children: List.generate(
    20,
    (index) => Container(
      height: 40,
      child: Text('Row $index'),
    ),
  ),
)
    .asFlex()
    .flexCol()
    .build()
    .asScrollView()
    .overflowYAuto()
    .build()
```

**对应 CSS:**
```css
overflow-y: auto;
```

### 2. overflow-y-scroll - Y轴始终可滚动

```dart
Widget()
    .asScrollView()
    .overflowYScroll()
    .build()
```

**对应 CSS:**
```css
overflow-y: scroll;
```

### 3. overflow-y-hidden - 隐藏Y轴溢出

```dart
Widget()
    .asScrollView()
    .overflowYHidden()
    .build()
```

**对应 CSS:**
```css
overflow-y: hidden;
```

### 4. overflow-y-clip - 裁剪Y轴溢出

```dart
Widget()
    .asScrollView()
    .overflowYClip()
    .build()
```

**对应 CSS:**
```css
overflow-y: clip;
```

### 5. overflow-y-visible - 允许Y轴溢出

```dart
Widget()
    .asScrollView()
    .overflowYVisible()
    .build()
```

**对应 CSS:**
```css
overflow-y: visible;
```

## 辅助方法

### 设置内边距

```dart
Widget()
    .asScrollView()
    .overflowYScroll()
    .padding(EdgeInsets.all(16))
    .build()
```

### 设置滚动控制器

```dart
ScrollController controller = ScrollController();

Widget()
    .asScrollView()
    .overflowYScroll()
    .controller(controller)
    .build()
```

### 设置滚动物理效果

```dart
Widget()
    .asScrollView()
    .overflowYScroll()
    .physics(BouncingScrollPhysics())
    .build()
```

## 链式调用组合

ScrollBuilder 可以与其他 Builder 无缝组合使用。

### 与 FlexBuilder 组合

```dart
[
  Widget1(),
  Widget2(),
  Widget3(),
]
    .asFlex()
    .gap4()
    .build()
    .asScrollView()
    .overflowXScroll()
    .build()
```

### 与 ContainerBuilder 组合

```dart
Widget()
    .asScrollView()
    .overflowYAuto()
    .build()
    .asContainer()
    .h(300)
    .p4()
    .bgGray100()
    .rounded8()
    .shadow()
    .build()
```

### 完整的链式调用示例

```dart
Row(
  children: List.generate(
    8,
    (index) => Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.red[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text('$index')),
    ),
  ),
)
    .asFlex()          // 转换为 FlexBuilder
    .gap2()            // 设置间距
    .build()           // 构建 Flex Widget
    .asScrollView()        // 转换为 ScrollBuilder
    .overflowXAuto()   // 设置横向自动滚动
    .build()           // 构建 ScrollView
    .asContainer()     // 转换为 ContainerBuilder
    .p4()              // 设置内边距
    .bgGray100()       // 设置背景色
    .rounded8()        // 设置圆角
    .build()           // 最终构建
```

## 实际应用场景

### 1. 横向卡片列表

```dart
Row(
  children: products.map((product) => ProductCard(product)).toList(),
)
    .asFlex()
    .gap4()
    .build()
    .asScrollView()
    .overflowXScroll()
    .padding(EdgeInsets.symmetric(horizontal: 16))
    .build()
```

### 2. 聊天消息列表

```dart
Column(
  children: messages.map((msg) => MessageBubble(msg)).toList(),
)
    .asFlex()
    .flexCol()
    .itemsStart()
    .build()
    .asScrollView()
    .overflowYAuto()
    .build()
    .asContainer()
    .hFull()
    .build()
```

### 3. 数据表格横向滚动

```dart
Table(
  children: tableRows,
)
    .asScrollView()
    .overflowXAuto()
    .build()
    .asContainer()
    .wFull()
    .border()
    .borderGray300()
    .build()
```

### 4. 图片画廊

```dart
Row(
  children: images.map((img) => Image.network(img, width: 200)).toList(),
)
    .asFlex()
    .gap3()
    .build()
    .asScrollView()
    .overflowXScroll()
    .build()
```

### 5. 标签选择器

```dart
Row(
  children: tags.map((tag) => Chip(label: Text(tag))).toList(),
)
    .asFlex()
    .gap2()
    .build()
    .asScrollView()
    .overflowXAuto()
    .build()
    .asContainer()
    .p4()
    .build()
```

## 注意事项

1. **双向滚动**: 当同时设置 X 和 Y 轴滚动时，会自动嵌套两个 SingleChildScrollView
2. **性能考虑**: 对于长列表，建议使用 ListView 或 GridView 而不是 ScrollView
3. **滚动控制**: 可以通过 ScrollController 来程序化控制滚动位置
4. **裁剪行为**: visible 会允许内容溢出，hidden/clip 会裁剪内容
5. **物理效果**: 可以自定义 ScrollPhysics 来改变滚动的手感

## Flutter 与 CSS 的对应关系

| TailwindCSS | Flutter 实现 | ScrollBuilder 方法 |
|-------------|--------------|-------------------|
| `overflow: auto` | SingleChildScrollView (双向) | `overflowAuto()` |
| `overflow: hidden` | ClipRect + Clip.hardEdge | `overflowHidden()` |
| `overflow: clip` | ClipRect + Clip.hardEdge | `overflowClip()` |
| `overflow: visible` | Clip.none | `overflowVisible()` |
| `overflow: scroll` | SingleChildScrollView + AlwaysScrollableScrollPhysics | `overflowScroll()` |
| `overflow-x: auto` | SingleChildScrollView (horizontal) | `overflowXAuto()` |
| `overflow-x: scroll` | SingleChildScrollView (horizontal) + AlwaysScrollableScrollPhysics | `overflowXScroll()` |
| `overflow-x: hidden` | ClipRect + Clip.hardEdge | `overflowXHidden()` |
| `overflow-y: auto` | SingleChildScrollView (vertical) | `overflowYAuto()` |
| `overflow-y: scroll` | SingleChildScrollView (vertical) + AlwaysScrollableScrollPhysics | `overflowYScroll()` |
| `overflow-y: hidden` | ClipRect + Clip.hardEdge | `overflowYHidden()` |

## 完整示例

查看完整示例请参考:
- `example/lib/components/overflow_demo.dart` - 完整功能演示
- `example/lib/overflow_test.dart` - 快速测试示例

## 总结

ScrollBuilder 提供了完整的 TailwindCSS overflow 功能实现，通过链式调用和建造者模式，让滚动控制变得简单直观。结合其他 Builder 类，可以快速构建复杂的滚动界面。

