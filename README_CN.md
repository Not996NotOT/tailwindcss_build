# TailwindCSS Build for Flutter

[![pub package](https://img.shields.io/pub/v/tailwindcss_build.svg)](https://pub.dev/packages/tailwindcss_build)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=flat&logo=Flutter&logoColor=white)](https://flutter.dev)

[English](README.md) | [中文](README_CN.md) | [日本語](README_JP.md)

通过我们革命性的**建造者模式**架构，用 Tailwind CSS 实用工具类的强大功能和优雅性改变您的 Flutter 开发体验。

## 🚨 1.0.0 版本前须知

**重要提示**：此包正在积极开发中，目标是 1.0.0 版本。我们可能会引入破坏性更改、弃用 API 或进行架构改进，以提供最佳解决方案。

**当前状态**：v0.4.0 中的建造者模式实现（ContainerBuilder、TextBuilder、FlexBuilder）已准备好用于生产环境，代表了此库的未来方向。

## ✨ 为什么选择 TailwindCSS Build？

### 🎯 前后对比

<details>
<summary><strong>🔥 简单按钮示例</strong></summary>

**传统 Flutter 写法（冗长）：**
```dart
GestureDetector(
  onTap: () => print('按钮被点击！'),
  child: Container(
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    decoration: BoxDecoration(
      color: Color(0xFF2563EB), // blue-600
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 4,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Text(
      '点击我',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
)
```

**TailwindCSS Build 写法（优雅）：**
```dart
Text('点击我')
    .asText()
    .textWhite()
    .fontMedium()
    .asContainer()
    .px6()
    .py3()
    .bgBlue600()
    .r8()
    .shadow()
    .onTap(() => print('按钮被点击！'))
```

**结果**：✨ **代码减少 70%，可读性提升 100%！**

</details>

<details>
<summary><strong>🎨 卡片布局示例</strong></summary>

**传统 Flutter 写法：**
```dart
Container(
  padding: EdgeInsets.all(24),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 10,
        offset: Offset(0, 4),
      ),
    ],
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '卡片标题',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFF111827), // gray-900
        ),
      ),
      SizedBox(height: 8),
      Text(
        '卡片内容在这里...',
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF4B5563), // gray-600
        ),
      ),
    ],
  ),
)
```

**TailwindCSS Build 写法：**
```dart
[
  Text('卡片标题')
      .asText()
      .textXl()
      .fontBold()
      .textGray900()
      .build(),
  SizedBox(height: 8),
  Text('卡片内容在这里...')
      .asText()
      .textBase()
      .textGray600()
      .build(),
].asFlex()
    .flexCol()
    .itemsStart()
    .asContainer()
    .bgWhite()
    .p6()
    .r12()
    .shadowMd()
    .build()
```

**结果**：✨ **自文档化代码，视觉清晰！**

</details>

<details>
<summary><strong>🔄 复杂响应式布局示例</strong></summary>

**传统 Flutter 写法：**
```dart
Container(
  padding: EdgeInsets.all(16),
  color: Color(0xFFF3F4F6), // gray-100
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Expanded(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFEFF6FF), // blue-50
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            '左侧面板',
            style: TextStyle(
              color: Color(0xFF1E40AF), // blue-700
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      SizedBox(width: 16),
      Expanded(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFF0FDF4), // green-50
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            '右侧面板',
            style: TextStyle(
              color: Color(0xFF15803D), // green-700
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ],
  ),
)
```

**TailwindCSS Build 写法：**
```dart
[
  Text('左侧面板')
      .asText()
      .textBlue700()
      .fontMedium()
      .asContainer()
      .bgBlue50()
      .p4()
      .r8()
      .wFull()
      .build(),
  Text('右侧面板')
      .asText()
      .textGreen700()
      .fontMedium()
      .asContainer()
      .bgGreen50()
      .p4()
      .r8()
      .wFull()
      .build(),
].asFlex()
    .flexRow()
    .justifyBetween()
    .itemsStretch()
    .asContainer()
    .bgGray100()
    .p4()
    .build()
```

**结果**：✨ **代码结构与 UI 布局视觉匹配！**

</details>

## 🏗️ 革命性架构

### 🎯 建造者模式优势

- **🚀 性能**：单一组件创建，而非嵌套容器
- **🔗 可链式**：直观的方法链式调用，实现复杂样式
- **🛡️ 类型安全**：完整的编译时检查，配合 Flutter 类型系统
- **💾 内存高效**：减少组件树深度，提升渲染性能

### 🧩 三个核心建造者

| 建造者 | 用途 | 功能特性 | 使用方式 |
|---------|---------|----------|-------|
| **TextBuilder** | 文本样式和排版 | 装饰、变换、溢出控制 | `Text('Hello').asText().textBlue600().underline().decorationRed500().build()` |
| **ContainerBuilder** | 布局、间距和视觉效果 | 完整定位系统 | `.asContainer().px6().py3().bgWhite().positionAbsolute(top: 10, left: 20).build()` |
| **FlexBuilder** | 布局管理（行/列） | Flex属性和间距控制 | `[widgets].asFlex().flexRow().justifyCenter().gap4().asContainer().build()` |

## 🚀 快速开始

### 安装

```yaml
dependencies:
  tailwindcss_build: ^0.4.3
```

### 导入

```dart
import 'package:tailwindcss_build/tailwindcss_build.dart';
```

### 基本使用模式

<details>
<summary><strong>📝 高级文本样式</strong></summary>

```dart
// 基本文本样式
Text('Hello World')
    .asText()
    .textBlue600()    // 颜色
    .textXl()         // 大小
    .fontBold()       // 字重
    .build()

// 高级文本装饰
Text('样式化文本')
    .asText()
    .textRed600()
    .underline()               // 下划线装饰
    .decorationBlue500()       // 装饰颜色
    .decorationDotted()        // 装饰样式
    .decoration2()             // 装饰厚度
    .build()

// 文本变换
Text('变换我')
    .asText()
    .uppercase()               // 大写变换
    .trackingWide()           // 字符间距
    .leadingLoose()           // 行高
    .build()

// 文本溢出控制
Text('很长的文本可能会溢出...')
    .asText()
    .truncate()               // 省略号溢出
    .maxLines(2)             // 最大行数
    .build()
```

</details>

<details>
<summary><strong>🎯 高级容器样式</strong></summary>

```dart
// 基本容器
Text('内容')
    .build()
    .asContainer()
    .px6()           // 水平内边距
    .py3()           // 垂直内边距
    .bgBlue600()     // 背景色
    .r8()            // 边框圆角
    .shadow()        // 阴影
    .build()

// 定位布局
Text('定位元素')
    .asText()
    .textWhite()
    .fontMedium()
    .asContainer()
    .px4()
    .py2()
    .bgRed500()
    .r6()
    .positionAbsolute(     // 绝对定位
      top: 20,
      right: 10,
      width: 200,
    )

// Tailwind风格定位
Text('固定元素')
    .asContainer()
    .px6()
    .py3()
    .bgBlue600()
    .top0()              // top: 0
    .right4()            // right: 16px
    .insetX2()           // left: 8px, right: 8px
    .positionFixed()

// 组合定位
Widget()
    .asContainer()
    .position()          // 启用定位
    .top(50)            // 自定义top值
    .left0()            // 左边缘
    .w64()              // 宽度控制
    .h32()              // 高度控制
    .bgGreen500()
    .build()
```

</details>

<details>
<summary><strong>🔄 弹性布局</strong></summary>

```dart
// 行布局
[
  Text('项目 1').build(),
  Text('项目 2').build(),
  Text('项目 3').build(),
].asFlex()
    .flexRow()          // 方向
    .justifyCenter()    // 主轴对齐
    .itemsCenter()      // 交叉轴对齐
    .asContainer()      // 转换为容器以进行样式设置
    .bgGray100()
    .p4()
    .r8()
    .build()

// 列布局
[
  Text('标题').build(),
  Text('副标题').build(),
].asFlex()
    .flexCol()
    .itemsStart()
    .asContainer()
    .bgWhite()
    .p6()
    .shadowMd()
    .build()
```

</details>

<details>
<summary><strong>🎮 交互元素</strong></summary>

```dart
// 可点击按钮
Text('点击我')
    .asText()
    .textWhite()
    .fontMedium()
    .asContainer()
    .px6()
    .py3()
    .bgBlue600()
    .r8()
    .shadow()
    .onTap(() {
      print('按钮被点击！');
    })

// 无需手动 GestureDetector！
```

</details>

## 🌐 平台支持

### ✅ 完全支持的平台

此包支持所有 Flutter 平台：

- 📱 **Android** - 完全支持移动应用
- 🍎 **iOS** - 完整的 iOS 兼容性  
- 🌐 **Web** - Web 应用程序支持
- 🖥️ **Windows** - 桌面 Windows 应用
- 🍎 **macOS** - 桌面 macOS 应用  
- 🐧 **Linux** - 桌面 Linux 应用

### 🎯 零配置要求

在所有平台上开箱即用，无需额外设置。

## 🎨 完整颜色系统

### 🌈 所有 TailwindCSS 颜色可用

<details>
<summary><strong>背景色（21 个颜色族）</strong></summary>

```dart
// 基础颜色
.bgWhite()      .bgBlack()      .bgTransparent()

// 灰色族（50-950）
.bgGray50()     .bgGray100()    .bgGray200()    ...    .bgGray950()

// 所有颜色族的完整范围：
.bgSlate50()    →  .bgSlate950()     // 石板色
.bgZinc50()     →  .bgZinc950()      // 锌色
.bgNeutral50()  →  .bgNeutral950()   // 中性色
.bgStone50()    →  .bgStone950()     // 石色
.bgRed50()      →  .bgRed950()       // 红色
.bgOrange50()   →  .bgOrange950()    // 橙色
.bgAmber50()    →  .bgAmber950()     // 琥珀色
.bgYellow50()   →  .bgYellow950()    // 黄色
.bgLime50()     →  .bgLime950()      // 青柠色
.bgGreen50()    →  .bgGreen950()     // 绿色
.bgEmerald50()  →  .bgEmerald950()   // 翡翠色
.bgTeal50()     →  .bgTeal950()      // 蓝绿色
.bgCyan50()     →  .bgCyan950()      // 青色
.bgSky50()      →  .bgSky950()       // 天空色
.bgBlue50()     →  .bgBlue950()      // 蓝色
.bgIndigo50()   →  .bgIndigo950()    // 靛蓝色
.bgViolet50()   →  .bgViolet950()    // 紫罗兰色
.bgPurple50()   →  .bgPurple950()    // 紫色
.bgFuchsia50()  →  .bgFuchsia950()   // 紫红色
.bgPink50()     →  .bgPink950()      // 粉色
.bgRose50()     →  .bgRose950()      // 玫瑰色
```

</details>

<details>
<summary><strong>边框色（所有族）</strong></summary>

```dart
// 默认边框（灰色-200）
.border()

// 彩色边框
.border().borderBlue500()
.border().borderRed300()
.border().borderGreen600()

// 自定义边框颜色
.border(color: Colors.purple)

// 所有边框颜色族可用：
.borderGray50()   →  .borderGray950()
.borderBlue50()   →  .borderBlue950()
.borderRed50()    →  .borderRed950()
// ... 所有 21 个颜色族
```

</details>

## 📚 高级示例

<details>
<summary><strong>🏢 仪表板布局</strong></summary>

```dart
[
  // 头部
  Text('仪表板')
      .asText()
      .text2xl()
      .fontBold()
      .textGray900()
      .asContainer()
      .px6()
      .py4()
      .bgWhite()
      .borderB()
      .borderGray200()
      .build(),
  
  // 内容区域
  [
    // 侧边栏
    [
      Text('导航').build(),
      Text('菜单项 1').build(),
      Text('菜单项 2').build(),
    ].asFlex()
        .flexCol()
        .itemsStart()
        .asContainer()
        .bgGray50()
        .p4()
        .w64()
        .build(),
    
    // 主要内容
    Text('主要内容区域')
        .asContainer()
        .bgWhite()
        .p6()
        .wFull()
        .build(),
  ].asFlex()
      .flexRow()
      .itemsStretch()
      .asContainer()
      .hFull()
      .build(),
].asFlex()
    .flexCol()
    .asContainer()
    .hFull()
    .bgGray100()
    .build()
```

</details>

<details>
<summary><strong>💳 产品卡片</strong></summary>

```dart
[
  // 产品图片占位符
  Container(height: 200, color: Colors.grey[300]),
  
  // 产品信息
  [
    Text('产品名称')
        .asText()
        .textLg()
        .fontSemibold()
        .textGray900()
        .build(),
    
    Text('¥199.99')
        .asText()
        .textXl()
        .fontBold()
        .textGreen600()
        .build(),
    
    Text('产品描述在这里...')
        .asText()
        .textSm()
        .textGray600()
        .build(),
    
    // 操作按钮
    [
      Text('添加到购物车')
          .asText()
          .textWhite()
          .fontMedium()
          .asContainer()
          .px4()
          .py2()
          .bgBlue600()
          .r6()
          .onTap(() {}),
          
      Text('♡')
          .asText()
          .textGray400()
          .asContainer()
          .px3()
          .py2()
          .border()
          .borderGray300()
          .r6()
          .onTap(() {}),
    ].asFlex()
        .flexRow()
        .justifyBetween()
        .itemsCenter()
        .build(),
  ].asFlex()
      .flexCol()
      .itemsStart()
      .asContainer()
      .p4()
      .build(),
].asFlex()
    .flexCol()
    .asContainer()
    .bgWhite()
    .r12()
    .shadowLg()
    .build()
```

</details>

<details>
<summary><strong>📱 移动端优先表单</strong></summary>

```dart
[
  Text('注册')
      .asText()
      .text2xl()
      .fontBold()
      .textCenter()
      .textGray900()
      .build(),
  
  SizedBox(height: 24),
  
  // 邮箱输入
  TextFormField(
    decoration: InputDecoration(
      hintText: '输入您的邮箱',
      border: OutlineInputBorder(),
    ),
  ).asContainer()
      .px4()
      .py2()
      .bgWhite()
      .border()
      .borderGray300()
      .r8()
      .build(),
  
  SizedBox(height: 16),
  
  // 密码输入
  TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      hintText: '输入您的密码',
      border: OutlineInputBorder(),
    ),
  ).asContainer()
      .px4()
      .py2()
      .bgWhite()
      .border()
      .borderGray300()
      .r8()
      .build(),
  
  SizedBox(height: 24),
  
  // 提交按钮
  Text('创建账户')
      .asText()
      .textWhite()
      .fontMedium()
      .textCenter()
      .asContainer()
      .px6()
      .py3()
      .bgBlue600()
      .r8()
      .shadow()
      .wFull()
      .onTap(() {}),
      
].asFlex()
    .flexCol()
    .asContainer()
    .bgGray50()
    .p6()
    .wFull()
    .build()
```

</details>

## 🎯 性能和最佳实践

### ⚡ 性能优势

<details>
<summary><strong>组件树优化</strong></summary>

**之前（多个嵌套容器）：**
```
Container
  └── Container (内边距)
      └── Container (背景)
          └── Container (边框)
              └── Container (阴影)
                  └── Text
```

**之后（单一优化容器）：**
```
Container (所有属性合并)
  └── Text
```

**结果**：🚀 **组件减少 5 倍，渲染速度提升 3 倍**

</details>

### 🛡️ 类型安全和智能提示

```dart
// 完整的自动完成支持
Text('Hello')
    .asText()
    .text     // ← 显示：textXs, textSm, textBase, textLg...
    .font     // ← 显示：fontThin, fontLight, fontNormal...
    .asContainer()
    .bg       // ← 显示：bgWhite, bgBlack, bgGray50...
    .p        // ← 显示：p1, p2, p3, px2, py4...
```

### 📋 推荐链式顺序

```dart
// 最佳链式模式
Text('文本')
    .asText()           // 1. 转换为文本建造者
    .textXl()           // 2. 文本特定样式
    .fontBold()         // 
    .textBlue600()      // 
    .asContainer()      // 3. 转换为容器建造者
    .px6()              // 4. 间距
    .py3()              // 
    .bgWhite()          // 5. 背景
    .border()           // 6. 边框
    .borderGray300()    // 
    .r8()               // 7. 边框圆角
    .shadow()           // 8. 效果
    .build()            // 9. 最终构建
```

## 📖 API 参考

### 🏗️ 核心建造者

<details>
<summary><strong>TextBuilder 方法</strong></summary>

```dart
// 文本大小
.textXs()     .textSm()     .textBase()   .textLg()
.textXl()     .text2xl()    .text3xl()    .text4xl()

// 字体重量  
.fontThin()   .fontLight()  .fontNormal() .fontMedium()
.fontSemibold() .fontBold() .fontExtrabold() .fontBlack()

// 文本颜色（所有 TailwindCSS 颜色）
.textWhite()  .textBlack()  .textGray50() ... .textGray950()
.textRed50()  ... .textRed950()  // 所有颜色族

// 文本对齐
.textLeft()   .textCenter() .textRight()  .textJustify()

// 文本装饰线
.underline()  .overline()   .lineThrough() .noUnderline()
.underlineLineThrough()  .underlineOverline()  .allDecorations()

// 文本装饰样式
.decorationSolid() .decorationDouble() .decorationDotted()
.decorationDashed() .decorationWavy()

// 文本装饰厚度
.decoration0() .decoration1() .decoration2() .decoration4() .decoration8()
.decorationAuto() .decorationFromFont() .decorationCustom(3.5)

// 文本装饰颜色（完整 TailwindCSS 调色板）
.decorationRed500() .decorationBlue600() .decorationGreen700()
.decorationPurple500() .decorationYellow400() // 所有颜色族

// 文本变换
.uppercase()  .lowercase()  .capitalize()  .normalCase()

// 文本溢出和换行
.truncate()   .textEllipsis() .textClip()
.textWrap()   .textNowrap()   .textBalance()  .textPretty()

// 行高和字符间距
.leadingNone() .leadingTight() .leadingSnug() .leadingNormal()
.leadingRelaxed() .leadingLoose()
.trackingTighter() .trackingTight() .trackingNormal() .trackingWide()
.trackingWider() .trackingWidest()
```

</details>

<details>
<summary><strong>ContainerBuilder 方法</strong></summary>

```dart
// 内边距和外边距
.p0() .p1() .p2() .p3() .p4() ... .p96()
.px0() .py0() .pl0() .pr0() .pt0() .pb0() // 方向性
.m0() .m1() .m2() ... .m96() // 外边距变体

// 背景色（所有 TailwindCSS 颜色）
.bgWhite() .bgBlack() .bgTransparent()
.bgGray50() ... .bgGray950() // 所有颜色族

// 边框
.border() .borderT() .borderR() .borderB() .borderL()
.border0() .border2() .border4() .border8() // 宽度
.borderSolid() .borderDashed() .borderDotted()

// 边框颜色
.borderGray50() ... .borderGray950() // 所有颜色族

// 边框圆角
.r0() .r1() .r2() .r3() .r4() .r6() .r8() .r12() .r16() .r20() .r24()
.rFull() .rNone()

// 阴影
.shadow() .shadowSm() .shadowMd() .shadowLg() .shadowXl() .shadow2xl()
.shadowInner() .shadowNone()

// 尺寸
.w0() .w1() ... .w96() .wAuto() .wFull() .wScreen()
.h0() .h1() ... .h96() .hAuto() .hFull() .hScreen()

// 定位系统
.position()              // 启用定位
.positionStatic()        // 默认定位
.positionRelative()      // 相对定位
.positionAbsolute()      // 绝对定位
.positionFixed()         // 固定定位
.positionSticky()        // 粘性定位

// 定位值（Tailwind风格）
.top0() .top1() .top2() .top4() .top(50)    // 顶部定位
.right0() .right1() .right2() .right4() .right(30)  // 右侧定位
.bottom0() .bottom1() .bottom2() .bottom4() .bottom(20) // 底部定位
.left0() .left1() .left2() .left4() .left(10)  // 左侧定位

// Inset 快捷方式
.inset0() .inset1() .inset2() .inset4()     // 所有方向
.insetX0() .insetX1() .insetX2()            // 水平（左 + 右）
.insetY0() .insetY1() .insetY2()            // 垂直（上 + 下）

// 自定义定位
.positioned(top: 20, left: 10, width: 200, height: 100)

// 交互
.onTap(() {}) .onDoubleTap(() {}) .onLongPress(() {})
```

</details>

<details>
<summary><strong>FlexBuilder 方法</strong></summary>

```dart
// 方向
.flexRow() .flexCol()

// 主轴对齐  
.justifyStart() .justifyEnd() .justifyCenter()
.justifyBetween() .justifyAround() .justifyEvenly()

// 交叉轴对齐
.itemsStart() .itemsEnd() .itemsCenter()
.itemsStretch() .itemsBaseline()

// Flex 属性
.flex1() .flex2() .flex3() // 固定 flex 值
.flexAuto() .flexNone() .flex(int) // 自定义 flex

// 间距（子元素之间的间距）
.gap1() .gap2() .gap3() .gap4() .gap6() .gap8() .gap12() .gap16()
.gap(double) // 自定义间距值
```

</details>

### 🔗 方法链式调用

所有建造者都支持流畅的方法链式调用：
```dart
Text('你好')
    .asText()        // 转换为 TextBuilder
    .textBlue600()   // 文本样式
    .fontBold()      // 更多文本样式
    .asContainer()   // 转换为 ContainerBuilder  
    .px6()           // 容器样式
    .py3()           // 更多容器样式
    .bgWhite()       // 背景
    .r8()            // 边框圆角
    .shadow()        // 投影
    .onTap(() {})    // 交互
    // 使用时自动调用 .build()
```

## ❓ 常见问题

<details>
<summary><strong>为什么使用建造者模式而不是直接组件样式？</strong></summary>

1. **性能**：创建单个优化组件而不是嵌套容器
2. **可读性**：自文档化代码，读起来像 CSS 类
3. **类型安全**：完整的编译时检查和 IntelliSense 支持
4. **可维护性**：所有样式需求的一致 API
5. **内存效率**：减少组件树深度

</details>

<details>
<summary><strong>与其他 Flutter 样式解决方案相比如何？</strong></summary>

| 特性 | TailwindCSS Build | 传统 Flutter | 其他包 |
|---------|-------------------|-------------------|----------------|
| 代码长度 | 减少 70% | 冗长 | 各异 |
| 性能 | 单个组件 | 嵌套容器 | 各异 |
| 学习曲线 | TailwindCSS 知识 | Flutter 组件 | 包特定 |
| 类型安全 | 完整 | 完整 | 各异 |
| 自定义性 | 高 | 高 | 有限 |

</details>

<details>
<summary><strong>可以将传统 Flutter 组件与建造者混合使用吗？</strong></summary>

可以！建造者设计为与现有 Flutter 代码无缝配合：

```dart
Column(
  children: [
    // 传统 Flutter
    Container(
      padding: EdgeInsets.all(16),
      child: Text('传统'),
    ),
    
    // TailwindCSS Build
    Text('现代')
        .asText()
        .textBlue600()
        .asContainer()
        .p4()
        .bgGray100()
        .build(),
  ],
)
```

</details>

<details>
<summary><strong>是否兼容现有主题和样式？</strong></summary>

是的！建造者尊重 Flutter 的主题系统，可以与以下配合使用：
- Material Design 主题
- 自定义主题
- 深色/浅色模式
- 自定义颜色方案

</details>

<details>
<summary><strong>如何处理响应式设计？</strong></summary>

使用 Flutter 的内置响应式工具与建造者：

```dart
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth > 600) {
      // 桌面布局
      return [widgets].asFlex().flexRow().build();
    } else {
      // 移动布局  
      return [widgets].asFlex().flexCol().build();
    }
  },
)
```

</details>

## 🔄 迁移指南

### 从 0.3.x 到 0.4.0

<details>
<summary><strong>API 变更</strong></summary>

```dart
// ❌ 旧方式（0.3.x）
Text('Hello').textBlue600().fontBold().asContainer().px4().bgWhite()

// ✅ 新方式（0.4.0）
Text('Hello')
    .asText()
    .textBlue600()
    .fontBold()
    .asContainer()
    .px4()
    .bgWhite()
    .build()

// ❌ 旧方法名
.asTextBuilder()  →  .asText()
.asContainerBuilder()  →  .asContainer()

// ✅ 简化交互
// 旧：GestureDetector(onTap: ..., child: widget)
// 新：widget.onTap(...)
```

</details>

## 🧪 测试和调试

### 🔍 组件检查器集成

```dart
// 每个建造者都创建单一、可检查的组件
Text('调试我')
    .asText()
    .textRed600()
    .asContainer()
    .px4()
    .py2()
    .bgRed100()
    .border()
    .borderRed500()
    .r4()
    .build() // ← 检查器树中的单一 Container 组件
```

## 🎨 自定义扩展

<details>
<summary><strong>品牌颜色</strong></summary>

```dart
// 定义您的品牌颜色
extension BrandColors on ContainerBuilder {
  ContainerBuilder bgPrimary() => backgroundColor(Color(0xFF1E40AF));
  ContainerBuilder bgSecondary() => backgroundColor(Color(0xFF7C3AED));
  ContainerBuilder bgAccent() => backgroundColor(Color(0xFF059669));
}

// 使用
Text('品牌按钮')
    .asContainer()
    .px6()
    .py3()
    .bgPrimary()  // 自定义品牌颜色
    .r8()
    .build()
```

</details>

<details>
<summary><strong>自定义间距</strong></summary>

```dart
extension CustomSpacing on ContainerBuilder {
  ContainerBuilder pSection() => padding(EdgeInsets.all(32));
  ContainerBuilder pCard() => padding(EdgeInsets.all(16));
}
```

</details>

## 🤝 贡献

我们欢迎贡献！由于这是 1.0.0 前的包：

1. **检查问题**：查找现有问题或创建新问题
2. **讨论更改**：对于重大更改，请先讨论
3. **遵循模式**：使用已建立的建造者模式架构
4. **添加测试**：为新功能包含测试
5. **更新文档**：为新功能更新文档

## 🌟 社区

- 📖 **文档**：[pub.dev/packages/tailwindcss_build](https://pub.dev/packages/tailwindcss_build)
- 🐛 **问题**：[GitHub Issues](https://github.com/Not996NotOT/tailwindcss_build/issues)
- 💬 **讨论**：[GitHub Discussions](https://github.com/Not996NotOT/tailwindcss_build/discussions)

## 📄 许可证

此项目采用 MIT 许可证 - 详情请参阅 [LICENSE](LICENSE) 文件。

## 🙏 致谢

- 灵感来自 [Tailwind CSS](https://tailwindcss.com/)
- 为 [Flutter](https://flutter.dev/) 社区构建
- 感谢所有贡献者和用户

---

**准备好革命化您的 Flutter 开发了吗？**
```bash
flutter pub add tailwindcss_build
```

*用 TailwindCSS Build 将冗长的 Flutter 代码转换为优雅、可维护且高性能的 UI 声明。*