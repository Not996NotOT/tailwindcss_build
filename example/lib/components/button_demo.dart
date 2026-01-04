import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('基础按钮 (Basic Buttons)'),
          _buildExample('Primary Button', Container(
            child: Text('Primary').asText().textWhite().fontMedium().build(),
          ).asContainer().bgBlue600().rounded().px6().py3().onTap(() {})),
          _buildExample('Secondary Button', Container(
            child: Text('Secondary').asText().textBlue600().fontMedium().build(),
          ).asContainer().bgBlue100().rounded().px6().py3().onTap(() {})),
          _buildExample('Success Button', Container(
            child: Text('Success').asText().textWhite().fontMedium().build(),
          ).asContainer().bgGreen600().rounded().px6().py3().onTap(() {})),
          _buildExample('Danger Button', Container(
            child: Text('Danger').asText().textWhite().fontMedium().build(),
          ).asContainer().bgRed600().rounded().px6().py3().onTap(() {})),

          _buildSectionTitle('按钮尺寸 (Button Sizes)'),
          _buildExample('Small', Container(
            child: Text('Small').asText().textWhite().textSm().fontMedium().build(),
          ).asContainer().bgBlue600().rounded().px4().py2().onTap(() {})),
          _buildExample('Medium', Container(
            child: Text('Medium').asText().textWhite().fontMedium().build(),
          ).asContainer().bgBlue600().rounded().px6().py3().onTap(() {})),
          _buildExample('Large', Container(
            child: Text('Large').asText().textWhite().textLg().fontMedium().build(),
          ).asContainer().bgBlue600().rounded().px8().py4().onTap(() {})),

          _buildSectionTitle('按钮样式变体 (Button Variants)'),
          _buildExample('Filled', Container(
            child: Text('Filled').asText().textWhite().fontMedium().build(),
          ).asContainer().bgBlue600().rounded().px6().py3().onTap(() {})),
          _buildExample('Outlined', Container(
            child: Text('Outlined').asText().textBlue600().fontMedium().build(),
          ).asContainer().border().borderBlue600().rounded().px6().py3().onTap(() {})),
          _buildExample('Text', Container(
            child: Text('Text Button').asText().textBlue600().fontMedium().build(),
          ).asContainer().px6().py3().onTap(() {})),

          _buildSectionTitle('带图标的按钮 (Buttons with Icons)'),
          _buildExample('Icon Left', Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add, color: Colors.white, size: 20),
                SizedBox(width: 8),
                Text('Add').asText().textWhite().fontMedium().build(),
              ],
            ),
          ).asContainer().bgBlue600().rounded().px6().py3().onTap(() {})),
          _buildExample('Icon Right', Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Next').asText().textWhite().fontMedium().build(),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward, color: Colors.white, size: 20),
              ],
            ),
          ).asContainer().bgBlue600().rounded().px6().py3().onTap(() {})),
          _buildExample('Icon Only', Container(
            width: 40,
            height: 40,
            child: Center(
              child: Icon(Icons.favorite, color: Colors.white, size: 20),
            ),
          ).asContainer().bgRed500().borderRadiusCircular(20).onTap(() {})),

          _buildSectionTitle('按钮组 (Button Groups)'),
          _buildExample('Horizontal Group', Row(
            children: [
              Expanded(
                child: Container(
                  child: Text('Left').asText().textWhite().textCenter().fontMedium().build(),
                ).asContainer().bgBlue600().borderRadius(BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8))).px4().py3().onTap(() {}),
              ),
              Expanded(
                child: Container(
                  child: Text('Center').asText().textWhite().textCenter().fontMedium().build(),
                ).asContainer().bgBlue600().px4().py3().onTap(() {}),
              ),
              Expanded(
                child: Container(
                  child: Text('Right').asText().textWhite().textCenter().fontMedium().build(),
                ).asContainer().bgBlue600().borderRadius(BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8))).px4().py3().onTap(() {}),
              ),
            ],
          )),
          _buildExample('Vertical Group', Column(
            children: [
              Container(
                width: double.infinity,
                child: Text('Top').asText().textWhite().textCenter().fontMedium().build(),
              ).asContainer().bgBlue600().borderRadius(BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8))).px4().py3().onTap(() {}),
              Container(
                width: double.infinity,
                child: Text('Middle').asText().textWhite().textCenter().fontMedium().build(),
              ).asContainer().bgBlue600().px4().py3().onTap(() {}),
              Container(
                width: double.infinity,
                child: Text('Bottom').asText().textWhite().textCenter().fontMedium().build(),
              ).asContainer().bgBlue600().borderRadius(BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))).px4().py3().onTap(() {}),
            ],
          )),

          _buildSectionTitle('加载状态 (Loading State)'),
          _buildExample('Loading Button', Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Text('Loading...').asText().textWhite().fontMedium().build(),
              ],
            ),
          ).asContainer().bgBlue600().rounded().px6().py3().onTap(() {})),

          _buildSectionTitle('禁用状态 (Disabled State)'),
          _buildExample('Disabled', Container(
            child: Text('Disabled').asText().textGray400().fontMedium().build(),
          ).asContainer().bgGray200().rounded().px6().py3().build()),

          _buildSectionTitle('浮动操作按钮 (FAB)'),
          _buildExample('FAB', Container(
            width: 56,
            height: 56,
            child: Center(
              child: Icon(Icons.add, color: Colors.white, size: 24),
            ),
          ).asContainer().bgBlue600().borderRadiusCircular(28).shadowLg().onTap(() {})),

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

