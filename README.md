# Tailwind CSS Build for Flutter

[English](./README.md) | [简体中文](./README_CN.md)

A comprehensive Flutter package that brings the power and convenience of Tailwind CSS utility classes to Flutter development. This library provides utility extensions for styling widgets with familiar Tailwind CSS class names, making it easy to build responsive and consistent UIs.

## 🚀 Features

### Layout & Positioning
- **Flexbox**: Complete flexbox utilities (`flex`, `justifyContent`, `alignItems`, etc.)
- **Grid**: CSS Grid layout utilities (`gridCols`, `gridRows`, `gap`, etc.)
- **Spacing**: Margin and padding utilities (`m1`, `p4`, `mx2`, `py8`, etc.)
- **Sizing**: Width and height utilities (`w64`, `h32`, `wFull`, `hScreen`, etc.)
- **Position**: Positioning utilities (`absolute`, `relative`, `top4`, `left8`, etc.)
- **Display**: Display utilities (`block`, `flex`, `grid`, `hidden`, etc.)

### Typography
- **Font Family**: Font family utilities (`fontSans`, `fontSerif`, `fontMono`)
- **Font Size**: Text size utilities (`textXs`, `textLg`, `text4xl`, etc.)
- **Font Weight**: Font weight utilities (`fontThin`, `fontBold`, `fontBlack`, etc.)
- **Text Color**: Text color utilities with full Tailwind color palette
- **Text Alignment**: Text alignment utilities (`textLeft`, `textCenter`, `textRight`)
- **Text Decoration**: Text decoration utilities (`underline`, `lineThrough`)
- **Letter Spacing**: Letter spacing utilities (`trackingTight`, `trackingWide`)
- **Line Height**: Line height utilities (`leadingTight`, `leadingRelaxed`)

### Colors & Backgrounds
- **Complete Color Palette**: All Tailwind CSS colors (slate, gray, red, orange, amber, yellow, lime, green, emerald, teal, cyan, sky, blue, indigo, violet, purple, fuchsia, pink, rose)
- **Background Colors**: Background color utilities (`bgRed500`, `bgBlue100`, etc.)
- **Background Images**: Background image utilities and gradients
- **Background Properties**: Background size, position, repeat, attachment utilities

### Borders & Effects
- **Border Width**: Border width utilities (`border`, `border2`, `borderT4`, etc.)
- **Border Color**: Border color utilities with full color palette
- **Border Style**: Border style utilities (`borderSolid`, `borderDashed`, etc.)
- **Border Radius**: Border radius utilities (`rounded`, `roundedFull`, `roundedXl`, etc.)
- **Box Shadow**: Shadow utilities (`shadow`, `shadowLg`, `shadowXl`, etc.)
- **Opacity**: Opacity utilities (`opacity50`, `opacity75`, etc.)

### Filters & Effects
- **Backdrop Filter**: Backdrop blur and filter effects
- **Filters**: Blur, brightness, contrast, saturation, and other filter utilities
- **Blend Modes**: Background and mix blend mode utilities
- **Transforms**: Rotate, scale, translate, and skew utilities

### Advanced Features
- **Widget Extensions**: Convert widgets between types (`asRow`, `asColumn`, `asStack`, etc.)
- **Flex Container**: Advanced flexbox container utilities
- **Grid Systems**: Complete CSS Grid implementation
- **Transitions**: Animation and transition utilities
- **Interactivity**: Cursor, touch, and interaction utilities
- **Accessibility**: WCAG compliance utilities, color blind support, high contrast themes
- **SVG Support**: SVG styling and manipulation utilities

### Text & Icon Extensions
- **Text Conversion**: Convert Text widgets to styled containers
- **Icon Styling**: Style icons with Tailwind utilities
- **Custom Text Styles**: Advanced text styling with shadows and effects

## 📦 Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  tailwindcss_build: ^0.3.0
```

Then run:

```bash
flutter pub get
```

## 🎯 Usage

Import the package:

```dart
import 'package:tailwindcss_build/tailwindcss_build.dart';
```

### Basic Examples

```dart
// Spacing and sizing
Container().w64().h32().p4().m2()

// Colors and styling
Container().bgBlue500().textWhite().rounded()

// Flexbox layout
Column(
  children: [
    Text('Hello').textXl().fontBold(),
    Text('World').textGray600(),
  ],
).flex1().justifyCenter().itemsCenter()

// Widget conversion
[
  Icon(Icons.home),
  Text('Home'),
].asRow().justifyBetween().p4()

// Advanced styling
Container(
  child: Text('Gradient Button')
    .textWhite()
    .fontSemibold(),
)
.bgGradientToR(from: Colors.blue, to: Colors.purple)
.roundedLg()
.shadowLg()
.p4()
```

### Layout Examples

```dart
// Flexbox Layout
Column(
  children: [
    Container().bgRed500().w16().h16(),
    Container().bgBlue500().w16().h16(),
    Container().bgGreen500().w16().h16(),
  ],
).flex1().justifySpaceBetween().itemsCenter()

// Grid Layout
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

### Typography Examples

```dart
// Text styling
Text('Large Title')
  .text4xl()
  .fontBold()
  .textGray900()
  .trackingTight()

Text('Subtitle')
  .textLg()
  .fontMedium()
  .textGray600()
  .leadingRelaxed()

Text('Body text')
  .textBase()
  .textGray700()
  .leadingNormal()
```

### Color Examples

```dart
// Using color utilities
Container().bgRed50()    // Very light red
Container().bgRed500()   // Medium red  
Container().bgRed900()   // Very dark red

// Text colors
Text('Error').textRed500()
Text('Success').textGreen500()
Text('Warning').textYellow500()
Text('Info').textBlue500()
```

### Advanced Features

```dart
// Widget conversion
List<Widget> widgets = [
  Icon(Icons.home),
  Text('Home'),
  Icon(Icons.arrow_forward),
];

// Convert to Row
Row homeRow = widgets.asRow().justifyBetween();

// Convert to Column  
Column homeColumn = widgets.asColumn().itemsCenter();

// Convert to Stack
Stack homeStack = widgets.asStack().center();

// Convert to Wrap
Wrap homeWrap = widgets.asWrap().spacingXl();
```

```dart
// Accessibility features
Container()
  .highContrast(
    enabled: true,
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
  )
  .colorBlindFriendly(type: ColorBlindType.protanopia)
  .minTouchTarget(minWidth: 44.0, minHeight: 44.0)
```

## 🌈 Complete Color Palette

This package includes the complete Tailwind CSS color palette with all shades (50, 100, 200, 300, 400, 500, 600, 700, 800, 900, 950):

- **Neutral**: slate, gray, zinc, neutral, stone
- **Red**: red
- **Orange**: orange, amber
- **Yellow**: yellow, lime
- **Green**: green, emerald, teal
- **Blue**: cyan, sky, blue, indigo
- **Purple**: violet, purple, fuchsia
- **Pink**: pink, rose

## 📱 Responsive Design

The utilities work seamlessly across different screen sizes and orientations, making it easy to build responsive Flutter applications.

## 🔧 Advanced Configuration

### Custom Themes
```dart
// High contrast theme
MaterialApp(
  theme: AccessibilityTheme.highContrastTheme(),
  // ...
)

// Large text theme
MaterialApp(
  theme: AccessibilityTheme.largeTextTheme(scaleFactor: 1.5),
  // ...
)
```

### Color Blind Support
```dart
Widget().colorBlindFriendly(
  type: ColorBlindType.deuteranopia, // Green color blindness
)
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔗 Links

- [GitHub Repository](https://github.com/Not996NotOT/tailwindcss_build)
- [Pub.dev Package](https://pub.dev/packages/tailwindcss_build)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)

## 📝 Changelog

See [CHANGELOG.md](CHANGELOG.md) for a detailed history of changes.

---

Made with ❤️ for the Flutter community