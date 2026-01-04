import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Flex 方向 (Flex Direction)'),
          _buildExample('flex-row', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexRow().build()),
          _buildExample('flex-col', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexCol().build()),

          _buildSectionTitle('主轴对齐 (Justify Content)'),
          _buildExample('justify-start', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
          ].asFlex().flexRow().justifyStart().build()),
          _buildExample('justify-center', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
          ].asFlex().flexRow().justifyCenter().build()),
          _buildExample('justify-end', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
          ].asFlex().flexRow().justifyEnd().build()),
          _buildExample('justify-between', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
          ].asFlex().flexRow().justifyBetween().build()),
          _buildExample('justify-around', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
          ].asFlex().flexRow().justifyAround().build()),
          _buildExample('justify-evenly', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
          ].asFlex().flexRow().justifyEvenly().build()),

          _buildSectionTitle('交叉轴对齐 (Align Items)'),
          _buildExample('items-start', [
            _buildBox('1', Colors.blue, height: 60),
            _buildBox('2', Colors.green, height: 40),
            _buildBox('3', Colors.purple, height: 80),
          ].asFlex().flexRow().itemsStart().build()),
          _buildExample('items-center', [
            _buildBox('1', Colors.blue, height: 60),
            _buildBox('2', Colors.green, height: 40),
            _buildBox('3', Colors.purple, height: 80),
          ].asFlex().flexRow().itemsCenter().build()),
          _buildExample('items-end', [
            _buildBox('1', Colors.blue, height: 60),
            _buildBox('2', Colors.green, height: 40),
            _buildBox('3', Colors.purple, height: 80),
          ].asFlex().flexRow().itemsEnd().build()),
          _buildExample('items-stretch', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexRow().itemsStretch().asContainer().h20().build()),

          _buildSectionTitle('间距 (Gap)'),
          _buildExample('gap-2', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexRow().gap2().build()),
          _buildExample('gap-4', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexRow().gap4().build()),
          _buildExample('gap-8', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexRow().gap8().build()),

          _buildSectionTitle('子元素间距 (Space Between)'),
          _buildExample('space-x-2', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexRow().spaceX2().build()),
          _buildExample('space-x-4', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexRow().spaceX4().build()),
          _buildExample('space-y-4', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexCol().spaceY4().build()),

          _buildSectionTitle('分隔线 (Divide)'),
          _buildExample('divide-x', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexRow().divideX().build()),
          _buildExample('divide-y', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexCol().divideY().build()),
          _buildExample('divide-x-2 divide-red-500', [
            _buildBox('1', Colors.blue),
            _buildBox('2', Colors.green),
            _buildBox('3', Colors.purple),
          ].asFlex().flexRow().divideX().divideWidth(2).divideColor(Colors.red).build()),

          _buildSectionTitle('换行 (Flex Wrap)'),
          _buildExample('flex-wrap', [
            for (int i = 1; i <= 8; i++)
              _buildBox('$i', Colors.blue, width: 80),
          ].asFlex().flexRow().flexWrap().gap2().build()),
          _buildExample('flex-nowrap', [
            for (int i = 1; i <= 8; i++)
              _buildBox('$i', Colors.blue, width: 80),
          ].asFlex().flexRow().flexNowrap().build()),

          _buildSectionTitle('Flex Grow/Shrink'),
          _buildExample('flex-grow', [
            _buildBox('Grow', Colors.blue).asContainer().flex1(),
            _buildBox('None', Colors.green).asContainer().flexNone(),
          ].asFlex().flexRow().build()),
          _buildExample('flex-shrink', [
            _buildBox('Shrink', Colors.blue).asContainer().flexAuto(),
            _buildBox('None', Colors.green).asContainer().flexNone(),
          ].asFlex().flexRow().build()),

          _buildSectionTitle('排序 (Order)'),
          _buildExample('order', [
            _buildBox('1', Colors.blue).order(3),
            _buildBox('2', Colors.green).order(1),
            _buildBox('3', Colors.purple).order(2),
          ].asFlex().flexRow().build()),

          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 12),
      child: Text(title)
          .asText()
          .textLg()
          .fontBold()
          .textGray900()
          .build(),
    );
  }

  Widget _buildExample(String label, Widget example) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label)
              .asText()
              .textSm()
              .textGray600()
              .fontMedium()
              .build(),
          const SizedBox(height: 4),
          example,
        ],
      ),
    );
  }

  Widget _buildBox(String text, Color color, {double? width, double? height}) {
    return Container(
      width: width ?? 60,
      height: height ?? 60,
      child: Center(
        child: Text(text).asText().textWhite().fontBold().build(),
      ),
    ).asContainer().backgroundColor(color).rounded().build();
  }
}

