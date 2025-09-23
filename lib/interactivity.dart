import 'package:flutter/material.dart';

/// Tailwind CSS Interactivity utilities for Flutter
/// Utilities for controlling interactivity and user experience.
extension InteractivityExt on Widget {
  
  // === Accent Color ===
  
  /// accent-auto -> accent-color: auto;
  Widget accentAuto() => this;
  
  /// accent-inherit -> accent-color: inherit;
  Widget accentInherit() => this;
  
  /// accent-current -> accent-color: currentColor;
  Widget accentCurrent() => this;
  
  /// accent-transparent -> accent-color: transparent;
  Widget accentTransparent() => this;
  
  /// accent-black -> accent-color: rgb(0 0 0);
  Widget accentBlack() => this;
  
  /// accent-white -> accent-color: rgb(255 255 255);
  Widget accentWhite() => this;
  
  /// accent-slate-50 -> accent-color: rgb(248 250 252);
  Widget accentSlate50() => this;
  
  /// accent-slate-100 -> accent-color: rgb(241 245 249);
  Widget accentSlate100() => this;
  
  /// accent-slate-500 -> accent-color: rgb(100 116 139);
  Widget accentSlate500() => this;
  
  /// accent-red-500 -> accent-color: rgb(239 68 68);
  Widget accentRed500() => this;
  
  /// accent-blue-500 -> accent-color: rgb(59 130 246);
  Widget accentBlue500() => this;
  
  /// accent-green-500 -> accent-color: rgb(34 197 94);
  Widget accentGreen500() => this;

  // === Appearance ===
  
  /// appearance-none -> appearance: none;
  Widget appearanceNone() => this;
  
  /// appearance-auto -> appearance: auto;
  Widget appearanceAuto() => this;

  // === Caret Color ===
  
  /// caret-inherit -> caret-color: inherit;
  Widget caretInherit() => this;
  
  /// caret-current -> caret-color: currentColor;
  Widget caretCurrent() => this;
  
  /// caret-transparent -> caret-color: transparent;
  Widget caretTransparent() => this;
  
  /// caret-black -> caret-color: rgb(0 0 0);
  Widget caretBlack() => this;
  
  /// caret-white -> caret-color: rgb(255 255 255);
  Widget caretWhite() => this;
  
  /// caret-red-500 -> caret-color: rgb(239 68 68);
  Widget caretRed500() => this;
  
  /// caret-blue-500 -> caret-color: rgb(59 130 246);
  Widget caretBlue500() => this;
  
  /// caret-green-500 -> caret-color: rgb(34 197 94);
  Widget caretGreen500() => this;

  // === Color Scheme ===
  
  /// color-scheme-normal -> color-scheme: normal;
  Widget colorSchemeNormal() => this;
  
  /// color-scheme-light -> color-scheme: light;
  Widget colorSchemeLight() => this;
  
  /// color-scheme-dark -> color-scheme: dark;
  Widget colorSchemeDark() => this;
  
  /// color-scheme-light-dark -> color-scheme: light dark;
  Widget colorSchemeLightDark() => this;

  // === Cursor ===
  
  /// cursor-auto -> cursor: auto;
  Widget cursorAuto() => MouseRegion(cursor: SystemMouseCursors.basic, child: this);
  
  /// cursor-default -> cursor: default;
  Widget cursorDefault() => MouseRegion(cursor: SystemMouseCursors.basic, child: this);
  
  /// cursor-pointer -> cursor: pointer;
  Widget cursorPointer() => MouseRegion(cursor: SystemMouseCursors.click, child: this);
  
  /// cursor-wait -> cursor: wait;
  Widget cursorWait() => MouseRegion(cursor: SystemMouseCursors.wait, child: this);
  
  /// cursor-text -> cursor: text;
  Widget cursorText() => MouseRegion(cursor: SystemMouseCursors.text, child: this);
  
  /// cursor-move -> cursor: move;
  Widget cursorMove() => MouseRegion(cursor: SystemMouseCursors.move, child: this);
  
  /// cursor-help -> cursor: help;
  Widget cursorHelp() => MouseRegion(cursor: SystemMouseCursors.help, child: this);
  
  /// cursor-not-allowed -> cursor: not-allowed;
  Widget cursorNotAllowed() => MouseRegion(cursor: SystemMouseCursors.forbidden, child: this);
  
  /// cursor-none -> cursor: none;
  Widget cursorNone() => MouseRegion(cursor: SystemMouseCursors.none, child: this);
  
  /// cursor-context-menu -> cursor: context-menu;
  Widget cursorContextMenu() => MouseRegion(cursor: SystemMouseCursors.contextMenu, child: this);
  
  /// cursor-progress -> cursor: progress;
  Widget cursorProgress() => MouseRegion(cursor: SystemMouseCursors.progress, child: this);
  
  /// cursor-cell -> cursor: cell;
  Widget cursorCell() => MouseRegion(cursor: SystemMouseCursors.cell, child: this);
  
  /// cursor-crosshair -> cursor: crosshair;
  Widget cursorCrosshair() => MouseRegion(cursor: SystemMouseCursors.precise, child: this);
  
  /// cursor-vertical-text -> cursor: vertical-text;
  Widget cursorVerticalText() => MouseRegion(cursor: SystemMouseCursors.verticalText, child: this);
  
  /// cursor-alias -> cursor: alias;
  Widget cursorAlias() => MouseRegion(cursor: SystemMouseCursors.alias, child: this);
  
  /// cursor-copy -> cursor: copy;
  Widget cursorCopy() => MouseRegion(cursor: SystemMouseCursors.copy, child: this);
  
  /// cursor-no-drop -> cursor: no-drop;
  Widget cursorNoDrop() => MouseRegion(cursor: SystemMouseCursors.noDrop, child: this);
  
  /// cursor-grab -> cursor: grab;
  Widget cursorGrab() => MouseRegion(cursor: SystemMouseCursors.grab, child: this);
  
  /// cursor-grabbing -> cursor: grabbing;
  Widget cursorGrabbing() => MouseRegion(cursor: SystemMouseCursors.grabbing, child: this);
  
  /// cursor-all-scroll -> cursor: all-scroll;
  Widget cursorAllScroll() => MouseRegion(cursor: SystemMouseCursors.allScroll, child: this);
  
  /// cursor-col-resize -> cursor: col-resize;
  Widget cursorColResize() => MouseRegion(cursor: SystemMouseCursors.resizeColumn, child: this);
  
  /// cursor-row-resize -> cursor: row-resize;
  Widget cursorRowResize() => MouseRegion(cursor: SystemMouseCursors.resizeRow, child: this);
  
  /// cursor-n-resize -> cursor: n-resize;
  Widget cursorNResize() => MouseRegion(cursor: SystemMouseCursors.resizeUp, child: this);
  
  /// cursor-e-resize -> cursor: e-resize;
  Widget cursorEResize() => MouseRegion(cursor: SystemMouseCursors.resizeRight, child: this);
  
  /// cursor-s-resize -> cursor: s-resize;
  Widget cursorSResize() => MouseRegion(cursor: SystemMouseCursors.resizeDown, child: this);
  
  /// cursor-w-resize -> cursor: w-resize;
  Widget cursorWResize() => MouseRegion(cursor: SystemMouseCursors.resizeLeft, child: this);
  
  /// cursor-ne-resize -> cursor: ne-resize;
  Widget cursorNeResize() => MouseRegion(cursor: SystemMouseCursors.resizeUpRight, child: this);
  
  /// cursor-nw-resize -> cursor: nw-resize;
  Widget cursorNwResize() => MouseRegion(cursor: SystemMouseCursors.resizeUpLeft, child: this);
  
  /// cursor-se-resize -> cursor: se-resize;
  Widget cursorSeResize() => MouseRegion(cursor: SystemMouseCursors.resizeDownRight, child: this);
  
  /// cursor-sw-resize -> cursor: sw-resize;
  Widget cursorSwResize() => MouseRegion(cursor: SystemMouseCursors.resizeDownLeft, child: this);
  
  /// cursor-ew-resize -> cursor: ew-resize;
  Widget cursorEwResize() => MouseRegion(cursor: SystemMouseCursors.resizeLeftRight, child: this);
  
  /// cursor-ns-resize -> cursor: ns-resize;
  Widget cursorNsResize() => MouseRegion(cursor: SystemMouseCursors.resizeUpDown, child: this);
  
  /// cursor-nesw-resize -> cursor: nesw-resize;
  Widget cursorNeswResize() => MouseRegion(cursor: SystemMouseCursors.resizeUpRightDownLeft, child: this);
  
  /// cursor-nwse-resize -> cursor: nwse-resize;
  Widget cursorNwseResize() => MouseRegion(cursor: SystemMouseCursors.resizeUpLeftDownRight, child: this);
  
  /// cursor-zoom-in -> cursor: zoom-in;
  Widget cursorZoomIn() => MouseRegion(cursor: SystemMouseCursors.zoomIn, child: this);
  
  /// cursor-zoom-out -> cursor: zoom-out;
  Widget cursorZoomOut() => MouseRegion(cursor: SystemMouseCursors.zoomOut, child: this);

  // === Field Sizing ===
  
  /// field-sizing-content -> field-sizing: content;
  Widget fieldSizingContent() => this;
  
  /// field-sizing-fixed -> field-sizing: fixed;
  Widget fieldSizingFixed() => this;

  // === Pointer Events ===
  
  /// pointer-events-none -> pointer-events: none;
  Widget pointerEventsNone() => IgnorePointer(child: this);
  
  /// pointer-events-auto -> pointer-events: auto;
  Widget pointerEventsAuto() => this;

  // === Resize ===
  
  /// resize-none -> resize: none;
  Widget resizeNone() => this;
  
  /// resize -> resize: both;
  Widget resize() => this;
  
  /// resize-y -> resize: vertical;
  Widget resizeY() => this;
  
  /// resize-x -> resize: horizontal;
  Widget resizeX() => this;

  // === Scroll Behavior ===
  
  /// scroll-auto -> scroll-behavior: auto;
  Widget scrollAuto() => this;
  
  /// scroll-smooth -> scroll-behavior: smooth;
  Widget scrollSmooth() => this;

  // === Scroll Margin ===
  
  /// scroll-m-0 -> scroll-margin: 0px;
  Widget scrollM0() => this;
  
  /// scroll-mx-0 -> scroll-margin-left: 0px; scroll-margin-right: 0px;
  Widget scrollMx0() => this;
  
  /// scroll-my-0 -> scroll-margin-top: 0px; scroll-margin-bottom: 0px;
  Widget scrollMy0() => this;
  
  /// scroll-ms-0 -> scroll-margin-inline-start: 0px;
  Widget scrollMs0() => this;
  
  /// scroll-me-0 -> scroll-margin-inline-end: 0px;
  Widget scrollMe0() => this;
  
  /// scroll-mt-0 -> scroll-margin-top: 0px;
  Widget scrollMt0() => this;
  
  /// scroll-mr-0 -> scroll-margin-right: 0px;
  Widget scrollMr0() => this;
  
  /// scroll-mb-0 -> scroll-margin-bottom: 0px;
  Widget scrollMb0() => this;
  
  /// scroll-ml-0 -> scroll-margin-left: 0px;
  Widget scrollMl0() => this;
  
  /// scroll-m-px -> scroll-margin: 1px;
  Widget scrollMPx() => this;
  
  /// scroll-m-0.5 -> scroll-margin: 0.125rem; (2px)
  Widget scrollM05() => this;
  
  /// scroll-m-1 -> scroll-margin: 0.25rem; (4px)
  Widget scrollM1() => this;
  
  /// scroll-m-1.5 -> scroll-margin: 0.375rem; (6px)
  Widget scrollM15() => this;
  
  /// scroll-m-2 -> scroll-margin: 0.5rem; (8px)
  Widget scrollM2() => this;
  
  /// scroll-m-2.5 -> scroll-margin: 0.625rem; (10px)
  Widget scrollM25() => this;
  
  /// scroll-m-3 -> scroll-margin: 0.75rem; (12px)
  Widget scrollM3() => this;
  
  /// scroll-m-3.5 -> scroll-margin: 0.875rem; (14px)
  Widget scrollM35() => this;
  
  /// scroll-m-4 -> scroll-margin: 1rem; (16px)
  Widget scrollM4() => this;
  
  /// scroll-m-5 -> scroll-margin: 1.25rem; (20px)
  Widget scrollM5() => this;
  
  /// scroll-m-6 -> scroll-margin: 1.5rem; (24px)
  Widget scrollM6() => this;
  
  /// scroll-m-8 -> scroll-margin: 2rem; (32px)
  Widget scrollM8() => this;
  
  /// scroll-m-10 -> scroll-margin: 2.5rem; (40px)
  Widget scrollM10() => this;
  
  /// scroll-m-12 -> scroll-margin: 3rem; (48px)
  Widget scrollM12() => this;
  
  /// scroll-m-16 -> scroll-margin: 4rem; (64px)
  Widget scrollM16() => this;
  
  /// scroll-m-20 -> scroll-margin: 5rem; (80px)
  Widget scrollM20() => this;
  
  /// scroll-m-24 -> scroll-margin: 6rem; (96px)
  Widget scrollM24() => this;
  
  /// scroll-m-32 -> scroll-margin: 8rem; (128px)
  Widget scrollM32() => this;
  
  /// scroll-m-40 -> scroll-margin: 10rem; (160px)
  Widget scrollM40() => this;
  
  /// scroll-m-48 -> scroll-margin: 12rem; (192px)
  Widget scrollM48() => this;
  
  /// scroll-m-56 -> scroll-margin: 14rem; (224px)
  Widget scrollM56() => this;
  
  /// scroll-m-64 -> scroll-margin: 16rem; (256px)
  Widget scrollM64() => this;

  // === Scroll Padding ===
  
  /// scroll-p-0 -> scroll-padding: 0px;
  Widget scrollP0() => this;
  
  /// scroll-px-0 -> scroll-padding-left: 0px; scroll-padding-right: 0px;
  Widget scrollPx0() => this;
  
  /// scroll-py-0 -> scroll-padding-top: 0px; scroll-padding-bottom: 0px;
  Widget scrollPy0() => this;
  
  /// scroll-ps-0 -> scroll-padding-inline-start: 0px;
  Widget scrollPs0() => this;
  
  /// scroll-pe-0 -> scroll-padding-inline-end: 0px;
  Widget scrollPe0() => this;
  
  /// scroll-pt-0 -> scroll-padding-top: 0px;
  Widget scrollPt0() => this;
  
  /// scroll-pr-0 -> scroll-padding-right: 0px;
  Widget scrollPr0() => this;
  
  /// scroll-pb-0 -> scroll-padding-bottom: 0px;
  Widget scrollPb0() => this;
  
  /// scroll-pl-0 -> scroll-padding-left: 0px;
  Widget scrollPl0() => this;
  
  /// scroll-p-px -> scroll-padding: 1px;
  Widget scrollPPx() => this;
  
  /// scroll-p-0.5 -> scroll-padding: 0.125rem; (2px)
  Widget scrollP05() => this;
  
  /// scroll-p-1 -> scroll-padding: 0.25rem; (4px)
  Widget scrollP1() => this;
  
  /// scroll-p-1.5 -> scroll-padding: 0.375rem; (6px)
  Widget scrollP15() => this;
  
  /// scroll-p-2 -> scroll-padding: 0.5rem; (8px)
  Widget scrollP2() => this;
  
  /// scroll-p-2.5 -> scroll-padding: 0.625rem; (10px)
  Widget scrollP25() => this;
  
  /// scroll-p-3 -> scroll-padding: 0.75rem; (12px)
  Widget scrollP3() => this;
  
  /// scroll-p-3.5 -> scroll-padding: 0.875rem; (14px)
  Widget scrollP35() => this;
  
  /// scroll-p-4 -> scroll-padding: 1rem; (16px)
  Widget scrollP4() => this;
  
  /// scroll-p-5 -> scroll-padding: 1.25rem; (20px)
  Widget scrollP5() => this;
  
  /// scroll-p-6 -> scroll-padding: 1.5rem; (24px)
  Widget scrollP6() => this;
  
  /// scroll-p-8 -> scroll-padding: 2rem; (32px)
  Widget scrollP8() => this;
  
  /// scroll-p-10 -> scroll-padding: 2.5rem; (40px)
  Widget scrollP10() => this;
  
  /// scroll-p-12 -> scroll-padding: 3rem; (48px)
  Widget scrollP12() => this;
  
  /// scroll-p-16 -> scroll-padding: 4rem; (64px)
  Widget scrollP16() => this;
  
  /// scroll-p-20 -> scroll-padding: 5rem; (80px)
  Widget scrollP20() => this;
  
  /// scroll-p-24 -> scroll-padding: 6rem; (96px)
  Widget scrollP24() => this;
  
  /// scroll-p-32 -> scroll-padding: 8rem; (128px)
  Widget scrollP32() => this;
  
  /// scroll-p-40 -> scroll-padding: 10rem; (160px)
  Widget scrollP40() => this;
  
  /// scroll-p-48 -> scroll-padding: 12rem; (192px)
  Widget scrollP48() => this;
  
  /// scroll-p-56 -> scroll-padding: 14rem; (224px)
  Widget scrollP56() => this;
  
  /// scroll-p-64 -> scroll-padding: 16rem; (256px)
  Widget scrollP64() => this;

  // === Scroll Snap Align ===
  
  /// snap-start -> scroll-snap-align: start;
  Widget snapStart() => this;
  
  /// snap-end -> scroll-snap-align: end;
  Widget snapEnd() => this;
  
  /// snap-center -> scroll-snap-align: center;
  Widget snapCenter() => this;
  
  /// snap-align-none -> scroll-snap-align: none;
  Widget snapAlignNone() => this;

  // === Scroll Snap Stop ===
  
  /// snap-normal -> scroll-snap-stop: normal;
  Widget snapNormal() => this;
  
  /// snap-always -> scroll-snap-stop: always;
  Widget snapAlways() => this;

  // === Scroll Snap Type ===
  
  /// snap-none -> scroll-snap-type: none;
  Widget snapNone() => this;
  
  /// snap-x -> scroll-snap-type: x mandatory;
  Widget snapX() => this;
  
  /// snap-y -> scroll-snap-type: y mandatory;
  Widget snapY() => this;
  
  /// snap-both -> scroll-snap-type: both mandatory;
  Widget snapBoth() => this;
  
  /// snap-mandatory -> scroll-snap-type: both mandatory;
  Widget snapMandatory() => this;
  
  /// snap-proximity -> scroll-snap-type: both proximity;
  Widget snapProximity() => this;

  // === Touch Action ===
  
  /// touch-auto -> touch-action: auto;
  Widget touchAuto() => this;
  
  /// touch-none -> touch-action: none;
  Widget touchNone() => this;
  
  /// touch-pan-x -> touch-action: pan-x;
  Widget touchPanX() => this;
  
  /// touch-pan-left -> touch-action: pan-left;
  Widget touchPanLeft() => this;
  
  /// touch-pan-right -> touch-action: pan-right;
  Widget touchPanRight() => this;
  
  /// touch-pan-y -> touch-action: pan-y;
  Widget touchPanY() => this;
  
  /// touch-pan-up -> touch-action: pan-up;
  Widget touchPanUp() => this;
  
  /// touch-pan-down -> touch-action: pan-down;
  Widget touchPanDown() => this;
  
  /// touch-pinch-zoom -> touch-action: pinch-zoom;
  Widget touchPinchZoom() => this;
  
  /// touch-manipulation -> touch-action: manipulation;
  Widget touchManipulation() => this;

  // === User Select ===
  
  /// select-none -> user-select: none;
  Widget selectNone() => SelectableRegion(
    selectionControls: materialTextSelectionControls,
    focusNode: FocusNode(),
    child: IgnorePointer(child: this),
  );
  
  /// select-text -> user-select: text;
  Widget selectText() => SelectableRegion(
    selectionControls: materialTextSelectionControls,
    focusNode: FocusNode(),
    child: this,
  );
  
  /// select-all -> user-select: all;
  Widget selectAll() => SelectableRegion(
    selectionControls: materialTextSelectionControls,
    focusNode: FocusNode(),
    child: this,
  );
  
  /// select-auto -> user-select: auto;
  Widget selectAuto() => this;

  // === Will Change ===
  
  /// will-change-auto -> will-change: auto;
  Widget willChangeAuto() => this;
  
  /// will-change-scroll -> will-change: scroll-position;
  Widget willChangeScroll() => this;
  
  /// will-change-contents -> will-change: contents;
  Widget willChangeContents() => this;
  
  /// will-change-transform -> will-change: transform;
  Widget willChangeTransform() => this;

  // === Custom Interactivity utilities ===
  
  /// 自定义光标
  Widget customCursor(MouseCursor cursor) => MouseRegion(
    cursor: cursor,
    child: this,
  );
  
  /// 自定义触摸操作
  Widget customTouchAction({
    bool panX = false,
    bool panY = false,
    bool pinchZoom = false,
  }) => this;
  
  /// 可拖拽
  Widget draggable({
    required Object data,
    Widget? feedback,
    Widget? childWhenDragging,
    VoidCallback? onDragStarted,
    VoidCallback? onDragEnd,
  }) => Draggable(
    data: data,
    feedback: feedback ?? this,
    childWhenDragging: childWhenDragging,
    onDragStarted: onDragStarted,
    onDragEnd: (details) => onDragEnd?.call(),
    child: this,
  );
  
  /// 拖拽目标
  Widget dragTarget<T extends Object>({
    required void Function(T data) onAccept,
    void Function(T data)? onWillAccept,
    void Function(T data)? onLeave,
  }) => DragTarget<T>(
    onAccept: onAccept,
    onWillAccept: (data) {
      if (data != null) onWillAccept?.call(data);
      return data != null;
    },
    onLeave: (data) {
      if (data != null) onLeave?.call(data);
    },
    builder: (context, candidateData, rejectedData) => this,
  );
  
  /// 长按检测
  Widget longPressDetector({
    VoidCallback? onLongPress,
    VoidCallback? onLongPressStart,
    VoidCallback? onLongPressEnd,
  }) => GestureDetector(
    onLongPress: onLongPress,
    onLongPressStart: (details) => onLongPressStart?.call(),
    onLongPressEnd: (details) => onLongPressEnd?.call(),
    child: this,
  );
  
  /// 双击检测
  Widget doubleTapDetector({
    VoidCallback? onDoubleTap,
  }) => GestureDetector(
    onDoubleTap: onDoubleTap,
    child: this,
  );
  
  /// 悬停效果
  Widget hoverEffect({
    Widget? onHover,
    Duration duration = const Duration(milliseconds: 200),
  }) => MouseRegion(
    onEnter: (_) {},
    onExit: (_) {},
    child: AnimatedSwitcher(
      duration: duration,
      child: this,
    ),
  );
  
  /// 焦点检测
  Widget focusDetector({
    VoidCallback? onFocusChange,
    bool autofocus = false,
  }) => Focus(
    autofocus: autofocus,
    onFocusChange: (hasFocus) => onFocusChange?.call(),
    child: this,
  );
  
  /// 键盘监听
  Widget keyboardListener({
    void Function(KeyEvent)? onKeyEvent,
  }) => KeyboardListener(
    focusNode: FocusNode(),
    onKeyEvent: onKeyEvent,
    child: this,
  );

  // === Accessibility helpers ===
  
  /// 语义标签
  Widget semantics({
    String? label,
    String? hint,
    bool button = false,
    bool link = false,
    bool header = false,
    VoidCallback? onTap,
  }) => Semantics(
    label: label,
    hint: hint,
    button: button,
    link: link,
    header: header,
    onTap: onTap,
    child: this,
  );
  
  /// 排除语义
  Widget excludeSemantics() => ExcludeSemantics(child: this);
  
  /// 合并语义
  Widget mergeSemantics() => MergeSemantics(child: this);

  // === Interaction shortcuts ===
  
  /// 可点击
  Widget clickable({
    VoidCallback? onTap,
    MouseCursor cursor = SystemMouseCursors.click,
  }) => GestureDetector(
    onTap: onTap,
    child: MouseRegion(
      cursor: cursor,
      child: this,
    ),
  );
  
  /// 禁用交互
  Widget disabled() => IgnorePointer(
    child: Opacity(
      opacity: 0.5,
      child: this,
    ),
  );
  
  /// 加载状态
  Widget loading({
    bool isLoading = true,
    Widget? loadingWidget,
  }) => isLoading 
    ? loadingWidget ?? Center(child: CircularProgressIndicator())
    : this;
}
