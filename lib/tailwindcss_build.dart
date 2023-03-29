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
  double? borderwidth;
  Color? bordercolor;
  double? borderradius;
  W borderWidth(double width);
  W borderColor(Color color);
  W borderRadius(double width);
  W border();
  W border2();
  W border4();
  W border6();
  W border8();
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
    flex();
    return this;
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

    var _container = Container(
        height: _height,
        width: _width,
        constraints: _boxConstraints,
        decoration: BoxDecoration(color: bgColor, border: Border()),
        padding: _padding,
        margin: _margin,
        child: isFlex == true
            ? _flex
            : isGrid == true
                ? GridView.count(
                    childAspectRatio: _aspectRatio ?? 0,
                    crossAxisCount: gridColCount ?? 0,
                    crossAxisSpacing: gridGapX ?? 0,
                    mainAxisSpacing: gridGapY ?? 0,
                    children: widgets)
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
}

abstract class ITextColor<W> {
  Color? textColor;
  W text(Color color);
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
        ITextColor<Span>,
        ITextWeight<Span>,
        ITextSize<Span>,
        ITextStyle<Span>,
        ILineClamp<Span>,
        ILineHeight<Span>,
        IBuildWidget {
  String textStr;
  Span(this.textStr);
  @override
  Color? textColor;

  @override
  Span text(Color color) {
    textColor = color;
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
  Div div() {
    return Div([build()]);
  }
}

extension TextExtension on Text {
  Span extension() {
    return Span(this.data ?? "");
  }
}

extension ContainerExtension on Container {
  Div extension() {
    return Div([this]);
  }
}
