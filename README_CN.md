# Tailwind CSS Build for Flutter

[English](./README.md) | [简体中文](./README_CN.md) | [日本語](./README_JP.md)

一个全面的 Flutter 包，将 Tailwind CSS 工具类的强大功能和便利性带到 Flutter 开发中。该库为 Widget 提供了熟悉的 Tailwind CSS 类名扩展，让您轻松构建响应式和一致的用户界面。

## 🚀 功能特性

### 布局与定位
- **Flexbox**: 完整的 flexbox 工具类（`flex`、`justifyContent`、`alignItems` 等）
- **Grid**: CSS Grid 布局工具类（`gridCols`、`gridRows`、`gap` 等）
- **间距**: 外边距和内边距工具类（`m1`、`p4`、`mx2`、`py8` 等）
- **尺寸**: 宽度和高度工具类（`w64`、`h32`、`wFull`、`hScreen` 等）
- **定位**: 定位工具类（`absolute`、`relative`、`top4`、`left8` 等）
- **显示**: 显示工具类（`block`、`flex`、`grid`、`hidden` 等）

### 字体排版
- **字体族**: 字体族工具类（`fontSans`、`fontSerif`、`fontMono`）
- **字体大小**: 文本大小工具类（`textXs`、`textLg`、`text4xl` 等）
- **字体粗细**: 字体粗细工具类（`fontThin`、`fontBold`、`fontBlack` 等）
- **文本颜色**: 包含完整 Tailwind 色彩调色板的文本颜色工具类
- **文本对齐**: 文本对齐工具类（`textLeft`、`textCenter`、`textRight`）
- **文本装饰**: 文本装饰工具类（`underline`、`lineThrough`）
- **字母间距**: 字母间距工具类（`trackingTight`、`trackingWide`）
- **行高**: 行高工具类（`leadingTight`、`leadingRelaxed`）

### 颜色与背景
- **完整色彩调色板**: 所有 Tailwind CSS 颜色（slate、gray、red、orange、amber、yellow、lime、green、emerald、teal、cyan、sky、blue、indigo、violet、purple、fuchsia、pink、rose）
- **背景颜色**: 背景颜色工具类（`bgRed500`、`bgBlue100` 等）
- **背景图片**: 背景图片工具类和渐变
- **背景属性**: 背景大小、位置、重复、附件工具类

### 边框与效果
- **边框宽度**: 边框宽度工具类（`border`、`border2`、`borderT4` 等）
- **边框颜色**: 包含完整色彩调色板的边框颜色工具类
- **边框样式**: 边框样式工具类（`borderSolid`、`borderDashed` 等）
- **边框圆角**: 边框圆角工具类（`rounded`、`roundedFull`、`roundedXl` 等）
- **阴影**: 阴影工具类（`shadow`、`shadowLg`、`shadowXl` 等）
- **不透明度**: 不透明度工具类（`opacity50`、`opacity75` 等）

### 滤镜与效果
- **背景滤镜**: 背景模糊和滤镜效果
- **滤镜**: 模糊、亮度、对比度、饱和度和其他滤镜工具类
- **混合模式**: 背景和混合模式工具类
- **变换**: 旋转、缩放、平移和倾斜工具类

### 高级功能
- **Widget 扩展**: Widget 类型转换（`asRow`、`asColumn`、`asStack` 等）
- **Flex 容器**: 高级 flexbox 容器工具类
- **网格系统**: 完整的 CSS Grid 实现
- **过渡动画**: 动画和过渡工具类
- **交互性**: 光标、触摸和交互工具类
- **无障碍**: WCAG 合规工具类、色盲支持、高对比度主题
- **SVG 支持**: SVG 样式和操作工具类

### 文本与图标扩展
- **文本转换**: 将 Text widget 转换为样式化的容器
- **图标样式**: 使用 Tailwind 工具类为图标添加样式
- **自定义文本样式**: 带阴影和效果的高级文本样式

## 📦 安装

在您的 `pubspec.yaml` 文件中添加：

```yaml
dependencies:
  tailwindcss_build: ^0.3.1
```

然后运行：

```bash
flutter pub get
```

## 🎯 使用方法

导入包：

```dart
import 'package:tailwindcss_build/tailwindcss_build.dart';
```

### 基础示例

```dart
// 间距和尺寸
Container().w64().h32().p4().m2()

// 颜色和样式
Container().bgBlue500().textWhite().rounded()

// Flexbox 布局
Column(
  children: [
    Text('你好').textXl().fontBold(),
    Text('世界').textGray600(),
  ],
).flex1().justifyCenter().itemsCenter()

// Widget 转换
[
  Icon(Icons.home),
  Text('首页'),
].asRow().justifyBetween().p4()

// 高级样式
Container(
  child: Text('渐变按钮')
    .textWhite()
    .fontSemibold(),
)
.bgGradientToR(from: Colors.blue, to: Colors.purple)
.roundedLg()
.shadowLg()
.p4()
```

### 布局示例

```dart
// Flexbox 布局
Column(
  children: [
    Container().bgRed500().w16().h16(),
    Container().bgBlue500().w16().h16(),
    Container().bgGreen500().w16().h16(),
  ],
).flex1().justifySpaceBetween().itemsCenter()

// Grid 布局
Container(
  child: Column(
    children: [
      Row(children: [
        Container().bgRed500().flex1().h16(),
        Container().bgBlue500().flex1().h16(),
      ]),
      Row(children: [
        Container().bgGreen500().flex1().h16(),
        Container().bgYellow500().flex1().h16(),
      ]),
    ],
  ),
).gridCols2().gap4().p4()
```

### 排版示例

```dart
// 文本样式
Text('大标题')
  .text4xl()
  .fontBold()
  .textGray900()
  .trackingTight()

Text('副标题')
  .textLg()
  .fontMedium()
  .textGray600()
  .leadingRelaxed()

Text('正文')
  .textBase()
  .textGray700()
  .leadingNormal()
```

### 颜色示例

```dart
// 使用颜色工具类
Container().bgRed50()    // 非常浅的红色
Container().bgRed500()   // 中等红色  
Container().bgRed900()   // 非常深的红色

// 文本颜色
Text('错误').textRed500()
Text('成功').textGreen500()
Text('警告').textYellow500()
Text('信息').textBlue500()
```

### 高级功能

```dart
// Widget 转换
List<Widget> widgets = [
  Icon(Icons.home),
  Text('首页'),
  Icon(Icons.arrow_forward),
];

// 转换为 Row
Row homeRow = widgets.asRow().justifyBetween();

// 转换为 Column  
Column homeColumn = widgets.asColumn().itemsCenter();

// 转换为 Stack
Stack homeStack = widgets.asStack().center();

// 转换为 Wrap
Wrap homeWrap = widgets.asWrap().spacingXl();
```

```dart
// 无障碍功能
Container()
  .highContrast(
    enabled: true,
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
  )
  .colorBlindFriendly(type: ColorBlindType.protanopia)
  .minTouchTarget(minWidth: 44.0, minHeight: 44.0)
```

## 🌈 完整色彩调色板

该包包含完整的 Tailwind CSS 色彩调色板，包含所有色调（50, 100, 200, 300, 400, 500, 600, 700, 800, 900, 950）：

- **中性色**: slate、gray、zinc、neutral、stone
- **红色**: red
- **橙色**: orange、amber
- **黄色**: yellow、lime
- **绿色**: green、emerald、teal
- **蓝色**: cyan、sky、blue、indigo
- **紫色**: violet、purple、fuchsia
- **粉色**: pink、rose

## 📱 响应式设计

这些工具类在不同屏幕尺寸和方向上无缝工作，让您轻松构建响应式 Flutter 应用。

## 🔧 高级配置

### 自定义主题
```dart
// 高对比度主题
MaterialApp(
  theme: AccessibilityTheme.highContrastTheme(),
  // ...
)

// 大字体主题
MaterialApp(
  theme: AccessibilityTheme.largeTextTheme(scaleFactor: 1.5),
  // ...
)
```

### 色盲支持
```dart
Widget().colorBlindFriendly(
  type: ColorBlindType.deuteranopia, // 绿色色盲
)
```

## 🤝 贡献

欢迎贡献！请随时提交 Pull Request。

## 📄 许可证

该项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🔗 链接

- [GitHub 仓库](https://github.com/Not996NotOT/tailwindcss_build)
- [Pub.dev 包](https://pub.dev/packages/tailwindcss_build)
- [Tailwind CSS 文档](https://tailwindcss.com/docs)

## 📝 更新日志

查看 [CHANGELOG.md](CHANGELOG.md) 了解详细的更改历史。

---

为 Flutter 社区用 ❤️ 制作
