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
