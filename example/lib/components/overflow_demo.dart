import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class OverflowDemo extends StatelessWidget {
  const OverflowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('溢出隐藏 (Overflow Hidden)'),
          _buildExample('overflow-hidden', SizedBox(
            width: 200,
            height: 100,
            child: SizedBox(
              width: 300,
              height: 150,
              child: Center(
                child: const Text('Content larger than container').asText().textWhite().build(),
              ),
            ).asContainer().bgBlue500().build(),
          ).asScrollView().overflowHidden().build()),

          _buildSectionTitle('自动滚动 (Overflow Auto)'),
          _buildExample('overflow-auto (Vertical)', SizedBox(
            width: 200,
            height: 100,
            child: Column(
              children: [
                for (int i = 1; i <= 10; i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Text('Item $i').asText().textWhite().build(),
                  ).asContainer().bgBlue500().p2().rounded().build(),
              ],
            ),
          ).asScrollView().overflowAuto().build()),
          _buildExample('overflow-auto (Horizontal)', SizedBox(
            width: 200,
            height: 100,
            child: Row(
              children: [
                for (int i = 1; i <= 10; i++)
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 80,
                    child: Center(
                      child: Text('Item $i').asText().textWhite().build(),
                    ),
                  ).asContainer().bgBlue500().p2().rounded().build(),
              ],
            ),
          ).asScrollView().overflowAuto().build()),

          _buildSectionTitle('X轴溢出 (Overflow X)'),
          _buildExample('overflow-x-auto', SizedBox(
            width: 200,
            height: 100,
            child: Row(
              children: [
                for (int i = 1; i <= 10; i++)
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 80,
                    child: Center(
                      child: Text('Item $i').asText().textWhite().build(),
                    ),
                  ).asContainer().bgBlue500().p2().rounded().build(),
              ],
            ),
          ).asScrollView().overflowXAuto().build()),
          _buildExample('overflow-x-hidden', SizedBox(
            width: 200,
            height: 100,
            child: Row(
              children: [
                for (int i = 1; i <= 10; i++)
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 80,
                    child: Center(
                      child: Text('Item $i').asText().textWhite().build(),
                    ),
                  ).asContainer().bgBlue500().p2().rounded().build(),
              ],
            ),
          ).asScrollView().overflowXHidden().build()),
          _buildExample('overflow-x-scroll', SizedBox(
            width: 200,
            height: 100,
            child: Row(
              children: [
                for (int i = 1; i <= 10; i++)
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 80,
                    child: Center(
                      child: Text('Item $i').asText().textWhite().build(),
                    ),
                  ).asContainer().bgBlue500().p2().rounded().build(),
              ],
            ),
          ).asScrollView().overflowXScroll().build()),

          _buildSectionTitle('Y轴溢出 (Overflow Y)'),
          _buildExample('overflow-y-auto', SizedBox(
            width: 200,
            height: 100,
            child: Column(
              children: [
                for (int i = 1; i <= 10; i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Text('Item $i').asText().textWhite().build(),
                  ).asContainer().bgBlue500().p2().rounded().build(),
              ],
            ),
          ).asScrollView().overflowYAuto().build()),
          _buildExample('overflow-y-hidden', SizedBox(
            width: 200,
            height: 100,
            child: Column(
              children: [
                for (int i = 1; i <= 10; i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Text('Item $i').asText().textWhite().build(),
                  ).asContainer().bgBlue500().p2().rounded().build(),
              ],
            ),
          ).asScrollView().overflowYHidden().build()),
          _buildExample('overflow-y-scroll', SizedBox(
            width: 200,
            height: 100,
            child: Column(
              children: [
                for (int i = 1; i <= 10; i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Text('Item $i').asText().textWhite().build(),
                  ).asContainer().bgBlue500().p2().rounded().build(),
              ],
            ),
          ).asScrollView().overflowYScroll().build()),

          _buildSectionTitle('溢出可见 (Overflow Visible)'),
          _buildExample('overflow-visible', SizedBox(
            width: 200,
            height: 100,
            child: SizedBox(
              width: 250,
              height: 120,
              child: Center(
                child: const Text('Overflow visible').asText().textWhite().build(),
              ),
            ).asContainer().bgBlue500().build(),
          ).asScrollView().overflowVisible().build()),

          _buildSectionTitle('滚动行为 (Overscroll Behavior)'),
          _buildExample('overscroll-auto', SizedBox(
            width: 200,
            height: 100,
            child: Column(
              children: [
                for (int i = 1; i <= 10; i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Text('Item $i').asText().textWhite().build(),
                  ).asContainer().bgBlue500().p2().rounded().build(),
              ],
            ),
          ).asScrollView().overflowYAuto().overscrollAuto().build()),
          _buildExample('overscroll-contain', SizedBox(
            width: 200,
            height: 100,
            child: Column(
              children: [
                for (int i = 1; i <= 10; i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Text('Item $i').asText().textWhite().build(),
                  ).asContainer().bgBlue500().p2().rounded().build(),
              ],
            ),
          ).asScrollView().overflowYAuto().overscrollContain().build()),
          _buildExample('overscroll-none', SizedBox(
            width: 200,
            height: 100,
            child: Column(
              children: [
                for (int i = 1; i <= 10; i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Text('Item $i').asText().textWhite().build(),
                  ).asContainer().bgBlue500().p2().rounded().build(),
              ],
            ),
          ).asScrollView().overflowYAuto().overscrollNone().build()),

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
}

