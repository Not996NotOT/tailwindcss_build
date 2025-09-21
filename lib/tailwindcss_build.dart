library tailwindcss_build;

import 'package:flutter/material.dart';

// 导入 Tailwind CSS 工具类扩展
export 'aspect_ratio.dart';
export 'border_radius.dart';
export 'colors.dart';
export 'height.dart';
export 'width.dart';

abstract class IBuildWidget {
  Widget build();
}

abstract class IBaseSize<W> {
  double? height;
  double? width;
  W h(double h);
  W w(double w);
}

abstract class ISize<W> extends IBaseSize<W> {
  double? minHeight;
  double? minWidth;
  double? maxHeight;
  double? maxWidth;
  W wFull();
  W hFull();
  W minW(double minW);
  W minH(double minH);
  W maxW(double maxW);
  W maxH(double maxh);
}

abstract class IPadding<W> {
  double? pLeft;
  double? pRight;
  double? pTop;
  double? pBottom;
  W p(double all);
  W pl(double left);
  W pr(double right);
  W pt(double top);
  W pb(double bottom);
  W px(double leftAndRight);
  W py(double topAndBottom);
}

abstract class IMargin<W> {
  double? mLeft;
  double? mRight;
  double? mTop;
  double? mBottom;
  W m(double all);
  W ml(double left);
  W mr(double mr);
  W mt(double top);
  W mb(double bottom);
  W mx(double leftAndRight);
  W my(double topAndBottom);
}

abstract class IBackgroundColor<W> {
  Color? bgColor;
  W bg(Color color);
}

abstract class IFlex1<W> {
  bool? isFlex1;
  W flex1();
}

abstract class IFlex<W> extends IFlex1<W> {
  Axis? flexDirection;
  MainAxisAlignment? flexMainAxisAlignment;
  CrossAxisAlignment? flexCrossAxisAlignment;

  bool? isFlex;
  W gap(double size);
  W flex();
  W flexRow();
  W flexCol();
  W itemsStart();
  W itemsEnd();
  W itemsCenter();
  W itemsBaseLine();
  W itemsStretch();
  W justifyStart();
  W justifyEnd();
  W justifyCenter();
  W justifyBetween();
  W justifyAround();
  W justifyEvenly();
}

abstract class IBorder<W> {
  double? borderTopWidth;
  Color? borderTopColor;
  double? borderLeftWidth;
  Color? borderLeftColor;
  double? borderRightWidth;
  Color? borderRightColor;
  double? borderBottomWidth;
  Color? borderBotttomColor;
  W border({double width = 0, Color color = Colors.transparent});
  W borderT({double width = 0, Color color = Colors.transparent});
  W borderB({double width = 0, Color color = Colors.transparent});
  W borderL({double width = 0, Color color = Colors.transparent});
  W borderR({double width = 0, Color color = Colors.transparent});
}

abstract class ITextAlign<W> {
  TextAlign? textAlign;
  W textLeft();
  W textCenter();
  W textRight();
  W textJustify();
  W textStart();
  W textEnd();
}

abstract class IGridGap<W> {
  double? gridGapX;
  double? gridGapY;
  W gapX(double gapX);
  W gapY(double gapY);
}

abstract class IGridTemplateColumns<W> {
  int? gridColCount;
  W gridCols(int columns);
}

abstract class IGrid<W> implements IGridTemplateColumns<W>, IGridGap<W> {
  bool? isGrid;
  W grid();
}

abstract class IAspect<W> {
  double? _aspectRatio;
  W aspectRatio();
  W aspectVideo();
  W aspect(double aspectRatio);
}

abstract class IBaseRounded<W> {
  W roundedFull();
}

abstract class IBaseRoundedAll<W> {
  W roundedSm();
  W rounded({double? borderRadius});
  W roundedMd();
  W roundedLg();
}

abstract class IRounded<W> implements IBaseRounded<W>, IBaseRoundedAll<W> {
  bool? isBorderRadius;
  double? bordertlRadius;
  double? brodertrRaidus;
  double? borderblRadius;
  double? borderbrRadius;

  W roundedT({double? borderRadius});
  W roundedR({double? borderRadius});
  W roundedB({double? borderRadius});
  W roundedL({double? borderRadius});
  W roundedTL({double? borderRadius});
  W roundedTR({double? borderRadius});
  W roundedBR({double? borderRadius});
  W roundedBL({double? borderRadius});
}

abstract class IGradientColor<W> {
  Alignment? colorFromAlignment;
  Alignment? colorToAlignment;
  Color? colorFrom;
  double? colorFromPercentage;
  Color? colorVia;
  double? colorViaPercentage;
  Color? colorTo;
  double? colorToPercentage;
  W from(Color color, {double? percentage});
  W via(Color color, {double? percentage});
  W to(Color color, {double? percentage});
  W bgGradientToT();
//   bg-gradient-to-t	background-image: linear-gradient(to top, var(--tw-gradient-stops));
  W bgGradientToTr();
// bg-gradient-to-tr	background-image: linear-gradient(to top right, var(--tw-gradient-stops));
  W bgGradientToR();
// bg-gradient-to-r	background-image: linear-gradient(to right, var(--tw-gradient-stops));
  W bgGradientToBR();
// bg-gradient-to-br	background-image: linear-gradient(to bottom right, var(--tw-gradient-stops));
  W bgGgradientToB();
// bg-gradient-to-b	background-image: linear-gradient(to bottom, var(--tw-gradient-stops));
  W bgGgradientToBl();
// bg-gradient-to-bl	background-image: linear-gradient(to bottom left, var(--tw-gradient-stops));
  W bggradientToL();
// bg-gradient-to-l	background-image: linear-gradient(to left, var(--tw-gradient-stops));
  W bggradientToTl();
// bg-gradient-to-tl	background-image: linear-gradient(to top left, var(--tw-gradient-stops));
}

abstract class IShadow<W> {
  List<BoxShadow>? boxShadowList;
  W shadowSm();
  // shadow-sm	box-shadow: 0 1px 2px 0 rgb(0 0 0 / 0.05);
  W shadow();
  // shadow	box-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
  W shadowMd();
  // shadow-md	box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
  W shadowLg();
  // shadow-lg	box-shadow: 0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1);
  W shadowXl();
  // shadow-xl	box-shadow: 0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1);
  W shadow2xl();
  // shadow-2xl	box-shadow: 0 25px 50px -12px rgb(0 0 0 / 0.25);
  W shadowInner();
  // shadow-inner	box-shadow: inset 0 2px 4px 0 rgb(0 0 0 / 0.05);
}

abstract class ICenter<W> {
  bool? isCenter;
  W center();
}

abstract class IPosition<W> {
  bool? isRelative;
  bool? isAbsolute;
  W relative();
  W absolute();
}

abstract class ITopRightBottomLeft<W> {
  double? positionTop;
  double? positionRight;
  double? positionBottom;
  double? positionLeft;
  W top(double top);
  W right(double right);
  W bottom(double bottom);
  W left(double left);
}

abstract class IOverflow<W> {
  bool? overflow_x_auto;
  bool? overflow_y_auto;
  W overflowXAuto();
  W overflowYAuto();
}

class Div
    implements
        ISize<Div>,
        IPadding<Div>,
        IMargin<Div>,
        IBackgroundColor<Div>,
        IFlex<Div>,
        ITextAlign<Div>,
        IGrid<Div>,
        IAspect<Div>,
        IRounded<Div>,
        IBorder<Div>,
        IGradientColor<Div>,
        IShadow<Div>,
        ICenter<Div>,
        IPosition<Div>,
        ITopRightBottomLeft<Div>,
        IOverflow<Div>,
        IBuildWidget {
  List<Widget> widgets;
  Div(this.widgets);
  @override
  double? height;

  @override
  double? maxHeight;

  @override
  double? maxWidth;

  @override
  double? minHeight;

  @override
  double? minWidth;

  @override
  double? width;

  @override
  Div h(double h) {
    height = h;
    return this;
  }

  @override
  Div w(double w) {
    width = w;
    return this;
  }

  @override
  Div minW(double minW) {
    minWidth = minW;
    return this;
  }

  @override
  Div minH(double minH) {
    minHeight = minH;
    return this;
  }

  @override
  Div maxW(double maxW) {
    maxWidth = maxW;
    return this;
  }

  @override
  Div maxH(double maxh) {
    maxHeight = maxh;
    return this;
  }

  @override
  Div hFull() {
    height = double.infinity;
    return this;
  }

  @override
  Div wFull() {
    width = double.infinity;
    return this;
  }

  @override
  double? pBottom;

  @override
  double? pLeft;

  @override
  double? pRight;

  @override
  double? pTop;

  @override
  Div p(double all) {
    pLeft = all;
    pRight = all;
    pTop = all;
    pBottom = all;
    return this;
  }

  @override
  Div px(double leftAndRight) {
    pLeft = leftAndRight;
    pRight = leftAndRight;
    return this;
  }

  @override
  Div py(double topAndBottom) {
    pTop = topAndBottom;
    pBottom = topAndBottom;
    return this;
  }

  @override
  Div pl(double left) {
    pLeft = left;
    return this;
  }

  @override
  Div pr(double right) {
    pRight = right;
    return this;
  }

  @override
  Div pt(double top) {
    pTop = top;
    return this;
  }

  @override
  Div pb(double bottom) {
    pBottom = bottom;
    return this;
  }

  @override
  double? mBottom;

  @override
  double? mLeft;

  @override
  double? mRight;

  @override
  double? mTop;

  @override
  Div m(double all) {
    mTop = all;
    mBottom = all;
    mLeft = all;
    mRight = all;
    return this;
  }

  @override
  Div mb(double bottom) {
    mBottom = bottom;
    return this;
  }

  @override
  Div ml(double left) {
    mLeft = left;
    return this;
  }

  @override
  Div mr(double right) {
    mRight = right;
    return this;
  }

  @override
  Div mt(double top) {
    mTop = top;
    return this;
  }

  @override
  Div mx(double leftAndRight) {
    mLeft = leftAndRight;
    mRight = leftAndRight;
    return this;
  }

  @override
  Div my(double topAndBottom) {
    mTop = topAndBottom;
    mBottom = topAndBottom;
    return this;
  }

  @override
  Color? bgColor;

  @override
  Div bg(Color color) {
    bgColor = color;
    return this;
  }

  @override
  CrossAxisAlignment? flexCrossAxisAlignment;

  @override
  Axis? flexDirection;

  @override
  MainAxisAlignment? flexMainAxisAlignment;

  @override
  Div flex() {
    isFlex = true;
    flexDirection = Axis.horizontal;
    return this;
  }

  @override
  Div flexCol() {
    isFlex = true;
    flexDirection = Axis.vertical;
    return this;
  }

  @override
  Div flexRow() {
    return flex();
  }

  @override
  Div itemsCenter() {
    flexCrossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }

  @override
  Div justifyCenter() {
    flexMainAxisAlignment = MainAxisAlignment.center;
    return this;
  }

  @override
  bool? isFlex1;
  @override
  Div flex1() {
    isFlex1 = true;
    return this;
  }

  @override
  Div gap(double gapSize) {
    if (gapSize > 0) {
      gridGapX = gapSize;
      gridGapY = gapSize;
      if (isFlex == true) {
        List<Widget> widgetList = [];
        for (var widget in widgets) {
          widgetList.add(widget);
          widgetList.add(SizedBox(
            height: flexDirection == Axis.vertical ? gapSize : 0,
            width: flexDirection == Axis.horizontal ? gapSize : 0,
          ));
        }
        widgetList.removeLast();
        widgets = widgetList;
      }
    }
    return this;
  }

  @override
  Widget build() {
    var hasMinOrMax = minHeight != null ||
        minWidth != null ||
        maxHeight != null ||
        maxWidth != null;
    var _height = hasMinOrMax ? null : height;
    var _width = hasMinOrMax ? null : width;
    var _boxConstraints = hasMinOrMax
        ? BoxConstraints(
            minHeight: minHeight ?? 0,
            minWidth: minWidth ?? 0,
            maxHeight: maxHeight ?? 0,
            maxWidth: maxWidth ?? 0)
        : null;
    var _padding = EdgeInsets.only(
        left: pLeft ?? 0,
        right: pRight ?? 0,
        top: pTop ?? 0,
        bottom: pBottom ?? 0);

    var _margin = EdgeInsets.only(
        left: mLeft ?? 0,
        right: mRight ?? 0,
        top: mTop ?? 0,
        bottom: mBottom ?? 0);

    List<Widget> positionedWidgets =
        widgets.where((widget) => widget.runtimeType == Positioned).toList();

    widgets =
        widgets.where((widget) => widget.runtimeType != Positioned).toList();

    var _flex = Flex(
        mainAxisSize: MainAxisSize.max,
        direction: flexDirection ?? Axis.vertical,
        mainAxisAlignment: flexMainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: flexCrossAxisAlignment ?? CrossAxisAlignment.start,
        children: widgets);

    List<Color> gradientColors = colorVia == null
        ? [colorFrom ?? Colors.transparent, colorTo ?? Colors.transparent]
        : [
            colorFrom ?? Colors.transparent,
            colorVia ?? Colors.transparent,
            colorTo ?? Colors.transparent
          ];

    var _gradient = colorFrom == null
        ? null
        : LinearGradient(
            begin: colorFromAlignment ?? Alignment.centerLeft,
            end: colorToAlignment ?? Alignment.centerRight,
            colors: gradientColors);

    var isSingleWidget = widgets.length == 1;
    var isTextField = isSingleWidget && widgets[0].runtimeType == TextField;

    var _aspectRatioGrid = GridView.count(
        physics:
            overflow_y_auto == true ? null : NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        childAspectRatio: _aspectRatio ?? 1 / 1,
        crossAxisCount: gridColCount ?? 2,
        crossAxisSpacing: gridGapX ?? 0,
        mainAxisSpacing: gridGapY ?? 0,
        children: widgets);

    var _containerChild = isFlex == true
        ? _flex
        : isGrid == true
            ? _aspectRatioGrid
            //: _flex;
            : (widgets.length == 1 && isFlex != true)
                ? widgets[0]
                : _flex;

    var _scrollChild = (overflow_x_auto != null || overflow_y_auto != null)
        ? SingleChildScrollView(
            child: _containerChild,
            physics: ClampingScrollPhysics(),
            scrollDirection:
                overflow_x_auto == true ? Axis.horizontal : Axis.vertical,
          )
        : _containerChild;

    var _container = Container(
        alignment: (flexMainAxisAlignment == MainAxisAlignment.center &&
                flexCrossAxisAlignment == CrossAxisAlignment.center)
            ? Alignment.center
            : null,
        height: _height,
        width: _width,
        constraints: _boxConstraints,
        decoration: BoxDecoration(
            gradient: _gradient,
            boxShadow: boxShadowList,
            color: _gradient == null ? bgColor : null,
            borderRadius: isBorderRadius == true
                ? BorderRadius.only(
                    topLeft: bordertlRadius == null
                        ? Radius.zero
                        : Radius.circular(bordertlRadius ?? 0),
                    topRight: brodertrRaidus == null
                        ? Radius.zero
                        : Radius.circular(brodertrRaidus ?? 0),
                    bottomLeft: borderblRadius == null
                        ? Radius.zero
                        : Radius.circular(borderblRadius ?? 0),
                    bottomRight: borderbrRadius == null
                        ? Radius.zero
                        : Radius.circular(borderbrRadius ?? 0))
                : null,
            border: Border(
              top: BorderSide(
                  color: borderTopColor ?? Colors.transparent,
                  width: borderTopWidth ?? 0),
              bottom: BorderSide(
                  color: borderBotttomColor ?? Colors.transparent,
                  width: borderBottomWidth ?? 0),
              left: BorderSide(
                  color: borderLeftColor ?? Colors.transparent,
                  width: borderLeftWidth ?? 0),
              right: BorderSide(
                  color: borderRightColor ?? Colors.transparent,
                  width: borderRightWidth ?? 0),
            )),
        padding: _padding,
        margin: _margin,
        child: _scrollChild);

    var _isPosition = isRelative == true
        ? Stack(children: [_container, ...positionedWidgets])
        : isAbsolute == true
            ? Positioned(
                child: _container,
                left: positionLeft,
                right: positionRight,
                top: positionTop,
                bottom: positionBottom,
              )
            : _container;
    var _widget =
        isFlex1 == true ? Flexible(flex: 1, child: _isPosition) : _isPosition;
    return _widget;
  }

  @override
  Div itemsBaseLine() {
    flexCrossAxisAlignment = CrossAxisAlignment.baseline;
    return this;
  }

  @override
  Div itemsEnd() {
    flexCrossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }

  @override
  Div itemsStart() {
    flexCrossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }

  @override
  Div itemsStretch() {
    flexCrossAxisAlignment = CrossAxisAlignment.stretch;
    return this;
  }

  @override
  Div justifyAround() {
    flexMainAxisAlignment = MainAxisAlignment.spaceAround;
    return this;
  }

  @override
  Div justifyBetween() {
    flexMainAxisAlignment = MainAxisAlignment.spaceBetween;
    return this;
  }

  @override
  Div justifyEnd() {
    flexMainAxisAlignment = MainAxisAlignment.end;
    return this;
  }

  @override
  Div justifyEvenly() {
    flexMainAxisAlignment = MainAxisAlignment.spaceEvenly;
    return this;
  }

  @override
  Div justifyStart() {
    flexMainAxisAlignment = MainAxisAlignment.start;
    return this;
  }

  @override
  TextAlign? textAlign;

  @override
  Div textCenter() {
    textAlign = TextAlign.center;
    return this;
  }

  @override
  Div textEnd() {
    textAlign = TextAlign.end;
    return this;
  }

  @override
  Div textJustify() {
    textAlign = TextAlign.end;
    return this;
  }

  @override
  Div textLeft() {
    textAlign = TextAlign.left;
    return this;
  }

  @override
  Div textRight() {
    textAlign = TextAlign.right;
    return this;
  }

  @override
  Div textStart() {
    textAlign = TextAlign.start;
    return this;
  }

  @override
  double? gridGapX;

  @override
  double? gridGapY;

  @override
  int? gridColCount;

  @override
  Div gridCols(int columns) {
    gridColCount = columns;
    return this;
  }

  @override
  Div gapX(double gapX) {
    gridGapX = gapX;
    return this;
  }

  @override
  Div gapY(double gapY) {
    gridGapY = gapY;
    return this;
  }

  @override
  bool? isFlex;

  @override
  bool? isGrid;

  @override
  Div grid() {
    isGrid = true;
    return this;
  }

  @override
  double? _aspectRatio;

  @override
  Div aspect(double aspectRatio) {
    _aspectRatio = aspectRatio;
    return this;
  }

  @override
  Div aspectRatio() {
    _aspectRatio = 1 / 1;
    return this;
  }

  @override
  Div aspectVideo() {
    _aspectRatio = 16 / 9;
    return this;
  }

  @override
  double? borderblRadius;

  @override
  double? borderbrRadius;

  @override
  double? bordertlRadius;

  @override
  double? brodertrRaidus;

  @override
  bool? isBorderRadius;

  @override
  Div rounded({double? borderRadius = 4}) {
    isBorderRadius = true;
    bordertlRadius = borderRadius;
    brodertrRaidus = borderRadius;
    borderblRadius = borderRadius;
    borderbrRadius = borderRadius;
    return this;
  }

  @override
  Div roundedFull() {
    isBorderRadius = true;
    bordertlRadius = 9999;
    brodertrRaidus = 9999;
    borderblRadius = 9999;
    borderbrRadius = 9999;
    return this;
  }

  @override
  Div roundedLg() {
    isBorderRadius = true;
    bordertlRadius = 8;
    brodertrRaidus = 8;
    borderblRadius = 8;
    borderbrRadius = 8;
    return this;
  }

  @override
  Div roundedMd() {
    isBorderRadius = true;
    bordertlRadius = 6;
    brodertrRaidus = 6;
    borderblRadius = 6;
    borderbrRadius = 6;
    return this;
  }

  @override
  Div roundedSm() {
    isBorderRadius = true;
    bordertlRadius = 2;
    brodertrRaidus = 2;
    borderblRadius = 2;
    borderbrRadius = 2;
    return this;
  }

  @override
  double? borderBottomWidth;

  @override
  Color? borderBotttomColor;

  @override
  Color? borderLeftColor;

  @override
  double? borderLeftWidth;

  @override
  Color? borderRightColor;

  @override
  double? borderRightWidth;

  @override
  Color? borderTopColor;

  @override
  double? borderTopWidth;

  @Deprecated("Property error,please use 'border'.")
  @override
  Div boder({double width = 0, Color color = Colors.transparent}) {
    borderBottomWidth = width;
    borderBotttomColor = color;
    borderLeftWidth = width;
    borderLeftColor = color;
    borderRightWidth = width;
    borderRightColor = color;
    borderTopWidth = width;
    borderTopColor = color;
    return this;
  }

  @Deprecated("Property error,please use 'borderB'.")
  @override
  Div boderB({double width = 0, Color color = Colors.transparent}) {
    borderBottomWidth = width;
    borderBotttomColor = color;
    return this;
  }

  @Deprecated("Property error,please use 'borderL'.")
  @override
  Div boderL({double width = 0, Color color = Colors.transparent}) {
    borderLeftWidth = width;
    borderLeftColor = color;
    return this;
  }

  @Deprecated("Property error,please use 'borderR'.")
  @override
  Div boderR({double width = 0, Color color = Colors.transparent}) {
    borderRightWidth = width;
    borderRightColor = color;
    return this;
  }

  @Deprecated("Property error,please use 'borderT'.")
  @override
  Div boderT({double width = 0, Color color = Colors.transparent}) {
    borderTopWidth = width;
    borderTopColor = color;
    return this;
  }

  @override
  Div border({double width = 0, Color color = Colors.transparent}) {
    borderBottomWidth = width;
    borderBotttomColor = color;
    borderLeftWidth = width;
    borderLeftColor = color;
    borderRightWidth = width;
    borderRightColor = color;
    borderTopWidth = width;
    borderTopColor = color;
    return this;
  }

  @override
  Div borderB({double width = 0, Color color = Colors.transparent}) {
    borderBottomWidth = width;
    borderBotttomColor = color;
    return this;
  }

  @override
  Div borderL({double width = 0, Color color = Colors.transparent}) {
    borderLeftWidth = width;
    borderLeftColor = color;
    return this;
  }

  @override
  Div borderR({double width = 0, Color color = Colors.transparent}) {
    borderRightWidth = width;
    borderRightColor = color;
    return this;
  }

  @override
  Div borderT({double width = 0, Color color = Colors.transparent}) {
    borderTopWidth = width;
    borderTopColor = color;
    return this;
  }

  @override
  Color? colorFrom;

  @override
  Alignment? colorFromAlignment;

  @override
  double? colorFromPercentage;

  @override
  Color? colorTo;

  @override
  Alignment? colorToAlignment;

  @override
  double? colorToPercentage;

  @override
  Color? colorVia;

  @override
  double? colorViaPercentage;

  @override
  Div bgGgradientToB() {
    colorFromAlignment = Alignment.topCenter;
    colorToAlignment = Alignment.bottomCenter;
    return this;
  }

  @override
  Div bgGgradientToBl() {
    colorFromAlignment = Alignment.bottomRight;
    colorToAlignment = Alignment.topLeft;
    return this;
  }

  @override
  Div bgGradientToBR() {
    colorFromAlignment = Alignment.bottomLeft;
    colorToAlignment = Alignment.topRight;
    return this;
  }

  @override
  Div bgGradientToR() {
    colorFromAlignment = Alignment.bottomRight;
    colorToAlignment = Alignment.topLeft;
    return this;
  }

  @override
  Div bgGradientToT() {
    colorFromAlignment = Alignment.bottomCenter;
    colorToAlignment = Alignment.topCenter;
    return this;
  }

  @override
  Div bgGradientToTr() {
    colorFromAlignment = Alignment.topLeft;
    colorToAlignment = Alignment.bottomRight;
    return this;
  }

  @override
  Div bggradientToL() {
    colorFromAlignment = Alignment.topLeft;
    colorToAlignment = Alignment.bottomRight;
    return this;
  }

  @override
  Div bggradientToTl() {
    colorFromAlignment = Alignment.topLeft;
    colorToAlignment = Alignment.bottomRight;
    return this;
  }

  @override
  Div from(Color color, {double? percentage}) {
    colorFrom = color;
    colorFromPercentage = percentage;
    return this;
  }

  @override
  Div to(Color color, {double? percentage}) {
    colorTo = color;
    colorToPercentage = percentage;
    return this;
  }

  @override
  Div via(Color color, {double? percentage}) {
    colorVia = color;
    colorViaPercentage = percentage;
    return this;
  }

  @override
  List<BoxShadow>? boxShadowList;

  @override
  Div shadow() {
    // shadow
    // box-shadow:
    // 0 1px 3px 0 rgb(0 0 0 / 0.1),
    // 0 1px 2px -1px rgb(0 0 0 / 0.1);
    boxShadowList = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        offset: Offset(0, 1),
        blurRadius: 3,
        spreadRadius: 0,
      ),
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        offset: Offset(0, 1),
        blurRadius: 2,
        spreadRadius: -1,
      )
    ];
    return this;
  }

  @override
  Div shadowSm() {
    //shadow-sm	box-shadow: 0 1px 2px 0 rgb(0 0 0 / 0.05);
    boxShadowList = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        offset: Offset(0, 1),
        blurRadius: 2,
        spreadRadius: 0,
      )
    ];
    return this;
  }

  @override
  Div shadowMd() {
    // shadow-md
    //box-shadow:
    //0 4px 6px -1px rgb(0 0 0 / 0.1),
    //0 2px 4px -2px rgb(0 0 0 / 0.1);
    boxShadowList = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        offset: Offset(0, 4),
        blurRadius: 6,
        spreadRadius: -1,
      ),
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        offset: Offset(0, 2),
        blurRadius: 4,
        spreadRadius: -2,
      )
    ];
    return this;
  }

  @override
  Div shadowLg() {
    // shadow-lg
    //box-shadow:
    //0 10px 15px -3px rgb(0 0 0 / 0.1),
    //0 4px 6px -4px rgb(0 0 0 / 0.1);
    boxShadowList = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        offset: Offset(0, 10),
        blurRadius: 15,
        spreadRadius: -3,
      ),
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        offset: Offset(0, 4),
        blurRadius: 6,
        spreadRadius: -4,
      )
    ];
    return this;
  }

  @override
  Div shadow2xl() {
    // shadow-2xl	box-shadow: 0 25px 50px -12px rgb(0 0 0 / 0.25);
    boxShadowList = [
      const BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0, 25),
          blurRadius: 50,
          spreadRadius: -12,
          blurStyle: BlurStyle.normal),
    ];
    return this;
  }

  @override
  Div shadowInner() {
    // shadow-inner	box-shadow: inset 0 2px 4px 0 rgb(0 0 0 / 0.05);
    boxShadowList = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        offset: Offset(0, 2),
        blurRadius: 4,
        spreadRadius: 0,
        blurStyle: BlurStyle.inner,
      ),
    ];
    return this;
  }

  @override
  Div shadowXl() {
    // shadow-xl
    //box-shadow:
    //0 20px 25px -5px rgb(0 0 0 / 0.1),
    //0 8px 10px -6px rgb(0 0 0 / 0.1);
    boxShadowList = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        offset: Offset(0, 20),
        blurRadius: 25,
        spreadRadius: -5,
      ),
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        offset: Offset(0, 8),
        blurRadius: 10,
        spreadRadius: -6,
      )
    ];
    return this;
  }

  @override
  bool? isCenter;

  @override
  Div center() {
    isCenter = true;
    return this;
  }

  @override
  bool? isAbsolute;

  @override
  bool? isRelative;

  @override
  Div absolute() {
    isAbsolute = true;
    return this;
  }

  @override
  Div relative() {
    isRelative = true;
    return this;
  }

  @override
  double? positionBottom;

  @override
  double? positionLeft;

  @override
  double? positionRight;

  @override
  double? positionTop;

  @override
  Div bottom(double bottom) {
    positionBottom = bottom;
    return this;
  }

  @override
  Div left(double left) {
    positionLeft = left;
    return this;
  }

  @override
  Div right(double right) {
    positionRight = right;
    return this;
  }

  @override
  Div top(double top) {
    positionTop = top;
    return this;
  }

  @override
  bool? overflow_x_auto;

  @override
  bool? overflow_y_auto;

  @override
  Div overflowXAuto() {
    overflow_x_auto = true;
    return this;
  }

  @override
  Div overflowYAuto() {
    overflow_y_auto = true;
    return this;
  }

  @override
  Div roundedB({double? borderRadius = 4}) {
    isBorderRadius = true;
    borderblRadius = borderRadius;
    borderbrRadius = borderRadius;
    return this;
  }

  @override
  Div roundedBL({double? borderRadius = 4}) {
    isBorderRadius = true;
    borderblRadius = borderRadius;
    return this;
  }

  @override
  Div roundedBR({double? borderRadius = 4}) {
    isBorderRadius = true;
    borderbrRadius = borderRadius;
    return this;
  }

  @override
  Div roundedL({double? borderRadius = 4}) {
    isBorderRadius = true;
    bordertlRadius = borderRadius;
    borderblRadius = borderRadius;
    return this;
  }

  @override
  Div roundedR({double? borderRadius = 4}) {
    isBorderRadius = true;
    brodertrRaidus = borderRadius;
    borderbrRadius = borderRadius;
    return this;
  }

  @override
  Div roundedT({double? borderRadius = 4}) {
    isBorderRadius = true;
    bordertlRadius = borderRadius;
    brodertrRaidus = borderRadius;
    return this;
  }

  @override
  Div roundedTL({double? borderRadius = 4}) {
    isBorderRadius = true;
    bordertlRadius = borderRadius;
    return this;
  }

  @override
  Div roundedTR({double? borderRadius}) {
    isBorderRadius = true;
    brodertrRaidus = borderRadius;
    return this;
  }
}

abstract class ITextColor<W> {
  Color? textColor;
}

abstract class ITextWeightProperty<W> {
  FontWeight? textWeight;
}

abstract class ITextWeightMethod<W> {
  W fontNormal();
  W fontMedium();
  W fontSemibold();
  W fontBold();
  W fontWeight(FontWeight fontWeight);
  W font({FontWeight? weight});
}

abstract class ITextWeight<W>
    implements ITextWeightProperty<W>, ITextWeightMethod<W> {}

abstract class ITextSize<W> {
  double? fontSize;
  W textXs();
  W textSm();
  W textBase();
  W textLg();
  W textXl();
  W text2xl();
  W textSize(double fontSize);
}

abstract class ITextColorAndSizeStyle<W>
    implements ITextColor<W>, ITextSize<W> {
  text({Color? color, double? size});
}

abstract class ITextStyle<W> {
  FontStyle? fontStyle;
  W italic();
  W noItalic();
}

abstract class ILineClamp<W> {
  int? maxLines;
  bool? textWrap;
  W lineClamp(int maxLines);
  W lineClamp1();
  W lineClamp2();
  W lineClamp3();
  W lineClamp4();
  W lineClamp5();
  W lineClamp6();
  W lineClampNone();
}

abstract class ILineHeight<W> {
  double? lineHeight;
  W leading3();
  W leading4();
  W leading5();
  W leading6();
  W leading7();
  W leading8();
  W leading9();
  W leading10();
  W leadingNone();
  W leadingTight();
  W leadingSnug();
  W leadingNormal();
  W leadingRelaxed();
  W leadingLoose();
}

abstract class ITextOverflow<W> {
  TextOverflow? textOverflow;
  W truncate();
  W textEllipsis();
  W textClip();
}

class Span
    implements
        ITextColorAndSizeStyle<Span>,
        ITextWeight<Span>,
        ITextStyle<Span>,
        ILineClamp<Span>,
        ILineHeight<Span>,
        ITextOverflow<Span>,
        IBuildWidget {
  String textStr;
  Span(this.textStr);
  @override
  Color? textColor;

  @override
  Span text({Color? color = Colors.transparent, double? size = 16}) {
    textColor = color;
    fontSize = size;
    return this;
  }

  @override
  FontWeight? textWeight;
  @override
  fontNormal() {
    textWeight = FontWeight.w400;
    return this;
  }

  @override
  Span fontMedium() {
    textWeight = FontWeight.w500;
    return this;
  }

  @override
  Span fontSemibold() {
    textWeight = FontWeight.w600;
    return this;
  }

  @override
  Span fontBold() {
    textWeight = FontWeight.w700;
    return this;
  }

  @override
  Span fontWeight(FontWeight fontWeight) {
    textWeight = fontWeight;
    return this;
  }

  @override
  double? fontSize;

  @override
  Span text2xl() {
    fontSize = 24;
    return this;
  }

  @override
  Span textBase() {
    fontSize = 16;
    return this;
  }

  @override
  Span textLg() {
    fontSize = 18;
    return this;
  }

  @override
  Span textSize(double fontSize) {
    fontSize = fontSize;
    return this;
  }

  @override
  Span textXs() {
    fontSize = 12;
    return this;
  }

  @override
  Span textSm() {
    fontSize = 14;
    return this;
  }

  @override
  Span textXl() {
    fontSize = 20;
    return this;
  }

  @override
  FontStyle? fontStyle;

  @override
  Span italic() {
    fontStyle = FontStyle.italic;
    return this;
  }

  @override
  Span noItalic() {
    fontStyle = FontStyle.normal;
    return this;
  }

  @override
  Widget build() {
    var _text = Text(
      textStr,
      softWrap: textWrap,
      overflow: textOverflow,
      maxLines: maxLines,
      style: TextStyle(
          overflow: textOverflow,
          fontSize: fontSize,
          fontWeight: textWeight,
          color: textColor,
          fontStyle: fontStyle),
    );
    return (textWrap == true && textOverflow != null)
        ? Flexible(child: _text)
        : _text;
  }

  @override
  int? maxLines;

  @override
  bool? textWrap;

  @override
  TextOverflow? textOverflow;

  @override
  lineClamp(int lines) {
    maxLines = lines;
    textWrap = true;
    return this;
  }

  @override
  lineClamp1() {
    maxLines = 1;
    textWrap = true;
    return this;
  }

  @override
  lineClamp2() {
    maxLines = 2;
    textWrap = true;
    return this;
  }

  @override
  lineClamp3() {
    maxLines = 3;
    textWrap = true;
    return this;
  }

  @override
  lineClamp4() {
    maxLines = 4;
    textWrap = true;
    return this;
  }

  @override
  lineClamp5() {
    maxLines = 5;
    textWrap = true;
    return this;
  }

  @override
  lineClamp6() {
    maxLines = 6;
    textWrap = true;
    return this;
  }

  @override
  lineClampNone() {
    maxLines = 1;
    textWrap = false;
    return this;
  }

  @override
  double? lineHeight;

  @override
  Span leading10() {
    lineHeight = 40;
    return this;
  }

  @override
  Span leading3() {
    lineHeight = 12;
    return this;
  }

  @override
  Span leading4() {
    lineHeight = 16;
    return this;
  }

  @override
  Span leading5() {
    lineHeight = 20;
    return this;
  }

  @override
  Span leading6() {
    lineHeight = 24;
    return this;
  }

  @override
  Span leading7() {
    lineHeight = 28;
    return this;
  }

  @override
  Span leading8() {
    lineHeight = 32;
    return this;
  }

  @override
  Span leading9() {
    lineHeight = 36;
    return this;
  }

  @override
  Span leadingLoose() {
    lineHeight = (fontSize ?? 16) * 2;
    return this;
  }

  @override
  Span leadingNone() {
    lineHeight = (fontSize ?? 16);
    return this;
  }

  @override
  Span leadingNormal() {
    lineHeight = (fontSize ?? 16) * 1.5;
    return this;
  }

  @override
  Span leadingRelaxed() {
    lineHeight = (fontSize ?? 16) * 1.625;
    return this;
  }

  @override
  Span leadingSnug() {
    lineHeight = (fontSize ?? 16) * 1.375;
    return this;
  }

  @override
  Span leadingTight() {
    lineHeight = (fontSize ?? 16) * 1.25;
    return this;
  }

  @override
  Span font({FontWeight? weight}) {
    textWeight = weight ?? FontWeight.normal;
    return this;
  }

  @override
  Span textClip() {
    textOverflow = TextOverflow.clip;
    return this;
  }

  @override
  Span textEllipsis() {
    textOverflow = TextOverflow.ellipsis;
    return this;
  }

  @override
  Span truncate() {
    maxLines = 1;
    textOverflow = TextOverflow.ellipsis;
    return this;
  }
}

extension SpanExtension on Span {
  Div asDiv() {
    return Div([build()]);
  }
}

class OnEvent implements IBuildWidget {
  Widget widget;
  OnEvent(this.widget);
  void Function()? ontap;
  OnEvent onTap(void Function()? tap) {
    ontap = tap;
    return this;
  }

  @override
  Widget build() {
    return GestureDetector(onTap: ontap, child: widget);
  }
}

extension Divextension on Div {
  OnEvent event() {
    return OnEvent(build());
  }

  TwTabs asTabs(TwTabsController twTabsController) {
    return TwTabs(twTabsController: twTabsController, widget: this);
  }
}

class InputPlaceholder extends Span {
  InputPlaceholder(super.textStr);
}

abstract class IOnChange<W> {
  void Function(String value)? _onChange;
  W onChange(void Function(String value)? onChange);
}

abstract class ICaret<W> {
  Color? caretColor;
  W caret(Color? color);
}

class Input extends Span implements IOnChange<Input>, ICaret<Input> {
  late String _value;
  late String _placeholder;
  late TextEditingController _textEditingController;
  late InputPlaceholder _inputPlaceholder;
  void Function(String value)? _onChange;
  void Function(FocusNode focusNode)? _onFocus;
  late int _maxLines;
  late Widget? _prefixIcon;
  FocusNode? _focusNode;
  Input(String value,
      {String placeholder = "",
      int maxLines = 1,
      Widget? prefixIcon,
      TextEditingController? controller,
      void Function(String value)? onChange,
      void Function(FocusNode focusNode)? onFocus})
      : super(value) {
    _maxLines = maxLines;
    _value = value;
    _placeholder = placeholder;
    _inputPlaceholder = InputPlaceholder(placeholder);
    _textEditingController = controller ?? TextEditingController(text: value);
    _onChange = onChange;
    _prefixIcon = prefixIcon;
    _focusNode = FocusNode();
    _onFocus = onFocus;
    _focusNode?.addListener(() {
      if (_onFocus != null) {
        _onFocus!(_focusNode!);
      }
    });
    _textEditingController.addListener(() {
      if (_onChange != null) {
        _onChange!(_textEditingController.text);
      }
    });
  }

  Input placeholderText(
      {Color? color = Colors.transparent, double? size = 16}) {
    _inputPlaceholder.text(color: color, size: size);
    return this;
  }

  Input placeholderFont({FontWeight? weight = FontWeight.normal}) {
    _inputPlaceholder.fontWeight(weight ?? FontWeight.normal);
    return this;
  }

  @override
  Input onChange(void Function(String value)? onChange) {
    _onChange = onChange;
    _textEditingController.addListener(() {
      if (_onChange != null) {
        _onChange!(_textEditingController.text);
      }
    });
    return this;
  }

  Widget build() {
    return TextField(
        focusNode: _focusNode,
        minLines: 1,
        maxLines: _maxLines,
        expands: false,
        cursorColor: caretColor ?? Colors.black,
        cursorHeight: fontSize,
        controller: _textEditingController,
        style: TextStyle(
            overflow: textOverflow,
            fontSize: fontSize,
            fontWeight: textWeight,
            color: textColor,
            fontStyle: fontStyle),
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          prefixIcon: _prefixIcon,
          hintText: _inputPlaceholder.textStr,
          hintStyle: _inputPlaceholder == null
              ? null
              : TextStyle(
                  overflow: _inputPlaceholder.textOverflow,
                  fontSize: _inputPlaceholder.fontSize,
                  fontWeight: _inputPlaceholder.textWeight,
                  color: _inputPlaceholder.textColor,
                  fontStyle: _inputPlaceholder.fontStyle),
          border: InputBorder.none,
          isDense: true,
        ));
  }

  @override
  Color? caretColor;

  @override
  Input caret(Color? color) {
    caretColor = color;
    return this;
  }
}

class Option {
  Widget? label;
  String value;
  Option({this.label, this.value = ""});
}

class Select extends Input {
  List<Option> options;
  Color? itemColor;
  double itemHeight;
  Select(this.options,
      {String value = "",
      String placeholder = "",
      this.itemColor,
      this.itemHeight = kMinInteractiveDimension})
      : super(value, placeholder: placeholder);

  @override
  Select onChange(void Function(String value)? onChange) {
    _onChange = onChange;
    return this;
  }

  @override
  Widget build() {
    return Container(
      child: DropdownButtonHideUnderline(
          child: DropdownButton(
              iconSize: _inputPlaceholder.fontSize != null
                  ? _inputPlaceholder.fontSize! + 10
                  : 24,
              itemHeight: itemHeight >= kMinInteractiveDimension
                  ? itemHeight
                  : kMinInteractiveDimension,
              isDense: true,
              value: _value == "" ? null : _value,
              hint: _inputPlaceholder.build(),
              dropdownColor: itemColor,
              items: options
                  .map((e) => DropdownMenuItem(
                        child: e.label ?? Container(),
                        value: e.value,
                      ))
                  .toList(),
              onChanged: (value) {
                if (_onChange != null && value != null) {
                  _onChange!(value);
                }
              })),
    );
  }
}

class Img
    implements
        IBuildWidget,
        IBaseSize<Img>,
        IBaseRoundedAll<Img>,
        IBaseRounded<Img>,
        IFlex1<Img> {
  String src;
  Img(this.src);
  @override
  Widget build() {
    var gaplessPlayback = true;
    var img = src.isEmpty
        ? Container()
        : src.toLowerCase().contains("http")
            ? Image.network(
                src,
                gaplessPlayback: gaplessPlayback,
                width: width,
                height: height,
                fit: BoxFit.cover,
              )
            : Image.asset(src,
                gaplessPlayback: gaplessPlayback,
                width: width,
                height: height,
                fit: BoxFit.cover);

    var _img = isBorderRadius == true
        ? ClipRRect(
            child: img,
            borderRadius: BorderRadius.only(
                topLeft: bordertlRadius == null
                    ? Radius.zero
                    : Radius.circular(bordertlRadius ?? 0),
                topRight: brodertrRaidus == null
                    ? Radius.zero
                    : Radius.circular(brodertrRaidus ?? 0),
                bottomLeft: borderblRadius == null
                    ? Radius.zero
                    : Radius.circular(borderblRadius ?? 0),
                bottomRight: borderbrRadius == null
                    ? Radius.zero
                    : Radius.circular(borderbrRadius ?? 0)))
        : img;
    return isFlex1 == true ? Flexible(child: _img) : _img;
  }

  @override
  double? height;

  @override
  double? width;

  @override
  Img h(double h) {
    height = h;
    return this;
  }

  @override
  Img w(double w) {
    width = w;
    return this;
  }

  @override
  double? borderblRadius;

  @override
  double? borderbrRadius;

  @override
  double? bordertlRadius;

  @override
  double? brodertrRaidus;

  @override
  bool? isBorderRadius;

  @override
  Img rounded({double? borderRadius = 4}) {
    isBorderRadius = true;
    bordertlRadius = borderRadius;
    brodertrRaidus = borderRadius;
    borderblRadius = borderRadius;
    borderbrRadius = borderRadius;
    return this;
  }

  @override
  Img roundedFull() {
    isBorderRadius = true;
    bordertlRadius = 9999;
    brodertrRaidus = 9999;
    borderblRadius = 9999;
    borderbrRadius = 9999;
    return this;
  }

  @override
  Img roundedLg() {
    isBorderRadius = true;
    bordertlRadius = 8;
    brodertrRaidus = 8;
    borderblRadius = 8;
    borderbrRadius = 8;
    return this;
  }

  @override
  Img roundedMd() {
    isBorderRadius = true;
    bordertlRadius = 6;
    brodertrRaidus = 6;
    borderblRadius = 6;
    borderbrRadius = 6;
    return this;
  }

  @override
  Img roundedSm() {
    isBorderRadius = true;
    bordertlRadius = 2;
    brodertrRaidus = 2;
    borderblRadius = 2;
    borderbrRadius = 2;
    return this;
  }

  @override
  bool? isFlex1;

  @override
  Img flex1() {
    isFlex1 = true;
    return this;
  }
}

class TwTabsController extends ChangeNotifier {
  int selectedIndex = 0;
  changeIndex(int selectedIndex) {
    this.selectedIndex = selectedIndex;
    notifyListeners();
  }
}

class TwTabs extends StatefulWidget {
  TwTabsController twTabsController;
  Div widget;
  TwTabs({Key? key, required this.twTabsController, required this.widget})
      : super(key: key);

  @override
  State<TwTabs> createState() => _TwTabsState();
}

class _TwTabsState extends State<TwTabs> {
  @override
  Widget build(BuildContext context) {
    var w = widget.widget.widgets
        .where((element) => element.runtimeType != SizedBox)
        .toList();
    widget.widget.widgets = List.generate(
        w.length,
        (index) => GestureDetector(
              child: w[index],
              onTap: () => widget.twTabsController.changeIndex(index),
            )).toList();
    widget.widget.gap(widget.widget.gridGapX ?? 0);
    return widget.widget.build();
  }
}

extension ImgExtension on Img {
  Div asDiv() {
    return Div([build()]);
  }
}

extension InputExtension on Input {
  Div asDiv() {
    return Div([build()]);
  }

  // InputPlaceholder asPlaceholder() {
  //   return InputPlaceholder(this);
  // }
}

extension TextExtension on Text {
  Span asSpan() {
    return Span(this.data ?? "");
  }
}

extension TextFieldExtension on TextField {
  Div asDiv() {
    return Div([this]);
  }
}

extension ContainerExtension on Container {
  Div extension() {
    return Div([this]);
  }
}
