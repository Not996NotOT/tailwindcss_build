# TailwindCSS Build for Flutter

[![pub package](https://img.shields.io/pub/v/tailwindcss_build.svg)](https://pub.dev/packages/tailwindcss_build)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=flat&logo=Flutter&logoColor=white)](https://flutter.dev)

[English](README.md) | [中文](README_CN.md) | [日本語](README_JP.md)

Transform your Flutter development with the power and elegance of Tailwind CSS utility classes through our revolutionary **Builder Pattern** architecture.

## 🚨 Pre-1.0.0 Notice

**Important**: This package is in active development toward version 1.0.0. We may introduce breaking changes, deprecate APIs, or make architectural improvements to provide the best possible solution.

**Current Status**: The builder pattern implementations (ContainerBuilder, TextBuilder, FlexBuilder) in v0.4.0 are production-ready and represent the future direction of this library.

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

<details>
<summary><strong>🔄 Complex Responsive Layout Example</strong></summary>

**Traditional Flutter Way:**
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
            'Left Panel',
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
            'Right Panel',
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

**TailwindCSS Build Way:**
```dart
[
  Text('Left Panel')
      .asText()
      .textBlue700()
      .fontMedium()
      .asContainer()
      .bgBlue50()
      .p4()
      .r8()
      .wFull()
      .build(),
  Text('Right Panel')
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

**Result**: ✨ **Visual code structure matches UI layout!**

</details>

## 🏗️ Revolutionary Architecture

### 🎯 Builder Pattern Benefits

- **🚀 Performance**: Single widget creation instead of nested containers
- **🔗 Chainable**: Intuitive method chaining for complex styling
- **🛡️ Type Safe**: Full compile-time checking with Flutter's type system
- **💾 Memory Efficient**: Reduced widget tree depth and improved rendering

### 🧩 Three Core Builders

| Builder | Purpose | Features | Usage |
|---------|---------|----------|-------|
| **TextBuilder** | Text styling & typography | Decoration, Transform, Overflow control | `Text('Hello').asText().textBlue600().underline().decorationRed500().build()` |
| **ContainerBuilder** | Layout, spacing & visual effects | Complete Position system | `.asContainer().px6().py3().bgWhite().positionAbsolute(top: 10, left: 20).build()` |
| **FlexBuilder** | Layout management (Row/Column) | Flex properties and gap control | `[widgets].asFlex().flexRow().justifyCenter().gap4().asContainer().build()` |

## 🚀 Quick Start

### Installation

```yaml
dependencies:
  tailwindcss_build: ^0.4.3
```

### Import

```dart
import 'package:tailwindcss_build/tailwindcss_build.dart';
```

### Basic Usage Patterns

<details>
<summary><strong>📝 Advanced Text Styling</strong></summary>

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
<summary><strong>🎯 Advanced Container Styling</strong></summary>

```dart
// Basic container
Text('Content')
    .build()
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

// Tailwind-style positioning
Text('Fixed Element')
    .asContainer()
    .px6()
    .py3()
    .bgBlue600()
    .top0()              // top: 0
    .right4()            // right: 16px
    .insetX2()           // left: 8px, right: 8px
    .positionFixed()

// Combined positioning
Widget()
    .asContainer()
    .position()          // Enable positioning
    .top(50)            // Custom top value
    .left0()            // Left edge
    .w64()              // Width control
    .h32()              // Height control
    .bgGreen500()
    .build()
```

</details>

<details>
<summary><strong>🔄 Flex Layouts</strong></summary>

```dart
// Row layout
[
  Text('Item 1').build(),
  Text('Item 2').build(),
  Text('Item 3').build(),
].asFlex()
    .flexRow()          // Direction
    .justifyCenter()    // Main axis alignment
    .itemsCenter()      // Cross axis alignment
    .asContainer()      // Convert to container for styling
    .bgGray100()
    .p4()
    .r8()
    .build()

// Column layout
[
  Text('Title').build(),
  Text('Subtitle').build(),
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

<details>
<summary><strong>Background Colors (21 color families)</strong></summary>

```dart
// Basic colors
.bgWhite()      .bgBlack()      .bgTransparent()

// Gray family (50-950)
.bgGray50()     .bgGray100()    .bgGray200()    ...    .bgGray950()

// All color families with full ranges:
.bgSlate50()    →  .bgSlate950()     // Slate
.bgZinc50()     →  .bgZinc950()      // Zinc  
.bgNeutral50()  →  .bgNeutral950()   // Neutral
.bgStone50()    →  .bgStone950()     // Stone
.bgRed50()      →  .bgRed950()       // Red
.bgOrange50()   →  .bgOrange950()    // Orange
.bgAmber50()    →  .bgAmber950()     // Amber
.bgYellow50()   →  .bgYellow950()    // Yellow
.bgLime50()     →  .bgLime950()      // Lime
.bgGreen50()    →  .bgGreen950()     // Green
.bgEmerald50()  →  .bgEmerald950()   // Emerald
.bgTeal50()     →  .bgTeal950()      // Teal
.bgCyan50()     →  .bgCyan950()      // Cyan
.bgSky50()      →  .bgSky950()       // Sky
.bgBlue50()     →  .bgBlue950()      // Blue
.bgIndigo50()   →  .bgIndigo950()    // Indigo
.bgViolet50()   →  .bgViolet950()    // Violet
.bgPurple50()   →  .bgPurple950()    // Purple
.bgFuchsia50()  →  .bgFuchsia950()   // Fuchsia
.bgPink50()     →  .bgPink950()      // Pink
.bgRose50()     →  .bgRose950()      // Rose
```

</details>

<details>
<summary><strong>Border Colors (All families)</strong></summary>

```dart
// Default border (gray-200)
.border()

// Colored borders
.border().borderBlue500()
.border().borderRed300()
.border().borderGreen600()

// Custom border color
.border(color: Colors.purple)

// All border color families available:
.borderGray50()   →  .borderGray950()
.borderBlue50()   →  .borderBlue950()
.borderRed50()    →  .borderRed950()
// ... all 21 color families
```

</details>

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

<details>
<summary><strong>📱 Mobile-First Form</strong></summary>

```dart
[
  Text('Sign Up')
      .asText()
      .text2xl()
      .fontBold()
      .textCenter()
      .textGray900()
      .build(),
  
  SizedBox(height: 24),
  
  // Email input
  TextFormField(
    decoration: InputDecoration(
      hintText: 'Enter your email',
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
  
  // Password input
  TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      hintText: 'Enter your password',
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
  
  // Submit button
  Text('Create Account')
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

## 🎯 Performance & Best Practices

### ⚡ Performance Benefits

<details>
<summary><strong>Widget Tree Optimization</strong></summary>

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

</details>

### 🛡️ Type Safety & IntelliSense

```dart
// Full autocompletion support
Text('Hello')
    .asText()
    .text     // ← Shows: textXs, textSm, textBase, textLg...
    .font     // ← Shows: fontThin, fontLight, fontNormal...
    .asContainer()
    .bg       // ← Shows: bgWhite, bgBlack, bgGray50...
    .p        // ← Shows: p1, p2, p3, px2, py4...
```

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

// Text Decoration Line
.underline()  .overline()   .lineThrough() .noUnderline()
.underlineLineThrough()  .underlineOverline()  .allDecorations()

// Text Decoration Style
.decorationSolid() .decorationDouble() .decorationDotted()
.decorationDashed() .decorationWavy()

// Text Decoration Thickness
.decoration0() .decoration1() .decoration2() .decoration4() .decoration8()
.decorationAuto() .decorationFromFont() .decorationCustom(3.5)

// Text Decoration Colors (Full TailwindCSS palette)
.decorationRed500() .decorationBlue600() .decorationGreen700()
.decorationPurple500() .decorationYellow400() // All color families

// Text Transform
.uppercase()  .lowercase()  .capitalize()  .normalCase()

// Text Overflow & Wrap
.truncate()   .textEllipsis() .textClip()
.textWrap()   .textNowrap()   .textBalance()  .textPretty()

// Line Height & Letter Spacing
.leadingNone() .leadingTight() .leadingSnug() .leadingNormal()
.leadingRelaxed() .leadingLoose()
.trackingTighter() .trackingTight() .trackingNormal() .trackingWide()
.trackingWider() .trackingWidest()
```

</details>

<details>
<summary><strong>ContainerBuilder Methods</strong></summary>

```dart
// Padding & Margin
.p0() .p1() .p2() .p3() .p4() ... .p96()
.px0() .py0() .pl0() .pr0() .pt0() .pb0() // Directional
.m0() .m1() .m2() ... .m96() // Margin variants

// Background Colors (all TailwindCSS colors)
.bgWhite() .bgBlack() .bgTransparent()
.bgGray50() ... .bgGray950() // All color families

// Border
.border() .borderT() .borderR() .borderB() .borderL()
.border0() .border2() .border4() .border8() // Widths
.borderSolid() .borderDashed() .borderDotted()

// Border Colors
.borderGray50() ... .borderGray950() // All color families

// Border Radius
.r0() .r1() .r2() .r3() .r4() .r6() .r8() .r12() .r16() .r20() .r24()
.rFull() .rNone()

// Shadows
.shadow() .shadowSm() .shadowMd() .shadowLg() .shadowXl() .shadow2xl()
.shadowInner() .shadowNone()

// Size
.w0() .w1() ... .w96() .wAuto() .wFull() .wScreen()
.h0() .h1() ... .h96() .hAuto() .hFull() .hScreen()

// Position System
.position()              // Enable positioning
.positionStatic()        // Default positioning
.positionRelative()      // Relative positioning
.positionAbsolute()      // Absolute positioning
.positionFixed()         // Fixed positioning
.positionSticky()        // Sticky positioning

// Position Values (Tailwind-style)
.top0() .top1() .top2() .top4() .top(50)    // Top positioning
.right0() .right1() .right2() .right4() .right(30)  // Right positioning
.bottom0() .bottom1() .bottom2() .bottom4() .bottom(20) // Bottom positioning
.left0() .left1() .left2() .left4() .left(10)  // Left positioning

// Inset Shortcuts
.inset0() .inset1() .inset2() .inset4()     // All directions
.insetX0() .insetX1() .insetX2()            // Horizontal (left + right)
.insetY0() .insetY1() .insetY2()            // Vertical (top + bottom)

// Custom Positioning
.positioned(top: 20, left: 10, width: 200, height: 100)

// Interactions
.onTap(() {}) .onDoubleTap(() {}) .onLongPress(() {})
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
.flex1() .flex2() .flex3() // Fixed flex values
.flexAuto() .flexNone() .flex(int) // Custom flex

// Gap (spacing between children)
.gap1() .gap2() .gap3() .gap4() .gap6() .gap8() .gap12() .gap16()
.gap(double) // Custom gap value
```

</details>

### 🔗 Method Chaining

All builders support fluent method chaining:
```dart
Text('Hello')
    .asText()        // Convert to TextBuilder
    .textBlue600()   // Text styling
    .fontBold()      // More text styling
    .asContainer()   // Convert to ContainerBuilder  
    .px6()           // Container styling
    .py3()           // More container styling
    .bgWhite()       // Background
    .r8()            // Border radius
    .shadow()        // Drop shadow
    .onTap(() {})    // Interaction
    // .build() called automatically when used
```

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
<summary><strong>How does this compare to other Flutter styling solutions?</strong></summary>

| Feature | TailwindCSS Build | Traditional Flutter | Other Packages |
|---------|-------------------|-------------------|----------------|
| Code Length | 70% shorter | Verbose | Varies |
| Performance | Single widgets | Nested containers | Varies |
| Learning Curve | TailwindCSS knowledge | Flutter widgets | Package-specific |
| Type Safety | Full | Full | Varies |
| Customization | High | High | Limited |

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

<details>
<summary><strong>Does this work with existing themes and styling?</strong></summary>

Yes! The builders respect Flutter's theme system and can be combined with:
- Material Design themes
- Custom themes
- Dark/Light mode
- Custom color schemes

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

## 🔄 Migration Guide


### From 0.3.x to 0.4.0

<details>
<summary><strong>API Changes</strong></summary>

```dart
// ❌ Old way (0.3.x)
Text('Hello').textBlue600().fontBold().asContainer().px4().bgWhite()

// ✅ New way (0.4.0)
Text('Hello')
    .asText()
    .textBlue600()
    .fontBold()
    .asContainer()
    .px4()
    .bgWhite()
    .build()

// ❌ Old method names
.asTextBuilder()  →  .asText()
.asContainerBuilder()  →  .asContainer()

// ✅ Simplified interactions
// Old: GestureDetector(onTap: ..., child: widget)
// New: widget.onTap(...)
```

</details>

## 🧪 Testing & Debugging

### 🔍 Widget Inspector Integration

```dart
// Each builder creates a single, inspectable widget
Text('Debug Me')
    .asText()
    .textRed600()
    .asContainer()
    .px4()
    .py2()
    .bgRed100()
    .border()
    .borderRed500()
    .r4()
    .build() // ← Single Container widget in inspector tree
```

## 🎨 Custom Extensions

<details>
<summary><strong>Brand Colors</strong></summary>

```dart
// Define your brand colors
extension BrandColors on ContainerBuilder {
  ContainerBuilder bgPrimary() => backgroundColor(Color(0xFF1E40AF));
  ContainerBuilder bgSecondary() => backgroundColor(Color(0xFF7C3AED));
  ContainerBuilder bgAccent() => backgroundColor(Color(0xFF059669));
}

// Usage
Text('Brand Button')
    .asContainer()
    .px6()
    .py3()
    .bgPrimary()  // Custom brand color
    .r8()
    .build()
```

</details>

<details>
<summary><strong>Custom Spacing</strong></summary>

```dart
extension CustomSpacing on ContainerBuilder {
  ContainerBuilder pSection() => padding(EdgeInsets.all(32));
  ContainerBuilder pCard() => padding(EdgeInsets.all(16));
}
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