import 'package:flutter/material.dart';

/// Tailwind CSS Aspect Ratio utilities for Flutter
/// Utilities for controlling the aspect ratio of an element.
extension AspectRatioExt on Widget {
  /// Custom aspect ratio
  /// aspect-[<ratio>] -> aspect-ratio: <ratio>;
  Widget aspectRatio(double ratio) {
    return AspectRatio(
      aspectRatio: ratio,
      child: this,
    );
  }

  /// aspect-square -> aspect-ratio: 1 / 1;
  Widget aspectSquare() {
    return AspectRatio(
      aspectRatio: 1.0,
      child: this,
    );
  }

  /// aspect-video -> aspect-ratio: 16 / 9;
  Widget aspectVideo() {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: this,
    );
  }

  /// aspect-auto -> aspect-ratio: auto;
  /// 在 Flutter 中，我们返回原始 widget，不应用 AspectRatio
  Widget aspectAuto() {
    return this;
  }

  // 常见的自定义宽高比
  
  /// aspect-[1/2] -> aspect-ratio: 0.5;
  Widget aspect1_2() {
    return AspectRatio(
      aspectRatio: 1.0 / 2.0,
      child: this,
    );
  }

  /// aspect-[2/3] -> aspect-ratio: 0.667;
  Widget aspect2_3() {
    return AspectRatio(
      aspectRatio: 2.0 / 3.0,
      child: this,
    );
  }

  /// aspect-[3/4] -> aspect-ratio: 0.75;
  Widget aspect3_4() {
    return AspectRatio(
      aspectRatio: 3.0 / 4.0,
      child: this,
    );
  }

  /// aspect-[4/3] -> aspect-ratio: 1.333;
  Widget aspect4_3() {
    return AspectRatio(
      aspectRatio: 4.0 / 3.0,
      child: this,
    );
  }

  /// aspect-[3/2] -> aspect-ratio: 1.5;
  Widget aspect3_2() {
    return AspectRatio(
      aspectRatio: 3.0 / 2.0,
      child: this,
    );
  }

  /// aspect-[2/1] -> aspect-ratio: 2.0;
  Widget aspect2_1() {
    return AspectRatio(
      aspectRatio: 2.0,
      child: this,
    );
  }

  /// aspect-[9/16] -> aspect-ratio: 0.5625; (vertical video)
  Widget aspect9_16() {
    return AspectRatio(
      aspectRatio: 9.0 / 16.0,
      child: this,
    );
  }

  /// aspect-[21/9] -> aspect-ratio: 2.333; (ultrawide)
  Widget aspect21_9() {
    return AspectRatio(
      aspectRatio: 21.0 / 9.0,
      child: this,
    );
  }

  /// aspect-[5/4] -> aspect-ratio: 1.25;
  Widget aspect5_4() {
    return AspectRatio(
      aspectRatio: 5.0 / 4.0,
      child: this,
    );
  }

  /// aspect-[4/5] -> aspect-ratio: 0.8;
  Widget aspect4_5() {
    return AspectRatio(
      aspectRatio: 4.0 / 5.0,
      child: this,
    );
  }
}