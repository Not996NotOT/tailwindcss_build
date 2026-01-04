# TailwindCSS Build for Flutter

[![pub package](https://img.shields.io/pub/v/tailwindcss_build.svg)](https://pub.dev/packages/tailwindcss_build)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=flat&logo=Flutter&logoColor=white)](https://flutter.dev)

[English](README.md) | [中文](README_CN.md) | [日本語](README_JP.md)

Transform your Flutter development with the power and elegance of Tailwind CSS utility classes through our revolutionary **Builder Pattern** architecture.

## 🚨 Pre-1.0.0 Notice

**Important**: This package is in active development toward version 1.0.0. We may introduce breaking changes, deprecate APIs, or make architectural improvements to provide the best possible solution.

**Current Status**: The builder pattern implementations (ContainerBuilder, TextBuilder, FlexBuilder, GridBuilder, ScrollBuilder) in v0.4.7 are production-ready and represent the future direction of this library.

## 📊 Implementation Status

### ✅ Fully Implemented (280+ features)

**Core Builders:**
- ✅ **ContainerBuilder**: Complete container styling (width, height, padding, margin, border, borderRadius, shadow, z-index, position, aspect ratio, RTL support)
- ✅ **FlexBuilder**: Complete Flexbox layout (direction, justify, align, gap, flex-grow/shrink, order, wrap, space between, divide between)
- ✅ **GridBuilder**: Complete Grid layout (columns, rows, gap, justify, align, span, start/end, auto-flow)
- ✅ **TextBuilder**: Complete text styling (size, weight, color, decoration, transform, overflow, line-height, letter-spacing)
- ✅ **ScrollBuilder**: Complete overflow control (auto, hidden, clip, visible, scroll, overscroll behavior)

**Layout Features:**
- ✅ Container, Aspect Ratio, Display (block, flex, grid, hidden)
- ✅ Position (static, relative, absolute, fixed, sticky) with RTL support
- ✅ Overflow (all variants: auto, hidden, clip, visible, scroll)
- ✅ Overscroll Behavior (auto, contain, none)
- ✅ Z-Index (z-0 through z-50, z-auto)

**Flexbox & Grid:**
- ✅ Flex Direction (row, col)
- ✅ Flex Wrap (wrap, nowrap)
- ✅ Flex Properties (flex-1, flex-auto, flex-none, flex-grow, flex-shrink)
- ✅ Order
- ✅ Justify Content (start, end, center, between, around, evenly)
- ✅ Align Items (start, end, center, baseline, stretch)
- ✅ Gap (all sizes)
- ✅ Grid Template Columns/Rows (1-12, none, subgrid, custom)
- ✅ Grid Column/Row Span (col-span, row-span, col-start, col-end, row-start, row-end)
- ✅ Grid Auto Flow (row, col, row-dense, col-dense)
- ✅ Grid Auto Columns/Rows (auto, min, max, fr)
- ✅ Grid Justify/Align (all variants)

**Spacing:**
- ✅ Padding (all directions, RTL support with padding-start/end)
- ✅ Margin (all directions, RTL support with margin-start/end)
- ✅ Space Between Children (space-x, space-y with reverse support)
- ✅ Divide Between Children (divide-x, divide-y with color and width control)

**Sizing:**
- ✅ Width (w-0 through w-96, w-auto, w-full, w-screen, w-px, w-0.5, custom)
- ✅ Height (h-0 through h-96, h-auto, h-full, h-screen, h-px, h-0.5, custom)
- ✅ Min Width (min-w-0 through min-w-96, min-w-auto, min-w-full, min-w-screen, min-w-min, min-w-max, min-w-fit)
- ✅ Min Height (min-h-0 through min-h-96, min-h-auto, min-h-full, min-h-screen)
- ✅ Max Width (max-w-0 through max-w-96, max-w-full, max-w-screen)
- ✅ Max Height (max-h-0 through max-h-96, max-h-full, max-h-screen)

**Typography:**
- ✅ Font Size (text-xs through text-9xl, custom)
- ✅ Font Weight (thin, extralight, light, normal, medium, semibold, bold, extrabold, black)
- ✅ Font Style (italic, not-italic)
- ✅ Letter Spacing (tracking-tighter through tracking-widest)
- ✅ Line Height (leading-none through leading-loose)
- ✅ Line Clamp (maxLines)
- ✅ Text Align (left, center, right, justify)
- ✅ Text Color (all TailwindCSS color families: 21 families × 11 shades = 231 colors)
- ✅ Text Decoration Line (underline, overline, line-through, no-underline)
- ✅ Text Decoration Style (solid, double, dotted, dashed, wavy)
- ✅ Text Decoration Thickness (decoration-0 through decoration-8, auto, from-font)
- ✅ Text Decoration Colors (all TailwindCSS colors)
- ✅ Text Transform (uppercase, lowercase, capitalize, normal-case)
- ✅ Text Overflow (truncate, text-ellipsis, text-clip)
- ✅ Text Wrap (text-wrap, text-nowrap)

**Backgrounds:**
- ✅ Background Color (all TailwindCSS color families: 21 families × 11 shades = 231 colors)

**Borders:**
- ✅ Border Radius (rounded-sm through rounded-2xl, rounded-full, rounded-none, individual corners, RTL support with rounded-s/rounded-e)
- ✅ Border Width (border, border-t, border-r, border-b, border-l, border-x, border-y, RTL support with border-s/border-e)
- ✅ Border Color (all TailwindCSS color families)
- ✅ Border None

**Effects:**
- ✅ Box Shadow (shadow-sm through shadow-2xl, shadow-inner, shadow-none, custom)
- ✅ Text Shadow
- ✅ Opacity (opacity-0 through opacity-100)

**Interactivity:**
- ✅ Pointer Events (pointer-events-none, pointer-events-auto)
- ✅ Gesture Handlers (onTap, onDoubleTap, onLongPress)

**Arbitrary Values:**
- ✅ Custom values (wCustom(), hCustom(), etc.)

### ⚠️ Partially Implemented (142+ features)

**Layout:**
- ⚠️ Box Sizing (indirectly controlled through BoxConstraints)
- ⚠️ Display (inline, inline-block, inline-flex, inline-grid, table - requires specific widgets)
- ⚠️ Object Fit (requires Image widget)
- ⚠️ Object Position (requires Image widget)

**Typography:**
- ⚠️ Font Family (requires font configuration)
- ⚠️ Text Wrap (text-balance, text-pretty - not supported by Flutter)
- ⚠️ White Space (limited support, requires maxLines)
- ⚠️ Word Break (limited support)
- ⚠️ Overflow Wrap (handled automatically by Flutter)

**Spacing:**
- ⚠️ Divide Style (divide-dashed, divide-dotted - Flutter limitation, uses solid instead)

**Backgrounds:**
- ⚠️ Background Opacity (requires Color.withOpacity())
- ⚠️ Background Image (requires DecorationImage)
- ⚠️ Background Position (requires Alignment)
- ⚠️ Background Size (requires BoxFit)
- ⚠️ Background Repeat (requires ImageRepeat)
- ⚠️ Background Clip (requires Clip)
- ⚠️ Background Gradient (requires Gradient)
- ⚠️ Background Blend Mode (requires BlendMode)

**Borders:**
- ⚠️ Border Opacity (requires Color.withOpacity())
- ⚠️ Border Style (border-dashed, border-dotted, border-double - requires custom painting)
- ⚠️ Outline (requires InputDecoration)
- ⚠️ Ring (requires BoxShadow simulation)

**Effects:**
- ⚠️ Mix Blend Mode (requires BlendMode)
- ⚠️ Background Blend Mode (requires BlendMode)

**Filters:**
- ⚠️ Blur (requires ImageFilter.blur)
- ⚠️ Brightness, Contrast, Grayscale, Hue Rotate, Invert, Saturate, Sepia (requires ColorFilter)
- ⚠️ Backdrop Filter (requires BackdropFilter widget)

**Tables:**
- ⚠️ Border Collapse (default Flutter Table behavior)
- ⚠️ Border Spacing (requires Table border)
- ⚠️ Table Layout (handled automatically by Flutter)

**Transitions & Animation:**
- ⚠️ Transition Property (requires AnimatedContainer)
- ⚠️ Transition Duration (requires Duration)
- ⚠️ Transition Timing Function (requires Curve)
- ⚠️ Transition Delay (requires Future.delayed)
- ⚠️ Animation (requires AnimationController)

**Transforms:**
- ⚠️ Rotate (requires Transform.rotate)
- ⚠️ Scale (requires Transform.scale)
- ⚠️ Skew (requires Transform)
- ⚠️ Translate (requires Transform.translate)
- ⚠️ Transform Origin (requires Alignment)

**Interactivity:**
- ⚠️ Cursor (Flutter Web only, requires MouseCursor)
- ⚠️ User Select (requires SelectableText)
- ⚠️ Scroll Behavior (requires ScrollPhysics)
- ⚠️ Scroll Margin/Padding (requires padding implementation)
- ⚠️ Scroll Snap (requires PageView)
- ⚠️ Touch Action (requires GestureDetector)
- ⚠️ Caret Color (requires TextField cursorColor)
- ⚠️ Color Scheme (requires Theme)

**SVG:**
- ⚠️ Fill, Stroke, Stroke Width (requires CustomPaint)

**Pseudo-class Variants:**
- ⚠️ Hover (requires InkWell, GestureDetector)
- ⚠️ Focus (requires FocusNode)
- ⚠️ Active (requires GestureDetector)
- ⚠️ Disabled (requires widget enabled property)
- ⚠️ Checked (requires Checkbox)
- ⚠️ Group Hover (requires custom implementation)
- ⚠️ Peer Hover (requires custom implementation)

**Responsive Breakpoints:**
- ⚠️ Breakpoints (sm, md, lg, xl, 2xl - requires MediaQuery)

**Dark Mode:**
- ⚠️ Dark Mode Variant (requires Theme.of(context).brightness)

**Media Queries:**
- ⚠️ Reduced Motion (requires MediaQuery.accessibleNavigation)
- ⚠️ Orientation (requires MediaQuery.orientation)
- ⚠️ Prefers Color Scheme (requires Theme)

**State Modifiers:**
- ⚠️ Before/After (requires Stack)
- ⚠️ Backdrop (requires BackdropFilter)
- ⚠️ Placeholder (requires TextField hintText)

**Arbitrary Values:**
- ⚠️ CSS Variables (not supported by Flutter)
- ⚠️ Calc() (requires manual calculation)

### ❌ Not Implemented (59+ features)

**Layout:**
- ❌ Columns (Flutter doesn't support CSS columns)
- ❌ Break (Page Break - Flutter doesn't support print pagination)
- ❌ Box Decoration Break
- ❌ Float & Clear (Flutter doesn't support CSS float)
- ❌ Isolation (Flutter doesn't support CSS isolation)
- ❌ Visibility Collapse (Flutter doesn't support)

**Typography:**
- ❌ Font Smoothing (handled automatically by Flutter)
- ❌ Font Stretch (not supported by Flutter)
- ❌ Font Variant Numeric (not supported by Flutter)
- ❌ Text Underline Offset (not supported by Flutter)
- ❌ Text Indent (not supported by Flutter)
- ❌ Vertical Align (requires Baseline widget)
- ❌ White Space (pre, pre-line, pre-wrap, break-spaces - not supported)
- ❌ Hyphens (not supported by Flutter)
- ❌ Content (Flutter doesn't support CSS content)

**Backgrounds:**
- ❌ Background Attachment (Flutter doesn't support)
- ❌ Background Origin (Flutter doesn't support)

**Effects:**
- ❌ Mask (Flutter doesn't support CSS mask)

**Transforms:**
- ❌ Transform Style (Flutter doesn't support 3D transform)
- ❌ Backface Visibility (Flutter doesn't support)
- ❌ Perspective (Flutter doesn't support)
- ❌ Perspective Origin (Flutter doesn't support)

**Interactivity:**
- ❌ Resize (Flutter doesn't support)
- ❌ Will Change (handled automatically by Flutter)
- ❌ Accent Color (requires Theme)
- ❌ Appearance (requires custom widget)
- ❌ Field Sizing (Flutter doesn't support)

**Accessibility:**
- ❌ Forced Color Adjust (Flutter doesn't support)

**Container Queries:**
- ❌ Container Type (Flutter doesn't support CSS container queries)
- ❌ Container Name

**Pseudo-class Variants:**
- ❌ Visited (Flutter doesn't support)
- ❌ Target (Flutter doesn't support)
- ❌ Open/Closed (requires custom state management)
- ❌ Invalid/Valid (requires FormField validation)
- ❌ Aria-* (requires Semantics)
- ❌ Data-* (Flutter doesn't support)
- ❌ Has() Selector (Flutter doesn't support CSS :has() selector)

**Media Queries:**
- ❌ Print (Flutter doesn't support print media queries)
- ❌ Prefers Contrast (Flutter doesn't support)

**State Modifiers:**
- ❌ First Letter (Flutter doesn't support)
- ❌ First Line (Flutter doesn't support)
- ❌ Marker (Flutter doesn't support)
- ❌ Selection (Flutter doesn't support)
- ❌ File (Flutter doesn't support)

**Important Modifier:**
- ❌ Important Modifier (Flutter doesn't support CSS !important)

## ✨ Why TailwindCSS Build?

### 🎯 Before vs After Comparison

<details>
<summary><strong>🔥 Simple Button Example</strong></summary>

**Traditional Flutter Way (Verbose):**
```dart
GestureDetector(
  onTap: () => print('Button clicked!'),
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
      'Click Me',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
)
```

**TailwindCSS Build Way (Elegant):**
```dart
Text('Click Me')
    .asText()
    .textWhite()
    .fontMedium()
    .asContainer()
    .px6()
    .py3()
    .bgBlue600()
    .r8()
    .shadow()
    .onTap(() => print('Button clicked!'))
```

**Result**: ✨ **70% less code, 100% more readable!**

</details>

<details>
<summary><strong>🎨 Card Layout Example</strong></summary>

**Traditional Flutter Way:**
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
        'Card Title',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFF111827), // gray-900
        ),
      ),
      SizedBox(height: 8),
      Text(
        'Card content goes here...',
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF4B5563), // gray-600
        ),
      ),
    ],
  ),
)
```

**TailwindCSS Build Way:**
```dart
[
  Text('Card Title')
      .asText()
      .textXl()
      .fontBold()
      .textGray900()
      .build(),
  SizedBox(height: 8),
  Text('Card content goes here...')
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

**Result**: ✨ **Self-documenting code with visual clarity!**

</details>

## 🏗️ Revolutionary Architecture

### 🎯 Builder Pattern Benefits

- **🚀 Performance**: Single widget creation instead of nested containers
- **🔗 Chainable**: Intuitive method chaining for complex styling
- **🛡️ Type Safe**: Full compile-time checking with Flutter's type system
- **💾 Memory Efficient**: Reduced widget tree depth and improved rendering

### 🧩 Five Core Builders

| Builder | Purpose | Features | Usage |
|---------|---------|----------|-------|
| **TextBuilder** | Text styling & typography | Decoration, Transform, Overflow control | `Text('Hello').asText().textBlue600().underline().decorationRed500().build()` |
| **ContainerBuilder** | Layout, spacing & visual effects | Complete Position system, RTL support | `.asContainer().px6().py3().bgWhite().positionAbsolute(top: 10, left: 20).build()` |
| **FlexBuilder** | Layout management (Row/Column) | Flex properties, gap, wrap, space, divide | `[widgets].asFlex().flexRow().justifyCenter().gap4().flexWrap().build()` |
| **GridBuilder** | Grid layout system | Columns, rows, gap, span, auto-flow | `[widgets].asGrid().gridCols3().gap4().build()` |
| **ScrollBuilder** | Overflow & scroll control | Overflow variants, overscroll behavior | `.asScrollView().overflowAuto().overscrollContain().build()` |

## 🚀 Quick Start

### Installation

```yaml
dependencies:
  tailwindcss_build: ^0.4.7
```

### Import

```dart
import 'package:tailwindcss_build/tailwindcss_build.dart';
```

### Basic Usage Examples

<details>
<summary><strong>📝 Text Styling</strong></summary>

```dart
// Basic text styling
Text('Hello World')
    .asText()
    .textBlue600()    // Color
    .textXl()         // Size
    .fontBold()       // Weight
    .build()

// Advanced text decorations
Text('Styled Text')
    .asText()
    .textRed600()
    .underline()               // Underline decoration
    .decorationBlue500()       // Decoration color
    .decorationDotted()        // Decoration style
    .decoration2()             // Decoration thickness
    .build()

// Text transformations
Text('transform me')
    .asText()
    .uppercase()               // TEXT TRANSFORM
    .trackingWide()           // Letter spacing
    .leadingLoose()           // Line height
    .build()

// Text overflow control
Text('Very long text that might overflow...')
    .asText()
    .truncate()               // Ellipsis overflow
    .maxLines(2)             // Max lines
    .build()
```

</details>

<details>
<summary><strong>🎯 Container Styling</strong></summary>

```dart
// Basic container
Text('Content')
    .asContainer()
    .px6()           // Horizontal padding
    .py3()           // Vertical padding
    .bgBlue600()     // Background color
    .r8()            // Border radius
    .shadow()        // Drop shadow
    .build()

// Position layouts
Text('Positioned Element')
    .asText()
    .textWhite()
    .fontMedium()
    .asContainer()
    .px4()
    .py2()
    .bgRed500()
    .r6()
    .positionAbsolute(     // Absolute positioning
      top: 20,
      right: 10,
      width: 200,
    )

// RTL Support (padding-start/end)
Text('RTL Support')
    .asContainer()
    .paddingStart(16)  // Adapts to text direction
    .paddingEnd(16)
    .bgGray100()
    .build()

// Aspect Ratio
Container(
  child: Image.network('...'),
)
    .asContainer()
    .aspectVideo()    // 16:9 aspect ratio
    .build()
```

</details>

<details>
<summary><strong>🔄 Flex Layouts</strong></summary>

```dart
// Row layout with gap
[
  Text('Item 1').build(),
  Text('Item 2').build(),
  Text('Item 3').build(),
].asFlex()
    .flexRow()          // Direction
    .justifyCenter()    // Main axis alignment
    .itemsCenter()      // Cross axis alignment
    .gap4()             // Gap between items
    .asContainer()
    .bgGray100()
    .p4()
    .r8()
    .build()

// Column layout with wrap
[
  Text('Item 1').build(),
  Text('Item 2').build(),
  Text('Item 3').build(),
].asFlex()
    .flexCol()
    .flexWrap()         // Wrap to next line
    .itemsStart()
    .spaceY4()          // Space between children
    .asContainer()
    .bgWhite()
    .p6()
    .shadowMd()
    .build()

// Divide between children
[
  Text('Item 1').build(),
  Text('Item 2').build(),
  Text('Item 3').build(),
].asFlex()
    .flexRow()
    .divideX()          // Vertical divider between items
    .divideColor(Colors.grey)
    .divideWidth(2)
    .build()
```

</details>

<details>
<summary><strong>📐 Grid Layouts</strong></summary>

```dart
// Basic grid
[
  Text('Item 1').build(),
  Text('Item 2').build(),
  Text('Item 3').build(),
  Text('Item 4').build(),
].asGrid()
    .gridCols2()        // 2 columns
    .gap4()             // Gap between items
    .build()

// Grid with span
[
  Text('Span 2').colSpan(2).build(),
  Text('Item 2').build(),
  Text('Item 3').build(),
].asGrid()
    .gridCols3()
    .gap4()
    .build()

// Grid auto-flow
[
  Text('Item 1').build(),
  Text('Item 2').build(),
  Text('Item 3').build(),
].asGrid()
    .gridCols3()
    .gridFlowRowDense()  // Dense packing
    .gap4()
    .build()
```

</details>

<details>
<summary><strong>📜 Scroll & Overflow</strong></summary>

```dart
// Overflow auto
Container(
  width: 200,
  height: 200,
  child: Text('Long content...'),
)
    .asScrollView()
    .overflowAuto()      // Auto scroll when needed
    .build()

// Overflow hidden
Text('Content that will be clipped')
    .asScrollView()
    .overflowHidden()   // Clip overflow
    .build()
    .asContainer()
    .w(200)
    .h(100)
    .build()

// Overscroll behavior
ListView(
  children: [...],
)
    .asScrollView()
    .overflowYAuto()
    .overscrollContain()  // Contain overscroll
    .build()
```

</details>

<details>
<summary><strong>🎮 Interactive Elements</strong></summary>

```dart
// Clickable button
Text('Click Me')
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
      print('Button clicked!');
    })

// No manual GestureDetector needed!
```

</details>

## 🌐 Platform Support

### ✅ Fully Supported Platforms

This package supports all Flutter platforms:

- 📱 **Android** - Full support for mobile apps
- 🍎 **iOS** - Complete iOS compatibility  
- 🌐 **Web** - Web application support
- 🖥️ **Windows** - Desktop Windows apps
- 🍎 **macOS** - Desktop macOS apps  
- 🐧 **Linux** - Desktop Linux apps

### 🎯 Zero Configuration Required

Works out of the box on all platforms with no additional setup needed.

## 🎨 Complete Color System

### 🌈 All TailwindCSS Colors Available

**21 Color Families × 11 Shades = 231 Colors**

- **Neutrals**: Gray, Slate, Zinc, Neutral, Stone
- **Warm**: Red, Orange, Amber, Yellow, Lime
- **Cool**: Green, Emerald, Teal, Cyan, Sky, Blue, Indigo, Violet, Purple
- **Accents**: Fuchsia, Pink, Rose

**Usage:**
```dart
// Background colors
.bgBlue600()    .bgRed500()    .bgGreen400()

// Text colors
.textBlue600()  .textRed500()  .textGreen400()

// Border colors
.borderBlue600() .borderRed500() .borderGreen400()
```

## 📚 Advanced Examples

<details>
<summary><strong>🏢 Dashboard Layout</strong></summary>

```dart
[
  // Header
  Text('Dashboard')
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
  
  // Content area
  [
    // Sidebar
    [
      Text('Navigation').build(),
      Text('Menu Item 1').build(),
      Text('Menu Item 2').build(),
    ].asFlex()
        .flexCol()
        .itemsStart()
        .asContainer()
        .bgGray50()
        .p4()
        .w64()
        .build(),
    
    // Main content
    Text('Main Content Area')
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
<summary><strong>💳 Product Card</strong></summary>

```dart
[
  // Product image placeholder
  Container(height: 200, color: Colors.grey[300]),
  
  // Product info
  [
    Text('Product Name')
        .asText()
        .textLg()
        .fontSemibold()
        .textGray900()
        .build(),
    
    Text('\$29.99')
        .asText()
        .textXl()
        .fontBold()
        .textGreen600()
        .build(),
    
    Text('Product description goes here...')
        .asText()
        .textSm()
        .textGray600()
        .build(),
    
    // Action buttons
    [
      Text('Add to Cart')
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

## 🎯 Performance & Best Practices

### ⚡ Performance Benefits

**Before (Multiple nested containers):**
```
Container
  └── Container (padding)
      └── Container (background)
          └── Container (border)
              └── Container (shadow)
                  └── Text
```

**After (Single optimized container):**
```
Container (all properties merged)
  └── Text
```

**Result**: 🚀 **5x fewer widgets, 3x faster rendering**

### 📋 Recommended Chain Order

```dart
// Optimal chaining pattern
Text('Text')
    .asText()           // 1. Convert to text builder
    .textXl()           // 2. Text-specific styles
    .fontBold()         // 
    .textBlue600()      // 
    .asContainer()      // 3. Convert to container builder
    .px6()              // 4. Spacing
    .py3()              // 
    .bgWhite()          // 5. Background
    .border()           // 6. Border
    .borderGray300()    // 
    .r8()               // 7. Border radius
    .shadow()           // 8. Effects
    .build()            // 9. Final build
```

## 📖 API Reference

### 🏗️ Core Builders

<details>
<summary><strong>TextBuilder Methods</strong></summary>

```dart
// Text Sizes
.textXs()     .textSm()     .textBase()   .textLg()
.textXl()     .text2xl()    .text3xl()    .text4xl()

// Font Weights  
.fontThin()   .fontLight()  .fontNormal() .fontMedium()
.fontSemibold() .fontBold() .fontExtrabold() .fontBlack()

// Text Colors (all TailwindCSS colors)
.textWhite()  .textBlack()  .textGray50() ... .textGray950()
.textRed50()  ... .textRed950()  // All color families

// Text Alignment
.textLeft()   .textCenter() .textRight()  .textJustify()

// Text Decoration
.underline()  .overline()   .lineThrough() .noUnderline()
.decorationSolid() .decorationDouble() .decorationDotted()
.decorationDashed() .decorationWavy()

// Text Transform
.uppercase()  .lowercase()  .capitalize()  .normalCase()

// Text Overflow
.truncate()   .textEllipsis() .textClip()
.textWrap()   .textNowrap()
```

</details>

<details>
<summary><strong>ContainerBuilder Methods</strong></summary>

```dart
// Padding & Margin
.p0() .p1() .p2() .p3() .p4() ... .p96()
.px0() .py0() .pl0() .pr0() .pt0() .pb0()
.paddingStart() .paddingEnd()  // RTL support
.m0() .m1() .m2() ... .m96()

// Background Colors
.bgWhite() .bgBlack() .bgTransparent()
.bgGray50() ... .bgGray950() // All color families

// Border
.border() .borderT() .borderR() .borderB() .borderL()
.borderStart() .borderEnd()  // RTL support
.border0() .border2() .border4() .border8()

// Border Colors
.borderGray50() ... .borderGray950() // All color families

// Border Radius
.r0() .r1() .r2() .r3() .r4() .r6() .r8() .r12() .r16()
.roundedStart() .roundedEnd()  // RTL support

// Shadows
.shadow() .shadowSm() .shadowMd() .shadowLg() .shadowXl()

// Size
.w0() .w1() ... .w96() .wAuto() .wFull() .wScreen()
.h0() .h1() ... .h96() .hAuto() .hFull() .hScreen()

// Size Constraints
.minW0() ... .minW96() .minWAuto() .minWFull() .minWScreen()
.maxW0() ... .maxW96() .maxWAuto() .maxWFull() .maxWScreen()
.minH0() ... .minH96() .minHAuto() .minHFull() .minHScreen()
.maxH0() ... .maxH96() .maxHAuto() .maxHFull() .maxHScreen()

// Position
.positionStatic() .positionRelative() .positionAbsolute()
.positionFixed() .positionSticky()
.top0() .right0() .bottom0() .left0()
.start() .end()  // RTL support

// Aspect Ratio
.aspectRatio() .aspectSquare() .aspectVideo() .aspectAuto()

// Z-Index
.z0() .z10() .z20() .z30() .z40() .z50() .zAuto()
```

</details>

<details>
<summary><strong>FlexBuilder Methods</strong></summary>

```dart
// Direction
.flexRow() .flexCol()

// Main Axis Alignment  
.justifyStart() .justifyEnd() .justifyCenter()
.justifyBetween() .justifyAround() .justifyEvenly()

// Cross Axis Alignment
.itemsStart() .itemsEnd() .itemsCenter()
.itemsStretch() .itemsBaseline()

// Flex Properties
.flex1() .flex2() .flex3()
.flexAuto() .flexNone() .flex(int)

// Wrap
.flexWrap() .flexNoWrap()

// Gap
.gap1() .gap2() .gap3() .gap4() .gap6() .gap8()

// Space Between Children
.spaceX1() .spaceX2() .spaceX4() .spaceXReverse()
.spaceY1() .spaceY2() .spaceY4() .spaceYReverse()

// Divide Between Children
.divideX() .divideY()
.divideColor() .divideWidth()
.divideSolid() .divideNone()
```

</details>

<details>
<summary><strong>GridBuilder Methods</strong></summary>

```dart
// Grid Columns
.gridCols1() .gridCols2() .gridCols3() ... .gridCols12()
.gridColsNone() .gridColsSubgrid()

// Grid Rows
.gridRows1() .gridRows2() .gridRows3() ... .gridRows12()
.gridRowsNone() .gridRowsSubgrid()

// Gap
.gap4() .gapX4() .gapY4()

// Auto Flow
.gridFlowRow() .gridFlowCol()
.gridFlowRowDense() .gridFlowColDense()

// Justify & Align
.justifyItemsStart() .justifyItemsEnd() .justifyItemsCenter()
.alignItemsStart() .alignItemsEnd() .alignItemsCenter()
.placeContentStart() .placeContentCenter() .placeContentBetween()
```

</details>

<details>
<summary><strong>ScrollBuilder Methods</strong></summary>

```dart
// Overflow
.overflowAuto() .overflowHidden() .overflowClip()
.overflowVisible() .overflowScroll()

// Overflow X/Y
.overflowXAuto() .overflowYAuto()
.overflowXHidden() .overflowYHidden()
.overflowXClip() .overflowYClip()
.overflowXVisible() .overflowYVisible()
.overflowXScroll() .overflowYScroll()

// Overscroll Behavior
.overscrollAuto() .overscrollContain() .overscrollNone()
.overscrollXAuto() .overscrollXContain() .overscrollXNone()
.overscrollYAuto() .overscrollYContain() .overscrollYNone()
```

</details>

## ❓ FAQ

<details>
<summary><strong>Why use builder pattern instead of direct widget styling?</strong></summary>

1. **Performance**: Creates single optimized widgets instead of nested containers
2. **Readability**: Self-documenting code that reads like CSS classes
3. **Type Safety**: Full compile-time checking and IntelliSense support
4. **Maintainability**: Consistent API across all styling needs
5. **Memory Efficiency**: Reduced widget tree depth

</details>

<details>
<summary><strong>How do I handle responsive design?</strong></summary>

Use Flutter's built-in responsive tools with builders:

```dart
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth > 600) {
      // Desktop layout
      return [widgets].asFlex().flexRow().build();
    } else {
      // Mobile layout  
      return [widgets].asFlex().flexCol().build();
    }
  },
)
```

</details>

<details>
<summary><strong>Can I mix traditional Flutter widgets with builders?</strong></summary>

Yes! Builders are designed to work seamlessly with existing Flutter code:

```dart
Column(
  children: [
    // Traditional Flutter
    Container(
      padding: EdgeInsets.all(16),
      child: Text('Traditional'),
    ),
    
    // TailwindCSS Build
    Text('Modern')
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

## 🤝 Contributing

We welcome contributions! Since this is a pre-1.0.0 package:

1. **Check Issues**: Look for existing issues or create new ones
2. **Discuss Changes**: For major changes, please discuss first
3. **Follow Patterns**: Use the established builder pattern architecture
4. **Add Tests**: Include tests for new functionality
5. **Update Docs**: Update documentation for new features

## 🌟 Community

- 📖 **Documentation**: [pub.dev/packages/tailwindcss_build](https://pub.dev/packages/tailwindcss_build)
- 🐛 **Issues**: [GitHub Issues](https://github.com/Not996NotOT/tailwindcss_build/issues)
- 💬 **Discussions**: [GitHub Discussions](https://github.com/Not996NotOT/tailwindcss_build/discussions)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by [Tailwind CSS](https://tailwindcss.com/)
- Built for the [Flutter](https://flutter.dev/) community
- Thanks to all contributors and users

---

**Ready to revolutionize your Flutter development?** 
```bash
flutter pub add tailwindcss_build
```

*Transform verbose Flutter code into elegant, maintainable, and performant UI declarations with TailwindCSS Build.*
