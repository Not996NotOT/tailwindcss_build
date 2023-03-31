library tailwindcss_build;

import 'package:flutter/material.dart';

abstract class IBuildWidget {
  Widget build();
}

abstract class ISize<W> {
  double? height;
  double? width;
  double? minHeight;
  double? minWidth;
  double? maxHeight;
  double? maxWidth;
  W h(double h);
  W w(double w);
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

abstract class IFlex<W> {
  Axis? flexDirection;
  MainAxisAlignment? flexMainAxisAlignment;
  CrossAxisAlignment? flexCrossAxisAlignment;
  bool? isFlex1;
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
  W flex1();
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
  W boder({double width = 0, Color color = Colors.transparent});
  W boderT({double width = 0, Color color = Colors.transparent});
  W boderB({double width = 0, Color color = Colors.transparent});
  W boderL({double width = 0, Color color = Colors.transparent});
  W boderR({double width = 0, Color color = Colors.transparent});
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

abstract class IRounded<W> {
  double? bordertlRadius;
  double? brodertrRaidus;
  double? borderblRadius;
  double? borderbrRadius;
  W roundedSm();
  W rounded({double? borderRadius});
  W roundedMd();
  W roundedLg();
  W roundedFull();
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
    maxHeight = double.infinity;
    return this;
  }

  @override
  Div wFull() {
    maxWidth = double.infinity;
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
    flexMainAxisAlignment = MainAxisAlignment.start;
    flexCrossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }

  @override
  Div flexCol() {
    isFlex = true;
    flexDirection = Axis.vertical;
    flexMainAxisAlignment = MainAxisAlignment.start;
    flexCrossAxisAlignment = CrossAxisAlignment.start;
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
  Div gap(double size) {
    gridGapX = size;
    gridGapY = size;
    List<Widget> widgetList = [];
    for (var widget in widgets) {
      widgetList.add(widget);
      widgetList.add(SizedBox(
        height: flexDirection == Axis.vertical ? size : 0,
        width: flexDirection == Axis.horizontal ? size : 0,
      ));
    }
    widgetList.removeLast();
    widgets = widgetList;
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

    var _flex = Flex(
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

    var _container = Container(
        alignment: isTextField || isCenter == true
            ? Alignment.center
            : Alignment.topLeft,
        height: _height,
        width: _width,
        constraints: _boxConstraints,
        decoration: BoxDecoration(
            gradient: _gradient,
            boxShadow: boxShadowList,
            color: _gradient == null ? bgColor : null,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(bordertlRadius ?? 0),
                topRight: Radius.circular(brodertrRaidus ?? 0),
                bottomLeft: Radius.circular(borderblRadius ?? 0),
                bottomRight: Radius.circular(borderblRadius ?? 0)),
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
        child: isFlex == true
            ? _flex
            : isGrid == true
                ? GridView.count(
                    childAspectRatio: _aspectRatio ?? 1 / 1,
                    crossAxisCount: gridColCount ?? 0,
                    crossAxisSpacing: gridGapX ?? 0,
                    mainAxisSpacing: gridGapY ?? 0,
                    children: widgets)
                : widgets.length == 1
                    ? widgets[0]
                    : _flex);

    var _widget =
        isFlex1 == true ? Expanded(flex: 1, child: _container) : _container;
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
  Div rounded({double? borderRadius = 4}) {
    bordertlRadius = borderRadius;
    brodertrRaidus = borderRadius;
    borderblRadius = borderRadius;
    borderbrRadius = borderRadius;
    return this;
  }

  @override
  Div roundedFull() {
    bordertlRadius = 9999;
    brodertrRaidus = 9999;
    borderblRadius = 9999;
    borderbrRadius = 9999;
    return this;
  }

  @override
  Div roundedLg() {
    bordertlRadius = 8;
    brodertrRaidus = 8;
    borderblRadius = 8;
    borderbrRadius = 8;
    return this;
  }

  @override
  Div roundedMd() {
    bordertlRadius = 6;
    brodertrRaidus = 6;
    borderblRadius = 6;
    borderbrRadius = 6;
    return this;
  }

  @override
  Div roundedSm() {
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

  @override
  Div boderB({double width = 0, Color color = Colors.transparent}) {
    borderBottomWidth = width;
    borderBotttomColor = color;
    return this;
  }

  @override
  Div boderL({double width = 0, Color color = Colors.transparent}) {
    borderLeftWidth = width;
    borderLeftColor = color;
    return this;
  }

  @override
  Div boderR({double width = 0, Color color = Colors.transparent}) {
    borderRightWidth = width;
    borderRightColor = color;
    return this;
  }

  @override
  Div boderT({double width = 0, Color color = Colors.transparent}) {
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
}

abstract class ITextColor<W> {
  Color? textColor;
}

abstract class ITextWeight<W> {
  FontWeight? textWeight;
  W fontNormal();
  W fontMedium();
  W fontSemibold();
  W fontBold();
  W fontWeight(FontWeight fontWeight);
}

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
  TextOverflow? textOverflow;
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

class Span
    implements
        ITextColorAndSizeStyle<Span>,
        ITextWeight<Span>,
        ITextStyle<Span>,
        ILineClamp<Span>,
        ILineHeight<Span>,
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
    return Text(
      textStr,
      softWrap: textWrap,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: TextStyle(
          overflow: textOverflow,
          fontSize: fontSize,
          fontWeight: textWeight,
          color: textColor,
          fontStyle: fontStyle),
    );
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
    textOverflow = TextOverflow.ellipsis;
    return this;
  }

  @override
  lineClamp1() {
    maxLines = 1;
    textWrap = true;
    textOverflow = TextOverflow.ellipsis;
    return this;
  }

  @override
  lineClamp2() {
    maxLines = 2;
    textWrap = true;
    textOverflow = TextOverflow.ellipsis;
    return this;
  }

  @override
  lineClamp3() {
    maxLines = 3;
    textWrap = true;
    textOverflow = TextOverflow.ellipsis;
    return this;
  }

  @override
  lineClamp4() {
    maxLines = 4;
    textWrap = true;
    textOverflow = TextOverflow.ellipsis;
    return this;
  }

  @override
  lineClamp5() {
    maxLines = 5;
    textWrap = true;
    textOverflow = TextOverflow.ellipsis;
    return this;
  }

  @override
  lineClamp6() {
    maxLines = 6;
    textWrap = true;
    textOverflow = TextOverflow.ellipsis;
    return this;
  }

  @override
  lineClampNone() {
    maxLines = 1;
    textWrap = false;
    textOverflow = TextOverflow.visible;
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
}

extension SpanExtension on Span {
  Div asDiv() {
    return Div([build()]);
  }

  Input asInput() {
    InputPlaceholder? _inputPlaceholder;
    if (runtimeType == InputPlaceholder) {
      _inputPlaceholder = this as InputPlaceholder;
    }
    return Input(_inputPlaceholder?.input._value ?? "",
        placeholder: _inputPlaceholder?.input._placeholder ?? "",
        inputPlaceholder: _inputPlaceholder);
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
}

class InputPlaceholder extends Span {
  Input input;
  InputPlaceholder(this.input) : super(input._placeholder);
}

abstract class IOnChange<W> {
  void Function(String value)? _onChange;
  W onChange(void Function(String value)? onChange);
}

class Input extends Span implements IOnChange<Input> {
  late String _value;
  late String _placeholder;
  late TextEditingController _textEditingController;
  void Function(String value)? _onChange;
  late InputPlaceholder? _inputPlaceholder;
  Input(String value,
      {String placeholder = "",
      TextEditingController? controller,
      InputPlaceholder? inputPlaceholder,
      void Function(String value)? onChange})
      : super(value) {
    _value = value;
    _placeholder = placeholder;
    _inputPlaceholder = inputPlaceholder;
    _textEditingController = controller ?? TextEditingController(text: value);
    _onChange = onChange;
    _textEditingController.addListener(() {
      if (_onChange != null) {
        _onChange!(_textEditingController.text);
      }
    });
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
          hintText: _placeholder,
          labelStyle: _inputPlaceholder == null
              ? null:TextStyle(
              overflow: _inputPlaceholder?.textOverflow,
              fontSize: _inputPlaceholder?.fontSize,
              fontWeight: _inputPlaceholder?.textWeight,
              color: _inputPlaceholder?.textColor,
              fontStyle: _inputPlaceholder?.fontStyle),
          hintStyle: _inputPlaceholder == null
              ? null
              : TextStyle(
                  overflow: _inputPlaceholder?.textOverflow,
                  fontSize: _inputPlaceholder?.fontSize,
                  fontWeight: _inputPlaceholder?.textWeight,
                  color: _inputPlaceholder?.textColor,
                  fontStyle: _inputPlaceholder?.fontStyle),
          border: InputBorder.none,
          isDense: true,
        ));
  }
}

extension InputExtension on Input {
  Div div() {
    return Div([build()]);
  }

  InputPlaceholder placeholder() {
    return InputPlaceholder(this);
  }
}

extension TextExtension on Text {
  Span span() {
    return Span(this.data ?? "");
  }
}

extension TextFieldExtension on TextField {
  Div div() {
    return Div([this]);
  }
}

extension ContainerExtension on Container {
  Div extension() {
    return Div([this]);
  }
}
