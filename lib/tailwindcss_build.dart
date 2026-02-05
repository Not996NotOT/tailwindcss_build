/// Tailwind CSS for Flutter
/// 
/// A comprehensive Flutter package that brings the power and convenience 
/// of Tailwind CSS utility classes to Flutter development.
/// 
/// This library provides Builder pattern utilities for styling widgets with 
/// familiar Tailwind CSS class names, making it easy to build responsive
/// and consistent UIs.
/// 
/// ## Getting Started
/// 
/// Import the library:
/// ```dart
/// import 'package:tailwindcss_build/tailwindcss_build.dart';
/// ```
/// 
/// ## Core Builders
/// 
/// - [ContainerBuilder]: Complete container styling (width, height, padding, margin, border, borderRadius, shadow, z-index, position)
/// - [FlexBuilder]: Complete Flexbox layout (direction, justify, align, gap, flex-grow/shrink, order)
/// - [GridBuilder]: Complete Grid layout (columns, rows, gap, justify, align, span, start/end)
/// - [TextBuilder]: Complete text styling (size, weight, color, decoration, transform, overflow)
/// - [ScrollBuilder]: Complete overflow control (auto, hidden, clip, visible, scroll)
/// 
/// ## Example
/// 
/// ```dart
/// ContainerBuilder()
///   .w64()
///   .h32()
///   .bgBlue500()
///   .roundedLg()
///   .padding(16)
///   .build()
/// ```
library;

// Colors
export 'base_colors.dart';
export 'button_extensions.dart';
export 'colors.dart';
// Core Builder Classes
export 'animated_builder.dart';
export 'container_builder.dart';
export 'flex_builder.dart';
export 'grid_builder.dart';
export 'scroll_builder.dart';
export 'table_builder.dart';
export 'text_builder.dart';
// Widget Extensions
export 'widget_extensions.dart';
export 'widget_state_extensions.dart';
