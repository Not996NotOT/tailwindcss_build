import 'package:flutter/material.dart';

import 'colors.dart';

/// Container 建造者 - 收集所有样式属性，最后一次性构建
class ContainerBuilder {
  final Widget child;
  
  // 收集的样式属性
  Color? _backgroundColor;
  EdgeInsetsGeometry? _padding;
  EdgeInsetsGeometry? _margin;
  BorderRadiusGeometry? _borderRadius;
  Border? _border;
  List<BoxShadow>? _boxShadow;
  AlignmentGeometry? _alignment;
  BoxConstraints? _constraints;
  Matrix4? _transform;
  AlignmentGeometry? _transformAlignment;
  Decoration? _foregroundDecoration;
  Gradient? _gradient;
  BlendMode? _backgroundBlendMode;
  BoxShape _shape = BoxShape.rectangle;
  double? _width;
  double? _height;
  
  ContainerBuilder(this.child);
  
  // === 背景色 ===
  ContainerBuilder backgroundColor(Color color) {
    _backgroundColor = color;
    return this;
  }
  
  // === 内边距 ===
  ContainerBuilder padding(EdgeInsetsGeometry padding) {
    if (_padding == null) {
      _padding = padding;
    } else {
      // 合并内边距
      if (_padding is EdgeInsets && padding is EdgeInsets) {
        final existing = _padding as EdgeInsets;
        final newPadding = padding;
        _padding = EdgeInsets.only(
          left: existing.left + newPadding.left,
          top: existing.top + newPadding.top,
          right: existing.right + newPadding.right,
          bottom: existing.bottom + newPadding.bottom,
        );
      } else {
        _padding = padding; // 如果不是EdgeInsets，直接替换
      }
    }
    return this;
  }
  
  ContainerBuilder paddingHorizontal(double value) {
    return padding(EdgeInsets.symmetric(horizontal: value));
  }
  
  ContainerBuilder paddingVertical(double value) {
    return padding(EdgeInsets.symmetric(vertical: value));
  }
  
  ContainerBuilder paddingAll(double value) {
    return padding(EdgeInsets.all(value));
  }
  
  // === 外边距 ===
  ContainerBuilder margin(EdgeInsetsGeometry margin) {
    _margin = margin;
    return this;
  }
  
  // === 边框 ===
  ContainerBuilder setBorder(Border border) {
    _border = border;
    return this;
  }
  
  ContainerBuilder borderAll({Color color = Colors.black, double width = 1.0}) {
    _border = Border.all(color: color, width: width);
    return this;
  }
  
  /// border - TailwindCSS的border类，1px边框
  ContainerBuilder border({double width = 1.0, Color color = const Color(0xFFE5E7EB)}) {
    _border = Border.all(color: color, width: width);
    return this;
  }
  
  // === 圆角 ===
  ContainerBuilder borderRadius(BorderRadiusGeometry borderRadius) {
    _borderRadius = borderRadius;
    return this;
  }
  
  ContainerBuilder borderRadiusCircular(double radius) {
    _borderRadius = BorderRadius.circular(radius);
    return this;
  }
  
  // === 阴影 ===
  ContainerBuilder boxShadow(List<BoxShadow> boxShadow) {
    if (_boxShadow == null) {
      _boxShadow = boxShadow;
    } else {
      _boxShadow!.addAll(boxShadow);
    }
    return this;
  }
  
  // === 对齐 ===
  ContainerBuilder alignment(AlignmentGeometry alignment) {
    _alignment = alignment;
    return this;
  }
  
  // === 约束 ===
  ContainerBuilder constraints(BoxConstraints constraints) {
    _constraints = constraints;
    return this;
  }
  
  // === Height 方法 - 建造者模式 ===
  /// h-0 -> height: 0;
  ContainerBuilder h0() {
    _height = 0;
    return this;
  }
  
  /// h-px -> height: 1px;
  ContainerBuilder hPx() {
    _height = 1;
    return this;
  }
  
  /// h-0.5 -> height: 2px;
  ContainerBuilder h0_5() {
    _height = 2;
    return this;
  }
  
  /// h-1 -> height: 4px;
  ContainerBuilder h1() {
    _height = 4;
    return this;
  }
  
  /// h-1.5 -> height: 6px;
  ContainerBuilder h1_5() {
    _height = 6;
    return this;
  }
  
  /// h-2 -> height: 8px;
  ContainerBuilder h2() {
    _height = 8;
    return this;
  }
  
  /// h-2.5 -> height: 10px;
  ContainerBuilder h2_5() {
    _height = 10;
    return this;
  }
  
  /// h-3 -> height: 12px;
  ContainerBuilder h3() {
    _height = 12;
    return this;
  }
  
  /// h-3.5 -> height: 14px;
  ContainerBuilder h3_5() {
    _height = 14;
    return this;
  }
  
  /// h-4 -> height: 16px;
  ContainerBuilder h4() {
    _height = 16;
    return this;
  }
  
  /// h-5 -> height: 20px;
  ContainerBuilder h5() {
    _height = 20;
    return this;
  }
  
  /// h-6 -> height: 24px;
  ContainerBuilder h6() {
    _height = 24;
    return this;
  }
  
  /// h-7 -> height: 28px;
  ContainerBuilder h7() {
    _height = 28;
    return this;
  }
  
  /// h-8 -> height: 32px;
  ContainerBuilder h8() {
    _height = 32;
    return this;
  }
  
  /// h-9 -> height: 36px;
  ContainerBuilder h9() {
    _height = 36;
    return this;
  }
  
  /// h-10 -> height: 40px;
  ContainerBuilder h10() {
    _height = 40;
    return this;
  }
  
  /// h-11 -> height: 44px;
  ContainerBuilder h11() {
    _height = 44;
    return this;
  }
  
  /// h-12 -> height: 48px;
  ContainerBuilder h12() {
    _height = 48;
    return this;
  }
  
  /// h-14 -> height: 56px;
  ContainerBuilder h14() {
    _height = 56;
    return this;
  }
  
  /// h-16 -> height: 64px;
  ContainerBuilder h16() {
    _height = 64;
    return this;
  }
  
  /// h-20 -> height: 80px;
  ContainerBuilder h20() {
    _height = 80;
    return this;
  }
  
  /// h-24 -> height: 96px;
  ContainerBuilder h24() {
    _height = 96;
    return this;
  }
  
  /// h-28 -> height: 112px;
  ContainerBuilder h28() {
    _height = 112;
    return this;
  }
  
  /// h-32 -> height: 128px;
  ContainerBuilder h32() {
    _height = 128;
    return this;
  }
  
  /// h-36 -> height: 144px;
  ContainerBuilder h36() {
    _height = 144;
    return this;
  }
  
  /// h-40 -> height: 160px;
  ContainerBuilder h40() {
    _height = 160;
    return this;
  }
  
  /// h-44 -> height: 176px;
  ContainerBuilder h44() {
    _height = 176;
    return this;
  }
  
  /// h-48 -> height: 192px;
  ContainerBuilder h48() {
    _height = 192;
    return this;
  }
  
  /// h-52 -> height: 208px;
  ContainerBuilder h52() {
    _height = 208;
    return this;
  }
  
  /// h-56 -> height: 224px;
  ContainerBuilder h56() {
    _height = 224;
    return this;
  }
  
  /// h-60 -> height: 240px;
  ContainerBuilder h60() {
    _height = 240;
    return this;
  }
  
  /// h-64 -> height: 256px;
  ContainerBuilder h64() {
    _height = 256;
    return this;
  }
  
  /// h-72 -> height: 288px;
  ContainerBuilder h72() {
    _height = 288;
    return this;
  }
  
  /// h-80 -> height: 320px;
  ContainerBuilder h80() {
    _height = 320;
    return this;
  }
  
  /// h-96 -> height: 384px;
  ContainerBuilder h96() {
    _height = 384;
    return this;
  }
  
  /// h-auto -> height: auto; (使用内容高度，不设置高度)
  ContainerBuilder hAuto() {
    _height = null;
    return this;
  }
  
  /// h-full -> height: 100%;
  ContainerBuilder hFull() {
    _height = double.infinity;
    return this;
  }
  
  /// h(double height) -> height: <value>; (自定义高度 - 简洁版)
  ContainerBuilder h(double heightValue) {
    _height = heightValue;
    return this;
  }
  
  /// h-[<value>] -> height: <value>; (自定义高度)
  ContainerBuilder hCustom(double heightValue) {
    _height = heightValue;
    return this;
  }
  
  // === Width 方法 - 建造者模式 ===
  /// w-0 -> width: 0;
  ContainerBuilder w0() {
    _width = 0;
    return this;
  }
  
  /// w-px -> width: 1px;
  ContainerBuilder wPx() {
    _width = 1;
    return this;
  }
  
  /// w-0.5 -> width: 2px;
  ContainerBuilder w0_5() {
    _width = 2;
    return this;
  }
  
  /// w-1 -> width: 4px;
  ContainerBuilder w1() {
    _width = 4;
    return this;
  }
  
  /// w-1.5 -> width: 6px;
  ContainerBuilder w1_5() {
    _width = 6;
    return this;
  }
  
  /// w-2 -> width: 8px;
  ContainerBuilder w2() {
    _width = 8;
    return this;
  }
  
  /// w-2.5 -> width: 10px;
  ContainerBuilder w2_5() {
    _width = 10;
    return this;
  }
  
  /// w-3 -> width: 12px;
  ContainerBuilder w3() {
    _width = 12;
    return this;
  }
  
  /// w-3.5 -> width: 14px;
  ContainerBuilder w3_5() {
    _width = 14;
    return this;
  }
  
  /// w-4 -> width: 16px;
  ContainerBuilder w4() {
    _width = 16;
    return this;
  }
  
  /// w-5 -> width: 20px;
  ContainerBuilder w5() {
    _width = 20;
    return this;
  }
  
  /// w-6 -> width: 24px;
  ContainerBuilder w6() {
    _width = 24;
    return this;
  }
  
  /// w-7 -> width: 28px;
  ContainerBuilder w7() {
    _width = 28;
    return this;
  }
  
  /// w-8 -> width: 32px;
  ContainerBuilder w8() {
    _width = 32;
    return this;
  }
  
  /// w-9 -> width: 36px;
  ContainerBuilder w9() {
    _width = 36;
    return this;
  }
  
  /// w-10 -> width: 40px;
  ContainerBuilder w10() {
    _width = 40;
    return this;
  }
  
  /// w-11 -> width: 44px;
  ContainerBuilder w11() {
    _width = 44;
    return this;
  }
  
  /// w-12 -> width: 48px;
  ContainerBuilder w12() {
    _width = 48;
    return this;
  }
  
  /// w-14 -> width: 56px;
  ContainerBuilder w14() {
    _width = 56;
    return this;
  }
  
  /// w-16 -> width: 64px;
  ContainerBuilder w16() {
    _width = 64;
    return this;
  }
  
  /// w-20 -> width: 80px;
  ContainerBuilder w20() {
    _width = 80;
    return this;
  }
  
  /// w-24 -> width: 96px;
  ContainerBuilder w24() {
    _width = 96;
    return this;
  }
  
  /// w-28 -> width: 112px;
  ContainerBuilder w28() {
    _width = 112;
    return this;
  }
  
  /// w-32 -> width: 128px;
  ContainerBuilder w32() {
    _width = 128;
    return this;
  }
  
  /// w-36 -> width: 144px;
  ContainerBuilder w36() {
    _width = 144;
    return this;
  }
  
  /// w-40 -> width: 160px;
  ContainerBuilder w40() {
    _width = 160;
    return this;
  }
  
  /// w-44 -> width: 176px;
  ContainerBuilder w44() {
    _width = 176;
    return this;
  }
  
  /// w-48 -> width: 192px;
  ContainerBuilder w48() {
    _width = 192;
    return this;
  }
  
  /// w-52 -> width: 208px;
  ContainerBuilder w52() {
    _width = 208;
    return this;
  }
  
  /// w-56 -> width: 224px;
  ContainerBuilder w56() {
    _width = 224;
    return this;
  }
  
  /// w-60 -> width: 240px;
  ContainerBuilder w60() {
    _width = 240;
    return this;
  }
  
  /// w-64 -> width: 256px;
  ContainerBuilder w64() {
    _width = 256;
    return this;
  }
  
  /// w-72 -> width: 288px;
  ContainerBuilder w72() {
    _width = 288;
    return this;
  }
  
  /// w-80 -> width: 320px;
  ContainerBuilder w80() {
    _width = 320;
    return this;
  }
  
  /// w-96 -> width: 384px;
  ContainerBuilder w96() {
    _width = 384;
    return this;
  }
  
  /// w-100 -> width: 400px;
  ContainerBuilder w100() {
    _width = 400;
    return this;
  }
  
  /// w-auto -> width: auto; (使用内容宽度，不设置宽度)
  ContainerBuilder wAuto() {
    _width = null;
    return this;
  }
  
  /// w-full -> width: 100%;
  ContainerBuilder wFull() {
    _width = double.infinity;
    return this;
  }
  
  /// w(double width) -> width: <value>; (自定义宽度 - 简洁版)
  ContainerBuilder w(double widthValue) {
    _width = widthValue;
    return this;
  }
  
  /// w-[<value>] -> width: <value>; (自定义宽度)
  ContainerBuilder wCustom(double widthValue) {
    _width = widthValue;
    return this;
  }
  
  // === 渐变 ===
  ContainerBuilder gradient(Gradient gradient) {
    _gradient = gradient;
    return this;
  }
  
  /// 最终构建方法 - 一次性创建Container
  Widget build() {
    // 构建 BoxDecoration
    BoxDecoration? decoration;
    
    if (_backgroundColor != null || 
        _border != null || 
        _borderRadius != null || 
        _boxShadow != null ||
        _gradient != null) {
      decoration = BoxDecoration(
        color: _gradient == null ? _backgroundColor : null, // 如果有渐变就不设置color
        border: _border,
        borderRadius: _borderRadius,
        boxShadow: _boxShadow,
        gradient: _gradient,
        backgroundBlendMode: _backgroundBlendMode,
        shape: _shape,
      );
    }
    
    return Container(
      width: _width,
      height: _height,
      alignment: _alignment,
      padding: _padding,
      margin: _margin,
      constraints: _constraints,
      transform: _transform,
      transformAlignment: _transformAlignment,
      decoration: decoration,
      foregroundDecoration: _foregroundDecoration,
      child: child,
    );
  }
}

/// Text 到 ContainerBuilder 的转换扩展
extension TextToContainerBuilder on Text {
  /// 将 Text 转换为 ContainerBuilder，开始样式链式调用 (新的建造者模式)
  ContainerBuilder asContainer() {
    return ContainerBuilder(this);
  }
  
  /// @deprecated 使用新的建造者模式 asContainer() 替代
  /// 将 Text 转换为 ContainerBuilder，开始样式链式调用
  @Deprecated('Use asContainer() instead. This will be removed in a future version.')
  ContainerBuilder asContainerBuilder() {
    return ContainerBuilder(this);
  }
}

/// Widget 到 ContainerBuilder 的转换扩展
extension WidgetToContainerBuilder on Widget {
  /// 将 Widget 转换为 ContainerBuilder，开始样式链式调用 (新的建造者模式)
  ContainerBuilder asContainer() {
    return ContainerBuilder(this);
  }
  
  /// @deprecated 使用新的建造者模式 asContainer() 替代
  /// 将 Widget 转换为 ContainerBuilder，开始样式链式调用
  @Deprecated('Use asContainer() instead. This will be removed in a future version.')
  ContainerBuilder asContainerBuilder() {
    return ContainerBuilder(this);
  }
}

/// ContainerBuilder 的样式扩展 - TailwindCSS 风格的方法
extension ContainerBuilderTailwindExtensions on ContainerBuilder {
  
  // === 背景色快捷方法 ===
  // 基础颜色
  ContainerBuilder bgWhite() => backgroundColor(TwColors.white);
  ContainerBuilder bgBlack() => backgroundColor(TwColors.black);
  ContainerBuilder bgTransparent() => backgroundColor(TwColors.transparent);
  
  // Gray 系列
  ContainerBuilder bgGray50() => backgroundColor(TwColors.gray50);
  ContainerBuilder bgGray100() => backgroundColor(TwColors.gray100);
  ContainerBuilder bgGray200() => backgroundColor(TwColors.gray200);
  ContainerBuilder bgGray300() => backgroundColor(TwColors.gray300);
  ContainerBuilder bgGray400() => backgroundColor(TwColors.gray400);
  ContainerBuilder bgGray500() => backgroundColor(TwColors.gray500);
  ContainerBuilder bgGray600() => backgroundColor(TwColors.gray600);
  ContainerBuilder bgGray700() => backgroundColor(TwColors.gray700);
  ContainerBuilder bgGray800() => backgroundColor(TwColors.gray800);
  ContainerBuilder bgGray900() => backgroundColor(TwColors.gray900);
  ContainerBuilder bgGray950() => backgroundColor(TwColors.gray950);
  
  // Blue 系列
  ContainerBuilder bgBlue50() => backgroundColor(TwColors.blue50);
  ContainerBuilder bgBlue100() => backgroundColor(TwColors.blue100);
  ContainerBuilder bgBlue200() => backgroundColor(TwColors.blue200);
  ContainerBuilder bgBlue300() => backgroundColor(TwColors.blue300);
  ContainerBuilder bgBlue400() => backgroundColor(TwColors.blue400);
  ContainerBuilder bgBlue500() => backgroundColor(TwColors.blue500);
  ContainerBuilder bgBlue600() => backgroundColor(TwColors.blue600);
  ContainerBuilder bgBlue700() => backgroundColor(TwColors.blue700);
  ContainerBuilder bgBlue800() => backgroundColor(TwColors.blue800);
  ContainerBuilder bgBlue900() => backgroundColor(TwColors.blue900);
  ContainerBuilder bgBlue950() => backgroundColor(TwColors.blue950);
  
  // Green 系列
  ContainerBuilder bgGreen50() => backgroundColor(TwColors.green50);
  ContainerBuilder bgGreen100() => backgroundColor(TwColors.green100);
  ContainerBuilder bgGreen200() => backgroundColor(TwColors.green200);
  ContainerBuilder bgGreen300() => backgroundColor(TwColors.green300);
  ContainerBuilder bgGreen400() => backgroundColor(TwColors.green400);
  ContainerBuilder bgGreen500() => backgroundColor(TwColors.green500);
  ContainerBuilder bgGreen600() => backgroundColor(TwColors.green600);
  ContainerBuilder bgGreen700() => backgroundColor(TwColors.green700);
  ContainerBuilder bgGreen800() => backgroundColor(TwColors.green800);
  ContainerBuilder bgGreen900() => backgroundColor(TwColors.green900);
  ContainerBuilder bgGreen950() => backgroundColor(TwColors.green950);
  
  // Yellow 系列
  ContainerBuilder bgYellow50() => backgroundColor(TwColors.yellow50);
  ContainerBuilder bgYellow100() => backgroundColor(TwColors.yellow100);
  ContainerBuilder bgYellow200() => backgroundColor(TwColors.yellow200);
  ContainerBuilder bgYellow300() => backgroundColor(TwColors.yellow300);
  ContainerBuilder bgYellow400() => backgroundColor(TwColors.yellow400);
  ContainerBuilder bgYellow500() => backgroundColor(TwColors.yellow500);
  ContainerBuilder bgYellow600() => backgroundColor(TwColors.yellow600);
  ContainerBuilder bgYellow700() => backgroundColor(TwColors.yellow700);
  ContainerBuilder bgYellow800() => backgroundColor(TwColors.yellow800);
  ContainerBuilder bgYellow900() => backgroundColor(TwColors.yellow900);
  ContainerBuilder bgYellow950() => backgroundColor(TwColors.yellow950);
  
  // Red 系列
  ContainerBuilder bgRed50() => backgroundColor(TwColors.red50);
  ContainerBuilder bgRed100() => backgroundColor(TwColors.red100);
  ContainerBuilder bgRed200() => backgroundColor(TwColors.red200);
  ContainerBuilder bgRed300() => backgroundColor(TwColors.red300);
  ContainerBuilder bgRed400() => backgroundColor(TwColors.red400);
  ContainerBuilder bgRed500() => backgroundColor(TwColors.red500);
  ContainerBuilder bgRed600() => backgroundColor(TwColors.red600);
  ContainerBuilder bgRed700() => backgroundColor(TwColors.red700);
  ContainerBuilder bgRed800() => backgroundColor(TwColors.red800);
  ContainerBuilder bgRed900() => backgroundColor(TwColors.red900);
  ContainerBuilder bgRed950() => backgroundColor(TwColors.red950);
  
  // Purple 系列
  ContainerBuilder bgPurple50() => backgroundColor(TwColors.purple50);
  ContainerBuilder bgPurple100() => backgroundColor(TwColors.purple100);
  ContainerBuilder bgPurple200() => backgroundColor(TwColors.purple200);
  ContainerBuilder bgPurple300() => backgroundColor(TwColors.purple300);
  ContainerBuilder bgPurple400() => backgroundColor(TwColors.purple400);
  ContainerBuilder bgPurple500() => backgroundColor(TwColors.purple500);
  ContainerBuilder bgPurple600() => backgroundColor(TwColors.purple600);
  ContainerBuilder bgPurple700() => backgroundColor(TwColors.purple700);
  ContainerBuilder bgPurple800() => backgroundColor(TwColors.purple800);
  ContainerBuilder bgPurple900() => backgroundColor(TwColors.purple900);
  ContainerBuilder bgPurple950() => backgroundColor(TwColors.purple950);
  
  // Orange 系列
  ContainerBuilder bgOrange50() => backgroundColor(TwColors.orange50);
  ContainerBuilder bgOrange100() => backgroundColor(TwColors.orange100);
  ContainerBuilder bgOrange200() => backgroundColor(TwColors.orange200);
  ContainerBuilder bgOrange300() => backgroundColor(TwColors.orange300);
  ContainerBuilder bgOrange400() => backgroundColor(TwColors.orange400);
  ContainerBuilder bgOrange500() => backgroundColor(TwColors.orange500);
  ContainerBuilder bgOrange600() => backgroundColor(TwColors.orange600);
  ContainerBuilder bgOrange700() => backgroundColor(TwColors.orange700);
  ContainerBuilder bgOrange800() => backgroundColor(TwColors.orange800);
  ContainerBuilder bgOrange900() => backgroundColor(TwColors.orange900);
  ContainerBuilder bgOrange950() => backgroundColor(TwColors.orange950);
  
  // Amber 系列
  ContainerBuilder bgAmber50() => backgroundColor(TwColors.amber50);
  ContainerBuilder bgAmber100() => backgroundColor(TwColors.amber100);
  ContainerBuilder bgAmber200() => backgroundColor(TwColors.amber200);
  ContainerBuilder bgAmber300() => backgroundColor(TwColors.amber300);
  ContainerBuilder bgAmber400() => backgroundColor(TwColors.amber400);
  ContainerBuilder bgAmber500() => backgroundColor(TwColors.amber500);
  ContainerBuilder bgAmber600() => backgroundColor(TwColors.amber600);
  ContainerBuilder bgAmber700() => backgroundColor(TwColors.amber700);
  ContainerBuilder bgAmber800() => backgroundColor(TwColors.amber800);
  ContainerBuilder bgAmber900() => backgroundColor(TwColors.amber900);
  ContainerBuilder bgAmber950() => backgroundColor(TwColors.amber950);
  
  // Lime 系列
  ContainerBuilder bgLime50() => backgroundColor(TwColors.lime50);
  ContainerBuilder bgLime100() => backgroundColor(TwColors.lime100);
  ContainerBuilder bgLime200() => backgroundColor(TwColors.lime200);
  ContainerBuilder bgLime300() => backgroundColor(TwColors.lime300);
  ContainerBuilder bgLime400() => backgroundColor(TwColors.lime400);
  ContainerBuilder bgLime500() => backgroundColor(TwColors.lime500);
  ContainerBuilder bgLime600() => backgroundColor(TwColors.lime600);
  ContainerBuilder bgLime700() => backgroundColor(TwColors.lime700);
  ContainerBuilder bgLime800() => backgroundColor(TwColors.lime800);
  ContainerBuilder bgLime900() => backgroundColor(TwColors.lime900);
  ContainerBuilder bgLime950() => backgroundColor(TwColors.lime950);
  
  // Emerald 系列
  ContainerBuilder bgEmerald50() => backgroundColor(TwColors.emerald50);
  ContainerBuilder bgEmerald100() => backgroundColor(TwColors.emerald100);
  ContainerBuilder bgEmerald200() => backgroundColor(TwColors.emerald200);
  ContainerBuilder bgEmerald300() => backgroundColor(TwColors.emerald300);
  ContainerBuilder bgEmerald400() => backgroundColor(TwColors.emerald400);
  ContainerBuilder bgEmerald500() => backgroundColor(TwColors.emerald500);
  ContainerBuilder bgEmerald600() => backgroundColor(TwColors.emerald600);
  ContainerBuilder bgEmerald700() => backgroundColor(TwColors.emerald700);
  ContainerBuilder bgEmerald800() => backgroundColor(TwColors.emerald800);
  ContainerBuilder bgEmerald900() => backgroundColor(TwColors.emerald900);
  ContainerBuilder bgEmerald950() => backgroundColor(TwColors.emerald950);
  
  // Teal 系列
  ContainerBuilder bgTeal50() => backgroundColor(TwColors.teal50);
  ContainerBuilder bgTeal100() => backgroundColor(TwColors.teal100);
  ContainerBuilder bgTeal200() => backgroundColor(TwColors.teal200);
  ContainerBuilder bgTeal300() => backgroundColor(TwColors.teal300);
  ContainerBuilder bgTeal400() => backgroundColor(TwColors.teal400);
  ContainerBuilder bgTeal500() => backgroundColor(TwColors.teal500);
  ContainerBuilder bgTeal600() => backgroundColor(TwColors.teal600);
  ContainerBuilder bgTeal700() => backgroundColor(TwColors.teal700);
  ContainerBuilder bgTeal800() => backgroundColor(TwColors.teal800);
  ContainerBuilder bgTeal900() => backgroundColor(TwColors.teal900);
  ContainerBuilder bgTeal950() => backgroundColor(TwColors.teal950);
  
  // Cyan 系列
  ContainerBuilder bgCyan50() => backgroundColor(TwColors.cyan50);
  ContainerBuilder bgCyan100() => backgroundColor(TwColors.cyan100);
  ContainerBuilder bgCyan200() => backgroundColor(TwColors.cyan200);
  ContainerBuilder bgCyan300() => backgroundColor(TwColors.cyan300);
  ContainerBuilder bgCyan400() => backgroundColor(TwColors.cyan400);
  ContainerBuilder bgCyan500() => backgroundColor(TwColors.cyan500);
  ContainerBuilder bgCyan600() => backgroundColor(TwColors.cyan600);
  ContainerBuilder bgCyan700() => backgroundColor(TwColors.cyan700);
  ContainerBuilder bgCyan800() => backgroundColor(TwColors.cyan800);
  ContainerBuilder bgCyan900() => backgroundColor(TwColors.cyan900);
  ContainerBuilder bgCyan950() => backgroundColor(TwColors.cyan950);
  
  // Sky 系列
  ContainerBuilder bgSky50() => backgroundColor(TwColors.sky50);
  ContainerBuilder bgSky100() => backgroundColor(TwColors.sky100);
  ContainerBuilder bgSky200() => backgroundColor(TwColors.sky200);
  ContainerBuilder bgSky300() => backgroundColor(TwColors.sky300);
  ContainerBuilder bgSky400() => backgroundColor(TwColors.sky400);
  ContainerBuilder bgSky500() => backgroundColor(TwColors.sky500);
  ContainerBuilder bgSky600() => backgroundColor(TwColors.sky600);
  ContainerBuilder bgSky700() => backgroundColor(TwColors.sky700);
  ContainerBuilder bgSky800() => backgroundColor(TwColors.sky800);
  ContainerBuilder bgSky900() => backgroundColor(TwColors.sky900);
  ContainerBuilder bgSky950() => backgroundColor(TwColors.sky950);
  
  // Indigo 系列
  ContainerBuilder bgIndigo50() => backgroundColor(TwColors.indigo50);
  ContainerBuilder bgIndigo100() => backgroundColor(TwColors.indigo100);
  ContainerBuilder bgIndigo200() => backgroundColor(TwColors.indigo200);
  ContainerBuilder bgIndigo300() => backgroundColor(TwColors.indigo300);
  ContainerBuilder bgIndigo400() => backgroundColor(TwColors.indigo400);
  ContainerBuilder bgIndigo500() => backgroundColor(TwColors.indigo500);
  ContainerBuilder bgIndigo600() => backgroundColor(TwColors.indigo600);
  ContainerBuilder bgIndigo700() => backgroundColor(TwColors.indigo700);
  ContainerBuilder bgIndigo800() => backgroundColor(TwColors.indigo800);
  ContainerBuilder bgIndigo900() => backgroundColor(TwColors.indigo900);
  ContainerBuilder bgIndigo950() => backgroundColor(TwColors.indigo950);
  
  // Violet 系列
  ContainerBuilder bgViolet50() => backgroundColor(TwColors.violet50);
  ContainerBuilder bgViolet100() => backgroundColor(TwColors.violet100);
  ContainerBuilder bgViolet200() => backgroundColor(TwColors.violet200);
  ContainerBuilder bgViolet300() => backgroundColor(TwColors.violet300);
  ContainerBuilder bgViolet400() => backgroundColor(TwColors.violet400);
  ContainerBuilder bgViolet500() => backgroundColor(TwColors.violet500);
  ContainerBuilder bgViolet600() => backgroundColor(TwColors.violet600);
  ContainerBuilder bgViolet700() => backgroundColor(TwColors.violet700);
  ContainerBuilder bgViolet800() => backgroundColor(TwColors.violet800);
  ContainerBuilder bgViolet900() => backgroundColor(TwColors.violet900);
  ContainerBuilder bgViolet950() => backgroundColor(TwColors.violet950);
  
  // Fuchsia 系列
  ContainerBuilder bgFuchsia50() => backgroundColor(TwColors.fuchsia50);
  ContainerBuilder bgFuchsia100() => backgroundColor(TwColors.fuchsia100);
  ContainerBuilder bgFuchsia200() => backgroundColor(TwColors.fuchsia200);
  ContainerBuilder bgFuchsia300() => backgroundColor(TwColors.fuchsia300);
  ContainerBuilder bgFuchsia400() => backgroundColor(TwColors.fuchsia400);
  ContainerBuilder bgFuchsia500() => backgroundColor(TwColors.fuchsia500);
  ContainerBuilder bgFuchsia600() => backgroundColor(TwColors.fuchsia600);
  ContainerBuilder bgFuchsia700() => backgroundColor(TwColors.fuchsia700);
  ContainerBuilder bgFuchsia800() => backgroundColor(TwColors.fuchsia800);
  ContainerBuilder bgFuchsia900() => backgroundColor(TwColors.fuchsia900);
  ContainerBuilder bgFuchsia950() => backgroundColor(TwColors.fuchsia950);
  
  // Pink 系列
  ContainerBuilder bgPink50() => backgroundColor(TwColors.pink50);
  ContainerBuilder bgPink100() => backgroundColor(TwColors.pink100);
  ContainerBuilder bgPink200() => backgroundColor(TwColors.pink200);
  ContainerBuilder bgPink300() => backgroundColor(TwColors.pink300);
  ContainerBuilder bgPink400() => backgroundColor(TwColors.pink400);
  ContainerBuilder bgPink500() => backgroundColor(TwColors.pink500);
  ContainerBuilder bgPink600() => backgroundColor(TwColors.pink600);
  ContainerBuilder bgPink700() => backgroundColor(TwColors.pink700);
  ContainerBuilder bgPink800() => backgroundColor(TwColors.pink800);
  ContainerBuilder bgPink900() => backgroundColor(TwColors.pink900);
  ContainerBuilder bgPink950() => backgroundColor(TwColors.pink950);
  
  // Rose 系列
  ContainerBuilder bgRose50() => backgroundColor(TwColors.rose50);
  ContainerBuilder bgRose100() => backgroundColor(TwColors.rose100);
  ContainerBuilder bgRose200() => backgroundColor(TwColors.rose200);
  ContainerBuilder bgRose300() => backgroundColor(TwColors.rose300);
  ContainerBuilder bgRose400() => backgroundColor(TwColors.rose400);
  ContainerBuilder bgRose500() => backgroundColor(TwColors.rose500);
  ContainerBuilder bgRose600() => backgroundColor(TwColors.rose600);
  ContainerBuilder bgRose700() => backgroundColor(TwColors.rose700);
  ContainerBuilder bgRose800() => backgroundColor(TwColors.rose800);
  ContainerBuilder bgRose900() => backgroundColor(TwColors.rose900);
  ContainerBuilder bgRose950() => backgroundColor(TwColors.rose950);
  
  // Slate 系列
  ContainerBuilder bgSlate50() => backgroundColor(TwColors.slate50);
  ContainerBuilder bgSlate100() => backgroundColor(TwColors.slate100);
  ContainerBuilder bgSlate200() => backgroundColor(TwColors.slate200);
  ContainerBuilder bgSlate300() => backgroundColor(TwColors.slate300);
  ContainerBuilder bgSlate400() => backgroundColor(TwColors.slate400);
  ContainerBuilder bgSlate500() => backgroundColor(TwColors.slate500);
  ContainerBuilder bgSlate600() => backgroundColor(TwColors.slate600);
  ContainerBuilder bgSlate700() => backgroundColor(TwColors.slate700);
  ContainerBuilder bgSlate800() => backgroundColor(TwColors.slate800);
  ContainerBuilder bgSlate900() => backgroundColor(TwColors.slate900);
  ContainerBuilder bgSlate950() => backgroundColor(TwColors.slate950);
  
  // Zinc 系列
  ContainerBuilder bgZinc50() => backgroundColor(TwColors.zinc50);
  ContainerBuilder bgZinc100() => backgroundColor(TwColors.zinc100);
  ContainerBuilder bgZinc200() => backgroundColor(TwColors.zinc200);
  ContainerBuilder bgZinc300() => backgroundColor(TwColors.zinc300);
  ContainerBuilder bgZinc400() => backgroundColor(TwColors.zinc400);
  ContainerBuilder bgZinc500() => backgroundColor(TwColors.zinc500);
  ContainerBuilder bgZinc600() => backgroundColor(TwColors.zinc600);
  ContainerBuilder bgZinc700() => backgroundColor(TwColors.zinc700);
  ContainerBuilder bgZinc800() => backgroundColor(TwColors.zinc800);
  ContainerBuilder bgZinc900() => backgroundColor(TwColors.zinc900);
  ContainerBuilder bgZinc950() => backgroundColor(TwColors.zinc950);
  
  // Neutral 系列
  ContainerBuilder bgNeutral50() => backgroundColor(TwColors.neutral50);
  ContainerBuilder bgNeutral100() => backgroundColor(TwColors.neutral100);
  ContainerBuilder bgNeutral200() => backgroundColor(TwColors.neutral200);
  ContainerBuilder bgNeutral300() => backgroundColor(TwColors.neutral300);
  ContainerBuilder bgNeutral400() => backgroundColor(TwColors.neutral400);
  ContainerBuilder bgNeutral500() => backgroundColor(TwColors.neutral500);
  ContainerBuilder bgNeutral600() => backgroundColor(TwColors.neutral600);
  ContainerBuilder bgNeutral700() => backgroundColor(TwColors.neutral700);
  ContainerBuilder bgNeutral800() => backgroundColor(TwColors.neutral800);
  ContainerBuilder bgNeutral900() => backgroundColor(TwColors.neutral900);
  ContainerBuilder bgNeutral950() => backgroundColor(TwColors.neutral950);
  
  // Stone 系列
  ContainerBuilder bgStone50() => backgroundColor(TwColors.stone50);
  ContainerBuilder bgStone100() => backgroundColor(TwColors.stone100);
  ContainerBuilder bgStone200() => backgroundColor(TwColors.stone200);
  ContainerBuilder bgStone300() => backgroundColor(TwColors.stone300);
  ContainerBuilder bgStone400() => backgroundColor(TwColors.stone400);
  ContainerBuilder bgStone500() => backgroundColor(TwColors.stone500);
  ContainerBuilder bgStone600() => backgroundColor(TwColors.stone600);
  ContainerBuilder bgStone700() => backgroundColor(TwColors.stone700);
  ContainerBuilder bgStone800() => backgroundColor(TwColors.stone800);
  ContainerBuilder bgStone900() => backgroundColor(TwColors.stone900);
  ContainerBuilder bgStone950() => backgroundColor(TwColors.stone950);
  
  // === 内边距快捷方法 ===
  ContainerBuilder px1() => paddingHorizontal(4);
  ContainerBuilder px2() => paddingHorizontal(8);
  ContainerBuilder px3() => paddingHorizontal(12);
  ContainerBuilder px4() => paddingHorizontal(16);
  ContainerBuilder px5() => paddingHorizontal(20);
  ContainerBuilder px6() => paddingHorizontal(24);
  ContainerBuilder px7() => paddingHorizontal(28);
  ContainerBuilder px8() => paddingHorizontal(32);
  
  ContainerBuilder py1() => paddingVertical(4);
  ContainerBuilder py2() => paddingVertical(8);
  ContainerBuilder py3() => paddingVertical(12);
  ContainerBuilder py4() => paddingVertical(16);
  ContainerBuilder py5() => paddingVertical(20);
  ContainerBuilder py6() => paddingVertical(24);
  ContainerBuilder py7() => paddingVertical(28);
  ContainerBuilder py8() => paddingVertical(32);
  
  ContainerBuilder p1() => paddingAll(4);
  ContainerBuilder p2() => paddingAll(8);
  ContainerBuilder p3() => paddingAll(12);
  ContainerBuilder p4() => paddingAll(16);
  ContainerBuilder p5() => paddingAll(20);
  ContainerBuilder p6() => paddingAll(24);
  ContainerBuilder p7() => paddingAll(28);
  ContainerBuilder p8() => paddingAll(32);
  
  // === 边框快捷方法 ===
  /// border-2 - 设置边框宽度为2px
  ContainerBuilder border2({Color color = const Color(0xFFE5E7EB)}) => borderAll(color: color, width: 2.0);
  
  /// border-4 - 设置边框宽度为4px  
  ContainerBuilder border4({Color color = const Color(0xFFE5E7EB)}) => borderAll(color: color, width: 4.0);
  
  ContainerBuilder borderWidth1() => borderAll(width: 1.0);
  ContainerBuilder borderWidth2() => borderAll(width: 2.0);
  ContainerBuilder borderWidth4() => borderAll(width: 4.0);
  
  // 边框颜色 - Gray 系列
  ContainerBuilder borderGray50() => borderAll(color: TwColors.gray50);
  ContainerBuilder borderGray100() => borderAll(color: TwColors.gray100);
  ContainerBuilder borderGray200() => borderAll(color: TwColors.gray200);
  ContainerBuilder borderGray300() => borderAll(color: TwColors.gray300);
  ContainerBuilder borderGray400() => borderAll(color: TwColors.gray400);
  ContainerBuilder borderGray500() => borderAll(color: TwColors.gray500);
  ContainerBuilder borderGray600() => borderAll(color: TwColors.gray600);
  ContainerBuilder borderGray700() => borderAll(color: TwColors.gray700);
  ContainerBuilder borderGray800() => borderAll(color: TwColors.gray800);
  ContainerBuilder borderGray900() => borderAll(color: TwColors.gray900);
  ContainerBuilder borderGray950() => borderAll(color: TwColors.gray950);
  
  // 边框颜色 - Blue 系列
  ContainerBuilder borderBlue50() => borderAll(color: TwColors.blue50);
  ContainerBuilder borderBlue100() => borderAll(color: TwColors.blue100);
  ContainerBuilder borderBlue200() => borderAll(color: TwColors.blue200);
  ContainerBuilder borderBlue300() => borderAll(color: TwColors.blue300);
  ContainerBuilder borderBlue400() => borderAll(color: TwColors.blue400);
  ContainerBuilder borderBlue500() => borderAll(color: TwColors.blue500);
  ContainerBuilder borderBlue600() => borderAll(color: TwColors.blue600);
  ContainerBuilder borderBlue700() => borderAll(color: TwColors.blue700);
  ContainerBuilder borderBlue800() => borderAll(color: TwColors.blue800);
  ContainerBuilder borderBlue900() => borderAll(color: TwColors.blue900);
  ContainerBuilder borderBlue950() => borderAll(color: TwColors.blue950);
  
  // 边框颜色 - Red 系列
  ContainerBuilder borderRed50() => borderAll(color: TwColors.red50);
  ContainerBuilder borderRed100() => borderAll(color: TwColors.red100);
  ContainerBuilder borderRed200() => borderAll(color: TwColors.red200);
  ContainerBuilder borderRed300() => borderAll(color: TwColors.red300);
  ContainerBuilder borderRed400() => borderAll(color: TwColors.red400);
  ContainerBuilder borderRed500() => borderAll(color: TwColors.red500);
  ContainerBuilder borderRed600() => borderAll(color: TwColors.red600);
  ContainerBuilder borderRed700() => borderAll(color: TwColors.red700);
  ContainerBuilder borderRed800() => borderAll(color: TwColors.red800);
  ContainerBuilder borderRed900() => borderAll(color: TwColors.red900);
  ContainerBuilder borderRed950() => borderAll(color: TwColors.red950);
  
  // 边框颜色 - Green 系列
  ContainerBuilder borderGreen50() => borderAll(color: TwColors.green50);
  ContainerBuilder borderGreen100() => borderAll(color: TwColors.green100);
  ContainerBuilder borderGreen200() => borderAll(color: TwColors.green200);
  ContainerBuilder borderGreen300() => borderAll(color: TwColors.green300);
  ContainerBuilder borderGreen400() => borderAll(color: TwColors.green400);
  ContainerBuilder borderGreen500() => borderAll(color: TwColors.green500);
  ContainerBuilder borderGreen600() => borderAll(color: TwColors.green600);
  ContainerBuilder borderGreen700() => borderAll(color: TwColors.green700);
  ContainerBuilder borderGreen800() => borderAll(color: TwColors.green800);
  ContainerBuilder borderGreen900() => borderAll(color: TwColors.green900);
  ContainerBuilder borderGreen950() => borderAll(color: TwColors.green950);
  
  // 边框颜色 - Yellow 系列
  ContainerBuilder borderYellow50() => borderAll(color: TwColors.yellow50);
  ContainerBuilder borderYellow100() => borderAll(color: TwColors.yellow100);
  ContainerBuilder borderYellow200() => borderAll(color: TwColors.yellow200);
  ContainerBuilder borderYellow300() => borderAll(color: TwColors.yellow300);
  ContainerBuilder borderYellow400() => borderAll(color: TwColors.yellow400);
  ContainerBuilder borderYellow500() => borderAll(color: TwColors.yellow500);
  ContainerBuilder borderYellow600() => borderAll(color: TwColors.yellow600);
  ContainerBuilder borderYellow700() => borderAll(color: TwColors.yellow700);
  ContainerBuilder borderYellow800() => borderAll(color: TwColors.yellow800);
  ContainerBuilder borderYellow900() => borderAll(color: TwColors.yellow900);
  ContainerBuilder borderYellow950() => borderAll(color: TwColors.yellow950);
  
  // 边框颜色 - Purple 系列
  ContainerBuilder borderPurple50() => borderAll(color: TwColors.purple50);
  ContainerBuilder borderPurple100() => borderAll(color: TwColors.purple100);
  ContainerBuilder borderPurple200() => borderAll(color: TwColors.purple200);
  ContainerBuilder borderPurple300() => borderAll(color: TwColors.purple300);
  ContainerBuilder borderPurple400() => borderAll(color: TwColors.purple400);
  ContainerBuilder borderPurple500() => borderAll(color: TwColors.purple500);
  ContainerBuilder borderPurple600() => borderAll(color: TwColors.purple600);
  ContainerBuilder borderPurple700() => borderAll(color: TwColors.purple700);
  ContainerBuilder borderPurple800() => borderAll(color: TwColors.purple800);
  ContainerBuilder borderPurple900() => borderAll(color: TwColors.purple900);
  ContainerBuilder borderPurple950() => borderAll(color: TwColors.purple950);
  
  // === 圆角快捷方法 ===
  ContainerBuilder rounded() => borderRadiusCircular(4);
  ContainerBuilder roundedSm() => borderRadiusCircular(2);
  ContainerBuilder roundedMd() => borderRadiusCircular(6);
  ContainerBuilder roundedLg() => borderRadiusCircular(8);
  ContainerBuilder roundedXl() => borderRadiusCircular(12);
  ContainerBuilder rounded2xl() => borderRadiusCircular(16);
  
  ContainerBuilder rounded4() => borderRadiusCircular(4);
  ContainerBuilder rounded6() => borderRadiusCircular(6);
  ContainerBuilder rounded8() => borderRadiusCircular(8);
  ContainerBuilder rounded12() => borderRadiusCircular(12);
  ContainerBuilder rounded16() => borderRadiusCircular(16);
  
  ContainerBuilder r4() => borderRadiusCircular(4);
  ContainerBuilder r6() => borderRadiusCircular(6);
  ContainerBuilder r8() => borderRadiusCircular(8);
  ContainerBuilder r12() => borderRadiusCircular(12);
  ContainerBuilder r16() => borderRadiusCircular(16);
  
  // === 阴影快捷方法 ===
  ContainerBuilder shadow() => boxShadow([
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.06),
      blurRadius: 2,
      offset: Offset(0, 1),
    ),
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.04),
      blurRadius: 1,
      offset: Offset(0, 1),
      spreadRadius: -0.5,
    ),
  ]);
  
  ContainerBuilder shadowSm() => boxShadow([
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.05),
      blurRadius: 1,
      offset: Offset(0, 1),
    ),
  ]);
  
  ContainerBuilder shadowMd() => boxShadow([
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.1),
      blurRadius: 6,
      offset: Offset(0, 4),
      spreadRadius: -2,
    ),
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.05),
      blurRadius: 4,
      offset: Offset(0, 2),
      spreadRadius: -1,
    ),
  ]);
  
  ContainerBuilder shadowLg() => boxShadow([
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.1),
      blurRadius: 15,
      offset: Offset(0, 10),
      spreadRadius: -3,
    ),
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.05),
      blurRadius: 6,
      offset: Offset(0, 4),
      spreadRadius: -2,
    ),
  ]);
}

/// 为了向后兼容，保留原有的 asContainer 方法
extension ContainerBuilderCompatibility on ContainerBuilder {
  /// 兼容原有的 asContainer 调用 - 直接构建
  Widget asContainer() {
    return build();
  }
}

/// 为 ContainerBuilder 添加交互扩展
extension ContainerBuilderInteraction on ContainerBuilder {
  /// 添加点击事件，自动构建 Container 并包装 GestureDetector
  Widget onTap(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: build(), // 自动调用build()
    );
  }
}

