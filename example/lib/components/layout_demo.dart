import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('卡片布局 (Card Layout)'),
          _buildExample('Card', Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
                child: Center(
                  child: const Text('Image').asText().textGray400().build(),
                ),
              ).asContainer().bgGray200().build(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Card Title').asText().textXl().fontBold().textGray900().build(),
                    const SizedBox(height: 8),
                    const Text('This is a card description with some content.').asText().textGray600().build(),
                    const SizedBox(height: 12),
                    Container(
                      child: const Text('Button').asText().textWhite().textCenter().build(),
                    ).asContainer().bgBlue500().rounded().px4().py2().build(),
                  ],
                ),
              ),
            ],
          ).asContainer().bgWhite().roundedLg().shadowLg().asScrollView().overflowHidden().build()),

          _buildSectionTitle('响应式布局 (Responsive Layout)'),
          _buildExample('Responsive Grid', [
            for (int i = 1; i <= 6; i++)
              Center(
                child: Text('Item $i').asText().textWhite().fontBold().build(),
              ).asContainer().bgBlue500().rounded().p4().build(),
          ].asGrid().gridCols2().gap4().build()),

          _buildSectionTitle('导航栏 (Navigation Bar)'),
          _buildExample('Nav Bar', Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Home').asText().textBlue600().fontMedium().build(),
              const Text('About').asText().textGray600().build(),
              const Text('Services').asText().textGray600().build(),
              const Text('Contact').asText().textGray600().build(),
            ],
          ).asContainer().bgWhite().p4().rounded().shadow().build()),

          _buildSectionTitle('表单布局 (Form Layout)'),
          _buildExample('Form', Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Email').asText().textSm().fontMedium().textGray700().build(),
              const SizedBox(height: 4),
              SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Password').asText().textSm().fontMedium().textGray700().build(),
              const SizedBox(height: 4),
              SizedBox(
                height: 40,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: const Text('Submit').asText().textWhite().fontMedium().build(),
                ),
              ).asContainer().bgBlue600().rounded().build(),
            ],
          )),

          _buildSectionTitle('列表布局 (List Layout)'),
          _buildExample('List', Column(
            children: [
              for (int i = 1; i <= 5; i++)
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text('$i').asText().textWhite().fontBold().build(),
                        ),
                      ).asContainer().bgBlue500().borderRadiusCircular(24).build(),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('List Item $i').asText().fontMedium().textGray900().build(),
                            Text('Description for item $i').asText().textSm().textGray600().build(),
                          ],
                        ),
                      ),
                      const Icon(Icons.chevron_right, color: Colors.grey),
                    ],
                  ),
                ).asContainer().bgWhite().p4().rounded().shadow().build(),
            ],
          )),

          _buildSectionTitle('仪表板布局 (Dashboard Layout)'),
          _buildExample('Dashboard', Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('1,234').asText().text2xl().fontBold().textGray900().build(),
                          const Text('Total Users').asText().textSm().textGray600().build(),
                        ],
                      ),
                    ).asContainer().bgWhite().rounded().shadow().p4().build(),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('567').asText().text2xl().fontBold().textGray900().build(),
                          const Text('Active Now').asText().textSm().textGray600().build(),
                        ],
                      ),
                    ).asContainer().bgWhite().rounded().shadow().p4().build(),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('89%').asText().text2xl().fontBold().textGray900().build(),
                          const Text('Conversion').asText().textSm().textGray600().build(),
                        ],
                      ),
                    ).asContainer().bgWhite().rounded().shadow().p4().build(),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('12.5K').asText().text2xl().fontBold().textGray900().build(),
                          const Text('Revenue').asText().textSm().textGray600().build(),
                        ],
                      ),
                    ).asContainer().bgWhite().rounded().shadow().p4().build(),
                  ),
                ],
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

