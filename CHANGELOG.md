## 0.2.8 - 2025-09-23

### 🎨 SVG & Accessibility 最终完善

#### ✨ 新增功能模块
- **svg-utilities**: 完整的SVG支持系统，包含fill、stroke、stroke-width等SVG样式控制
- **accessibility-utilities**: 完整的无障碍性系统，包含forced-color-adjust和高级无障碍功能

#### 🔧 SVG 功能特色
- **填充颜色**: fill-none, fill-inherit, fill-current, fill-transparent 等基础控制
- **完整色系**: 支持所有Tailwind颜色系统，从slate到rose的所有颜色和色阶
- **描边颜色**: stroke-none, stroke-inherit, stroke-current 等描边颜色控制
- **描边宽度**: stroke-0, stroke-1, stroke-2 描边宽度控制
- **SVG组件**: svgIcon(), svgNetwork() SVG图像加载和颜色控制
- **构建器模式**: SvgBuilder 类用于快速构建复杂SVG组件

#### ♿ Accessibility 功能特色
- **强制颜色**: forced-color-adjust-auto, forced-color-adjust-none 强制颜色调整
- **高对比度**: highContrast() 高对比度模式支持
- **暗色适配**: darkModeAdaptive() 暗色模式自动适配
- **动画控制**: reduceMotion() 减少动画（尊重系统设置）
- **屏幕阅读器**: screenReaderFriendly() 屏幕阅读器友好
- **焦点增强**: enhancedFocus() 焦点可见性增强
- **色盲友好**: colorBlindFriendly() 色盲用户友好设计
- **字体自适应**: adaptiveFontSize() 字体大小自适应
- **触摸目标**: minTouchTarget() 最小触摸目标尺寸确保
- **键盘导航**: keyboardNavigable() 键盘导航支持
- **动态字体**: dynamicFont() 动态字体支持
- **系统主题**: systemThemeAdaptive() 系统主题适配

#### 🎨 无障碍辅助工具
- **对比度检查**: AccessibilityChecker.calculateContrastRatio() 颜色对比度计算
- **WCAG标准**: meetsWCAGAA(), meetsWCAGAAA() WCAG无障碍标准检查
- **色盲滤镜**: 支持protanopia(红色盲)、deuteranopia(绿色盲)、tritanopia(蓝色盲)、monochromacy(全色盲)四种色盲类型滤镜
- **无障碍主题**: AccessibilityTheme.highContrastTheme(), largeTextTheme() 预设无障碍主题

#### 📚 API 示例
```dart
// SVG 样式控制
Widget().fillRed500()           // 红色填充
Widget().fillTransparent()      // 透明填充  
Widget().strokeBlue500()        // 蓝色描边
Widget().stroke2()              // 2px描边宽度
Widget().customFill(Colors.purple)
Widget().customStrokeWidth(3.0)

// SVG 组件
Widget().svgIcon(
  assetPath: 'assets/icon.svg',
  width: 24,
  height: 24,
  color: Colors.blue,
)

// SVG 构建器
SvgBuilder()
  .asset('assets/icon.svg')
  .size(32, 32)
  .color(Colors.red)
  .fit(BoxFit.contain)
  .build()

// 无障碍功能
Widget().highContrast(
  enabled: true,
  foregroundColor: Colors.black,
  backgroundColor: Colors.white,
)

Widget().colorBlindFriendly(
  type: ColorBlindType.protanopia,
)

Widget().enhancedFocus(
  focusColor: Colors.blue,
  focusWidth: 2.0,
)

Widget().minTouchTarget(
  minWidth: 44.0,
  minHeight: 44.0,
)

// 无障碍检查
final ratio = AccessibilityChecker.calculateContrastRatio(
  Colors.black, 
  Colors.white,
);
final isAccessible = AccessibilityChecker.meetsWCAGAA(
  Colors.black, 
  Colors.white,
);

// 无障碍主题
MaterialApp(
  theme: AccessibilityTheme.highContrastTheme(),
  // 或
  theme: AccessibilityTheme.largeTextTheme(scaleFactor: 1.5),
)
```

🎉 **重要里程碑**: 这个版本完成了Tailwind CSS在Flutter中的完整实现，包含所有主要功能模块：
- ✅ Layout (Flexbox, Grid, Spacing, Sizing)
- ✅ Typography (Font, Text, Colors)  
- ✅ Backgrounds (Colors, Images, Gradients)
- ✅ Borders & Outline (Width, Color, Style, Radius)
- ✅ Effects (Shadows, Opacity, Blend Modes)
- ✅ Filters (Blur, Brightness, Contrast, Color)
- ✅ Tables (Border, Spacing, Layout)
- ✅ Transitions & Animation (Duration, Easing, Keyframes)
- ✅ Transforms (Rotate, Scale, Translate, Skew)
- ✅ Interactivity (Cursor, Touch, Scroll, Drag)
- ✅ SVG (Fill, Stroke, Width)
- ✅ Accessibility (Color Adjust, High Contrast, WCAG)

## 0.2.7 - 2025-09-23

### 🎯 Interactivity 交互系统完善

#### ✨ 新增功能模块
- **interactivity**: 完整的CSS交互系统，包含cursor、pointer-events、user-select、scroll-behavior等交互功能

#### 🔧 Interactivity 功能特色
- **重点颜色**: accent-color 支持auto、inherit、current、transparent等颜色控制
- **外观样式**: appearance-none, appearance-auto 控制原生样式
- **光标颜色**: caret-color 完整的光标颜色控制
- **颜色方案**: color-scheme 支持normal、light、dark、light-dark模式
- **光标样式**: 完整的cursor支持，包含pointer、text、move、help、resize等30+光标类型
- **字段大小**: field-sizing-content, field-sizing-fixed 字段尺寸控制
- **指针事件**: pointer-events-none, pointer-events-auto 指针事件控制
- **尺寸调整**: resize-none, resize, resize-x, resize-y 尺寸调整控制
- **滚动行为**: scroll-auto, scroll-smooth 滚动行为控制
- **滚动边距**: scroll-margin 0-64完整边距控制，支持方向性控制
- **滚动内边距**: scroll-padding 0-64完整内边距控制，支持方向性控制
- **滚动对齐**: snap-start, snap-end, snap-center, snap-align-none 滚动对齐
- **滚动停止**: snap-normal, snap-always 滚动停止控制
- **滚动类型**: snap-x, snap-y, snap-both, snap-mandatory, snap-proximity 滚动类型
- **触摸动作**: touch-auto到touch-manipulation 完整触摸动作控制
- **用户选择**: select-none, select-text, select-all, select-auto 文本选择控制
- **性能优化**: will-change-auto到will-change-transform 性能优化提示

#### 🎨 高级交互功能
- **拖拽系统**: draggable(), dragTarget() 完整拖拽支持
- **手势检测**: longPressDetector(), doubleTapDetector() 手势识别
- **悬停效果**: hoverEffect(), clickable() 交互反馈
- **焦点管理**: focusDetector(), keyboardListener() 焦点和键盘
- **语义支持**: semantics(), excludeSemantics(), mergeSemantics() 无障碍
- **状态控制**: disabled(), loading() 组件状态管理

#### 📚 API 示例
```dart
// 光标控制
Widget().cursorPointer()      // 手型光标
Widget().cursorText()         // 文本光标
Widget().cursorMove()         // 移动光标
Widget().cursorNotAllowed()   // 禁止光标
Widget().customCursor(SystemMouseCursors.grab)

// 指针事件
Widget().pointerEventsNone()  // 禁用指针事件
Widget().pointerEventsAuto()  // 启用指针事件

// 用户选择
Widget().selectNone()         // 禁止选择
Widget().selectText()         // 允许文本选择
Widget().selectAll()          // 允许全选

// 滚动控制
Widget().scrollSmooth()       // 平滑滚动
Widget().scrollM4()           // 滚动边距4
Widget().scrollP8()           // 滚动内边距8
Widget().snapCenter()         // 滚动对齐中心

// 触摸控制
Widget().touchPanX()          // X轴平移
Widget().touchPanY()          // Y轴平移
Widget().touchPinchZoom()     // 缩放手势

// 高级交互
Widget().draggable(
  data: 'item',
  onDragStarted: () => print('开始拖拽'),
);

Widget().dragTarget<String>(
  onAccept: (data) => print('接收: $data'),
);

Widget().clickable(
  onTap: () => print('点击'),
  cursor: SystemMouseCursors.click,
);

Widget().longPressDetector(
  onLongPress: () => print('长按'),
);

Widget().hoverEffect(
  duration: Duration(milliseconds: 200),
);

// 语义支持
Widget().semantics(
  label: '按钮',
  hint: '点击执行操作',
  button: true,
  onTap: () => print('语义点击'),
);

// 状态控制
Widget().disabled()           // 禁用状态
Widget().loading(isLoading: true)  // 加载状态
```

## 0.2.6 - 2025-09-23

### 🔄 Transforms 变换系统完善

#### ✨ 新增功能模块
- **transforms**: 完整的CSS变换系统，包含rotate、scale、translate、skew、perspective等所有变换功能

#### 🔧 Transforms 功能特色
- **背面可见性**: backface-visible, backface-hidden 控制3D变换中背面显示
- **透视效果**: perspective-250 到 perspective-1000 完整透视深度控制
- **透视原点**: perspective-origin-center, perspective-origin-top等9个方向控制
- **旋转变换**: rotate-0 到 rotate-180 正负双向旋转，支持1°到180°精确控制
- **缩放变换**: scale-0 到 scale-150 完整缩放范围，支持整体、X轴、Y轴独立缩放
- **倾斜变换**: skew-x/skew-y 支持1°到12°的X/Y轴倾斜变换
- **平移变换**: translate-x/translate-y 支持像素值、rem值、百分比值完整控制
- **变换原点**: origin-center到origin-top-left等9个原点位置
- **变换样式**: transform-flat, transform-preserve-3d 3D变换样式控制
- **自定义变换**: 支持自定义Matrix4、3D变换组合、翻转效果

#### 📚 API 示例
```dart
// 旋转变换
Widget().rotate45()           // 45度旋转
Widget().rotateNeg90()        // -90度旋转
Widget().customRotate(30)     // 自定义30度旋转

// 缩放变换
Widget().scale150()           // 150%缩放
Widget().scaleX75()           // X轴75%缩放
Widget().scaleY125()          // Y轴125%缩放
Widget().customScale(scaleX: 1.2, scaleY: 0.8)

// 平移变换
Widget().translateX16()       // X轴16px平移
Widget().translateYNeg24()    // Y轴-24px平移
Widget().translateXHalf()     // X轴50%平移
Widget().customTranslate(20, -10)

// 倾斜变换
Widget().skewX12()            // X轴12度倾斜
Widget().skewYNeg6()          // Y轴-6度倾斜
Widget().customSkew(skewX: 15, skewY: -5)

// 透视效果
Widget().perspective500()     // 500px透视
Widget().perspectiveOriginTop()

// 变换原点
Widget().originCenter()       // 中心原点
Widget().originTopLeft()      // 左上角原点

// 3D变换组合
Widget().transform3D(
  rotateX: 45,
  rotateY: 30,
  translateZ: 10,
  scaleX: 1.2,
);

// 翻转效果
Widget().flipHorizontal()     // 水平翻转
Widget().flipVertical()       // 垂直翻转
Widget().flipDiagonal()       // 对角翻转

// 自定义矩阵变换
Widget().customTransform(Matrix4.identity()..rotateZ(0.5))
```

## 0.2.5 - 2025-09-23

### 📊 Tables & 🎬 Transitions & Animation 系统完善

#### ✨ 新增功能模块
- **table-utilities**: 完整的CSS表格系统，包含border-collapse、border-spacing、table-layout、caption-side
- **transition-animation**: 完整的过渡动画系统，包含transition-property、transition-duration、animation等

#### 🔧 Tables 功能特色
- **边框控制**: border-collapse、border-separate 表格边框合并控制
- **边框间距**: border-spacing-0 到 border-spacing-24 完整间距控制
- **表格布局**: table-auto、table-fixed 表格布局模式
- **标题位置**: caption-top、caption-bottom 表格标题位置控制
- **表格构建器**: TableBuilder 类用于快速构建复杂表格
- **单元格样式**: tableHeaderCell、tableDataCell 专用单元格样式
- **边框样式**: tableWithFullBorder、tableWithOuterBorder 等快捷边框设置

#### 🎬 Transitions & Animation 功能特色
- **过渡属性**: transition-all, transition-colors, transition-opacity, transition-shadow, transition-transform
- **过渡行为**: transition-behavior-normal, transition-behavior-allow-discrete
- **过渡时间**: duration-75 到 duration-1000 完整时间控制
- **缓动函数**: ease-linear, ease-in, ease-out, ease-in-out 时间函数
- **过渡延迟**: delay-75 到 delay-1000 延迟控制
- **预置动画**: animate-spin, animate-ping, animate-pulse, animate-bounce
- **自定义动画**: fadeIn, fadeOut, slideIn, scaleIn, rotateIn 等扩展动画
- **悬停效果**: hoverScale, hoverOpacity 交互动画
- **动画管理**: AnimationManager 动画控制器管理类
- **动画序列**: AnimationSequence 复杂动画序列构建

#### 📚 API 示例
```dart
// Tables 表格
TableBuilder()
  .addHeaderRow(['Name', 'Age', 'City'])
  .addDataRow([Text('John'), Text('25'), Text('NYC')])
  .withBorder(TableBorder.all())
  .build()
  .borderCollapse()
  .borderSpacing4()
  .tableFixed();

// 单元格样式
Text('Header').tableHeaderCell(backgroundColor: Colors.grey[200])
Text('Data').tableDataCell(padding: EdgeInsets.all(12))

// Transitions 过渡
Widget()
  .transitionAll(duration: Duration(milliseconds: 300))
  .duration500()
  .easeInOut()
  .delay100();

// Animations 动画
Widget().animateSpin()         // 旋转动画
Widget().animatePulse()        // 脉冲动画
Widget().animateBounce()       // 弹跳动画
Widget().fadeIn()              // 淡入动画
Widget().slideIn()             // 滑入动画
Widget().scaleIn()             // 缩放动画

// 自定义动画
Widget().customAnimation(
  animation: controller,
  builder: (context, child, value) => Transform.scale(
    scale: value,
    child: child,
  ),
);
```

## 0.2.4 - 2025-09-23

### 🎨 Filters 滤镜系统完善

#### ✨ 新增功能模块
- **filter**: 完整的CSS滤镜系统，包含blur、brightness、contrast、drop-shadow等所有滤镜效果
- **backdrop-filter**: 背景滤镜系统，支持backdrop-blur、backdrop-brightness等背景滤镜效果

#### 🔧 功能特色
- **模糊滤镜**: blur-sm, blur, blur-md, blur-lg, blur-xl, blur-2xl, blur-3xl 完整模糊效果
- **亮度滤镜**: brightness-0 到 brightness-200 完整亮度控制范围
- **对比度滤镜**: contrast-0 到 contrast-200 完整对比度控制
- **投影滤镜**: drop-shadow-sm 到 drop-shadow-2xl 多级投影效果
- **色彩滤镜**: grayscale、hue-rotate、invert、saturate、sepia 完整色彩滤镜
- **背景滤镜**: 完整的backdrop-filter支持，用于毛玻璃效果和背景模糊
- **色相旋转**: hue-rotate-15, hue-rotate-30, hue-rotate-60, hue-rotate-90, hue-rotate-180
- **饱和度控制**: saturate-0, saturate-50, saturate-100, saturate-150, saturate-200
- **自定义滤镜**: 支持自定义ImageFilter和ColorFilter矩阵

#### 📚 API 示例
```dart
// 模糊效果
Widget().blur()           // 8px模糊
Widget().blurLg()         // 16px模糊
Widget().backdropBlur()   // 背景模糊

// 亮度对比度
Widget().brightness150()  // 150%亮度
Widget().contrast125()    // 125%对比度

// 色彩滤镜  
Widget().grayscale()      // 灰度效果
Widget().sepia()          // 棕褐色效果
Widget().hueRotate90()    // 90度色相旋转
Widget().saturate150()    // 150%饱和度

// 投影效果
Widget().dropShadow()     // 标准投影
Widget().dropShadowLg()   // 大型投影

// 反色效果
Widget().invert()         // 反色滤镜

// 自定义滤镜
Widget().customBlur(12, 12)        // 自定义模糊
Widget().customBrightness(1.2)     // 自定义亮度
Widget().f(ImageFilter.blur(...))  // 自定义滤镜
```

## 0.2.3 - 2025-09-23

### 🎨 Effects 效果系统完善

#### ✨ 新增功能模块
- **box-shadow**: 盒子阴影控制工具类，包含 shadow-sm, shadow, shadow-md, shadow-lg, shadow-xl, shadow-2xl 等预设
- **text-shadow**: 文字阴影控制工具类，支持多种阴影效果和颜色系统
- **opacity**: 透明度控制工具类，支持 0-100 的完整透明度范围和动画效果
- **mix-blend-mode**: 混合模式控制工具类，支持 multiply, screen, overlay, darken, lighten 等所有CSS混合模式
- **background-blend-mode**: 背景混合模式控制工具类，控制背景图像与背景色的混合
- **mask-utilities**: 遮罩功能集合，包含 mask-clip, mask-composite, mask-image 等完整遮罩系统

#### 🔧 功能特色
- **完整阴影系统**: 从微妙的 shadow-sm 到强烈的 shadow-2xl，支持彩色阴影和自定义阴影
- **文字特效**: 文字阴影、发光、轮廓、浮雕、雕刻等多种文字效果
- **透明度控制**: 支持 0-100% 透明度，包含动画透明度和条件透明度
- **混合模式**: 完整的 CSS 混合模式支持，包含颜色矩阵和滤镜效果
- **遮罩系统**: 渐变遮罩、形状遮罩、文字遮罩等高级视觉效果
- **Material Design**: 内置 Material Design 风格的 elevation 阴影系统
- **Flutter优化**: 针对 Flutter 特性优化，使用 ShaderMask、ColorFiltered 等原生组件

#### 📚 API 示例
```dart
// 阴影效果
Widget().shadow()           // 标准阴影
Widget().shadowLg()         // 大型阴影  
Widget().shadowBlue500()    // 蓝色阴影
Widget().elevation4()       // Material Design阴影

// 文字阴影
Text("Hello").textShadow()     // 文字阴影
Text("Glow").textGlow()        // 文字发光
Text("Outline").textOutline()  // 文字轮廓

// 透明度
Widget().opacity50()        // 50% 透明度
Widget().fadeIn()          // 淡入动画
Widget().hideIf(condition) // 条件隐藏

// 混合模式
Widget().mixBlendMultiply()  // 正片叠底
Widget().sepia()            // 棕褐色效果
Widget().duotoneBlue()      // 蓝色双色调

// 遮罩效果
Widget().fadeEdgeMask()     // 边缘淡化
Widget().circularMask()     // 圆形遮罩
Widget().maskImageLinear()  // 线性渐变遮罩
```

## 0.2.2 - 2025-09-22

### 🎨 Border & Outline 边框轮廓系统完善

#### ✨ 新增功能模块
- **border-width**: 边框宽度控制工具类，支持 border-0, border-2, border-4, border-8 等预设值
- **border-color**: 边框颜色控制工具类，包含完整的 Tailwind CSS 颜色系统支持
- **border-style**: 边框样式控制工具类，支持 solid, dashed, dotted, double 等样式
- **outline-width**: 轮廓宽度控制工具类，使用 BoxShadow 模拟 outline 效果
- **outline-color**: 轮廓颜色控制工具类，包含完整颜色系统和透明度支持
- **outline-style**: 轮廓样式控制工具类，支持多种轮廓样式和动画效果
- **outline-offset**: 轮廓偏移控制工具类，支持精确的偏移量控制

#### 🔧 功能特色
- **完整的方向支持**: 所有边框功能都支持 top/right/bottom/left 四个方向的独立控制
- **逻辑属性支持**: 提供 start/end 逻辑属性，自动适配 LTR/RTL 文本方向
- **色彩系统完整**: 支持 gray/red/blue/green 等色系的 50-900 色阶
- **简化API设计**: 提供 bw(), bc(), bs(), ow(), oc() 等简化方法
- **Flutter优化**: 针对 Flutter 平台特性进行优化，使用 Container 和 BoxShadow 实现
- **Focus样式支持**: 专门的焦点状态轮廓样式，提升用户体验
- **Ring效果**: 模拟 Tailwind CSS 的 ring 效果，支持现代化的轮廓设计

#### 📚 API 示例
```dart
// 边框宽度
Widget().border2()  // 2px边框
Widget().borderT4() // 顶部4px边框
Widget().bw(3)      // 自定义3px边框

// 边框颜色  
Widget().borderRed500()    // 红色边框
Widget().borderTBlue500()  // 顶部蓝色边框
Widget().bc(Colors.purple) // 自定义紫色边框

// 轮廓效果
Widget().outline2()           // 2px轮廓
Widget().outlineRed500()      // 红色轮廓  
Widget().outlineOffset4()     // 4px偏移轮廓
Widget().ringBlue500()        // 蓝色ring效果
```

## 0.2.1 - 2025-09-21

### 🎉 重大更新：完整示例项目重构

#### 📱 全新标签页示例应用
- 重构示例项目为完整的TabBar应用，包含6个功能标签页
- 创建美观的首页，展示所有功能概览和快速开始指南
- 每个功能模块都有专门的演示页面和详细说明

#### 🎨 Border Radius 圆角系统完善
- 完善 border_radius.dart 工具类，全面支持 Tailwind CSS border-radius 功能
- 新增基础圆角工具类：roundedXs(), roundedSm(), roundedMd(), roundedLg(), roundedXl(), rounded2xl(), rounded3xl(), rounded4xl()
- 新增特殊圆角工具类：roundedNone(), roundedFull()
- 新增方向性圆角工具类：roundedT(), roundedR(), roundedB(), roundedL() 系列
- 新增单个角圆角工具类：roundedTl(), roundedTr(), roundedBl(), roundedBr() 系列
- 新增逻辑属性圆角工具类：roundedS(), roundedE(), roundedSs(), roundedSe(), roundedEs(), roundedEe() 系列（支持RTL）
- 新增自定义圆角工具类：r(), rTop(), rBottom(), rLeft(), rRight(), rOnly() 等简化API
- 新增常用圆角值快捷方法：r2(), r4(), r6(), r8(), r12(), r16(), r20(), r24(), r32()

#### 📐 完整演示页面
- **AspectRatioDemo**: 宽高比功能完整演示，包含实际应用场景
- **BorderRadiusDemo**: 圆角功能全面展示，包含RTL支持和组合使用
- **WidthDemo**: 宽度控制演示，包含响应式布局和表单设计
- **HeightDemo**: 高度控制演示，包含界面布局和数据可视化
- **ColorsDemo**: 颜色系统演示，包含配色指南和最佳实践

#### 🛠 技术改进
- 在主文件中导出所有工具类扩展
- 每个demo都穿插使用其他工具类，展示组合效果
- 添加详细的使用说明和最佳实践建议
- 优化代码结构和注释文档

## 0.2.0

- add select widget

## 0.1.9

- add single rounded

## 0.1.8

- fix boder property error

## 0.1.7

- fix img flex1 bug

## 0.1.6

- add example
- add input focus event
- fix grid and flex bug

## 0.1.5

- fix text overflow and wrap
- flx img auto size

## 0.1.4

- fix grid autoheight and gap

## 0.1.3

- add overflow-x and overflow-y

## 0.1.2

- fix bug

## 0.1.1

- fix Input bug and add placeholder

## 0.1.0

- fix bug and add tabs

## 0.0.9

- fix flex layout center bug

## 0.0.8

- add img

## 0.0.7

- add relative

## 0.0.6

- add input example

## 0.0.5

- add border border-radius bg-gradient box-shadow

## 0.0.4

- add textAlign grid grid-cols aspectRadio

## 0.0.3

- add lineHeight maxLine fontStyle

## 0.0.2

- add font size example
- add flex layout

## 0.0.1

- init
