import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class GridDemo extends StatelessWidget {
  const GridDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Grid 列数 (Grid Columns)'),
          _buildExample('grid-cols-2', [
            for (int i = 1; i <= 4; i++)
              _buildGridItem('$i', Colors.blue),
          ].asGrid().gridCols2().gap2().build()),
          _buildExample('grid-cols-3', [
            for (int i = 1; i <= 6; i++)
              _buildGridItem('$i', Colors.green),
          ].asGrid().gridCols3().gap2().build()),
          _buildExample('grid-cols-4', [
            for (int i = 1; i <= 8; i++)
              _buildGridItem('$i', Colors.purple),
          ].asGrid().gridCols4().gap2().build()),

          _buildSectionTitle('Grid 行数 (Grid Rows)'),
          _buildExample('grid-rows-2', [
            for (int i = 1; i <= 4; i++)
              _buildGridItem('$i', Colors.blue),
          ].asGrid().gridRows2().gap2().build()),
          _buildExample('grid-rows-3', [
            for (int i = 1; i <= 6; i++)
              _buildGridItem('$i', Colors.green),
          ].asGrid().gridRows3().gap2().build()),

          _buildSectionTitle('Grid 间距 (Gap)'),
          _buildExample('gap-1', [
            for (int i = 1; i <= 4; i++)
              _buildGridItem('$i', Colors.blue),
          ].asGrid().gridCols2().gap1().build()),
          _buildExample('gap-4', [
            for (int i = 1; i <= 4; i++)
              _buildGridItem('$i', Colors.blue),
          ].asGrid().gridCols2().gap4().build()),
          _buildExample('gap-8', [
            for (int i = 1; i <= 4; i++)
              _buildGridItem('$i', Colors.blue),
          ].asGrid().gridCols2().gap8().build()),

          _buildSectionTitle('列跨度 (Column Span)'),
          _buildExample('col-span-2', [
            _buildGridItem('1', Colors.blue).colSpan(2),
            _buildGridItem('2', Colors.green),
            _buildGridItem('3', Colors.purple),
            _buildGridItem('4', Colors.orange),
          ].asGrid().gridCols3().gap2().build()),
          _buildExample('col-span-3', [
            _buildGridItem('1', Colors.blue).colSpan(3),
            _buildGridItem('2', Colors.green),
            _buildGridItem('3', Colors.purple),
            _buildGridItem('4', Colors.orange),
          ].asGrid().gridCols3().gap2().build()),

          _buildSectionTitle('行跨度 (Row Span)'),
          _buildExample('row-span-2', [
            _buildGridItem('1', Colors.blue).rowSpan(2),
            _buildGridItem('2', Colors.green),
            _buildGridItem('3', Colors.purple),
            _buildGridItem('4', Colors.orange),
          ].asGrid().gridCols2().gridRows2().gap2().build()),
          _buildExample('row-span-3', [
            _buildGridItem('1', Colors.blue).rowSpan(3),
            _buildGridItem('2', Colors.green),
            _buildGridItem('3', Colors.purple),
            _buildGridItem('4', Colors.orange),
            _buildGridItem('5', Colors.red),
          ].asGrid().gridCols2().gridRows3().gap2().build()),

          _buildSectionTitle('列/行位置 (Column/Row Start/End)'),
          _buildExample('col-start-2', [
            _buildGridItem('1', Colors.blue),
            _buildGridItem('2', Colors.green).colStart(2),
            _buildGridItem('3', Colors.purple),
          ].asGrid().gridCols3().gap2().build()),
          _buildExample('row-start-2', [
            _buildGridItem('1', Colors.blue),
            _buildGridItem('2', Colors.green).rowStart(2),
            _buildGridItem('3', Colors.purple),
          ].asGrid().gridCols2().gridRows2().gap2().build()),

          _buildSectionTitle('Grid 对齐 (Grid Alignment)'),
          _buildExample('justify-items-start', [
            for (int i = 1; i <= 4; i++)
              _buildGridItem('$i', Colors.blue, width: 60),
          ].asGrid().gridCols2().justifyItemsStart().gap2().build()),
          _buildExample('justify-items-center', [
            for (int i = 1; i <= 4; i++)
              _buildGridItem('$i', Colors.blue, width: 60),
          ].asGrid().gridCols2().justifyItemsCenter().gap2().build()),
          _buildExample('justify-items-end', [
            for (int i = 1; i <= 4; i++)
              _buildGridItem('$i', Colors.blue, width: 60),
          ].asGrid().gridCols2().justifyItemsEnd().gap2().build()),
          _buildExample('place-items-center', [
            for (int i = 1; i <= 4; i++)
              _buildGridItem('$i', Colors.blue, width: 60),
          ].asGrid().gridCols2().placeItemsCenter().gap2().build()),

          _buildSectionTitle('Grid 内容对齐 (Place Content)'),
          _buildExample('place-content-start', [
            for (int i = 1; i <= 2; i++)
              _buildGridItem('$i', Colors.blue),
          ].asGrid().gridCols2().gridRows2().placeContentStart().gap2().build()),
          _buildExample('place-content-center', [
            for (int i = 1; i <= 2; i++)
              _buildGridItem('$i', Colors.blue),
          ].asGrid().gridCols2().gridRows2().placeContentCenter().gap2().build()),
          _buildExample('place-content-between', [
            for (int i = 1; i <= 2; i++)
              _buildGridItem('$i', Colors.blue),
          ].asGrid().gridCols2().gridRows2().placeContentBetween().gap2().build()),

          _buildSectionTitle('Grid 流方向 (Grid Flow)'),
          _buildExample('grid-flow-row', [
            for (int i = 1; i <= 6; i++)
              _buildGridItem('$i', Colors.blue),
          ].asGrid().gridCols3().gridFlowRow().gap2().build()),
          _buildExample('grid-flow-col', [
            for (int i = 1; i <= 6; i++)
              _buildGridItem('$i', Colors.green),
          ].asGrid().gridRows3().gridFlowCol().gap2().build()),

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

  Widget _buildGridItem(String text, Color color, {double? width, double? height}) {
    return SizedBox(
      width: width,
      height: height ?? 60,
      child: Center(
        child: Text(text).asText().textWhite().fontBold().build(),
      ),
    ).asContainer().backgroundColor(color).rounded().build();
  }
}

