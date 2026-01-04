import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class ZIndexDemo extends StatelessWidget {
  const ZIndexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Z-Index 基础 (Z-Index Basics)'),
          _buildExample('Stack with z-index', Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                child: Center(
                  child: Text('z-0').asText().textWhite().fontBold().build(),
                ),
              ).asContainer().bgBlue500().rounded().z0().build(),
              Positioned(
                left: 40,
                top: 40,
                child: Container(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text('z-10').asText().textWhite().fontBold().build(),
                  ),
                ).asContainer().bgGreen500().rounded().z10().build(),
              ),
              Positioned(
                left: 80,
                top: 80,
                child: Container(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text('z-20').asText().textWhite().fontBold().build(),
                  ),
                ).asContainer().bgRed500().rounded().z20().build(),
              ),
            ],
          )),

          _buildSectionTitle('Z-Index 值 (Z-Index Values)'),
          _buildExample('z-0, z-10, z-20, z-30', Stack(
            children: [
              Container(
                width: 150,
                height: 150,
                child: Center(
                  child: Text('z-0').asText().textWhite().fontBold().build(),
                ),
              ).asContainer().bgBlue500().rounded().z0().build(),
              Positioned(
                left: 30,
                top: 30,
                child: Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Text('z-10').asText().textWhite().fontBold().build(),
                  ),
                ).asContainer().bgGreen500().rounded().z10().build(),
              ),
              Positioned(
                left: 60,
                top: 60,
                child: Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Text('z-20').asText().textWhite().fontBold().build(),
                  ),
                ).asContainer().bgPurple500().rounded().z20().build(),
              ),
              Positioned(
                left: 90,
                top: 90,
                child: Container(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Text('z-30').asText().textWhite().fontBold().build(),
                  ),
                ).asContainer().bgOrange500().rounded().z30().build(),
              ),
            ],
          )),

          _buildSectionTitle('模态框示例 (Modal Example)'),
          _buildExample('Modal Overlay', Stack(
            children: [
              Container(
                width: 300,
                height: 200,
                child: Center(
                  child: Text('Background Content').asText().textGray600().build(),
                ),
              ).asContainer().bgGray200().rounded().p4().z0().build(),
              Positioned.fill(
                child: Container(
                  color: Colors.black54,
                  child: Center(
                    child: Container(
                      width: 250,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Modal Title').asText().textXl().fontBold().textGray900().build(),
                          SizedBox(height: 12),
                          Text('This is a modal dialog with z-index.').asText().textGray600().build(),
                          SizedBox(height: 16),
                          Container(
                            width: double.infinity,
                            child: Text('Close').asText().textWhite().textCenter().fontMedium().build(),
                          ).asContainer().bgBlue600().rounded().py2().build(),
                        ],
                      ),
                    ).asContainer().bgWhite().roundedLg().shadowLg().build(),
                  ),
                ),
              ).asContainer().z50().build(),
            ],
          )),

          _buildSectionTitle('浮动按钮示例 (Floating Button Example)'),
          _buildExample('FAB with z-index', Stack(
            children: [
              Container(
                width: 300,
                height: 400,
                child: ListView(
                  children: [
                    for (int i = 1; i <= 10; i++)
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Text('List Item $i').asText().build(),
                      ).asContainer().bgGray100().p4().rounded().build(),
                  ],
                ),
              ).asContainer().bgWhite().rounded().border().z0().build(),
              Positioned(
                right: 16,
                bottom: 16,
                child: Container(
                  width: 56,
                  height: 56,
                  child: Center(
                    child: Icon(Icons.add, color: Colors.white, size: 24),
                  ),
                ).asContainer().bgBlue600().borderRadiusCircular(28).shadowLg().z50().onTap(() {}),
              ),
            ],
          )),

          _buildSectionTitle('工具提示示例 (Tooltip Example)'),
          _buildExample('Tooltip with z-index', Stack(
            children: [
              Container(
                width: 200,
                height: 100,
                child: Center(
                  child: Text('Hover me').asText().textBlue600().fontMedium().build(),
                ),
              ).asContainer().bgBlue100().rounded().p4().z0().build(),
              Positioned(
                top: -40,
                left: 50,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Text('Tooltip').asText().textWhite().textSm().build(),
                ).asContainer().bgGray900().rounded().z50().build(),
              ),
            ],
          )),

          _buildSectionTitle('导航栏示例 (Navigation Bar Example)'),
          _buildExample('Sticky Nav Bar', Stack(
            children: [
              Container(
                height: 600,
                child: ListView(
                  children: [
                    for (int i = 1; i <= 20; i++)
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        height: 80,
                        child: Center(
                          child: Text('Content Item $i').asText().build(),
                        ),
                      ).asContainer().bgGray100().rounded().build(),
                  ],
                ),
              ).asContainer().z0().build(),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Home').asText().textBlue600().fontMedium().build(),
                      Text('About').asText().textGray600().build(),
                      Text('Contact').asText().textGray600().build(),
                    ],
                  ),
                ).asContainer().bgWhite().shadowLg().z50().build(),
              ),
            ],
          )),

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

