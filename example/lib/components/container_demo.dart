import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('背景颜色 (Background Colors)'),
          _buildExample('bg-red-500', Container(
            child: const Text('Red Background').asText().textWhite().build(),
          ).asContainer().bgRed500().p4().build()),
          _buildExample('bg-blue-600', Container(
            child: const Text('Blue Background').asText().textWhite().build(),
          ).asContainer().bgBlue600().p4().build()),
          _buildExample('bg-green-500', Container(
            child: const Text('Green Background').asText().textWhite().build(),
          ).asContainer().bgGreen500().p4().build()),
          _buildExample('bg-purple-500', Container(
            child: const Text('Purple Background').asText().textWhite().build(),
          ).asContainer().bgPurple500().p4().build()),

          _buildSectionTitle('内边距 (Padding)'),
          _buildExample('p-2', Container(
            child: const Text('Padding 2').asText().build(),
          ).asContainer().bgBlue100().p2().build()),
          _buildExample('p-4', Container(
            child: const Text('Padding 4').asText().build(),
          ).asContainer().bgBlue100().p4().build()),
          _buildExample('p-8', Container(
            child: const Text('Padding 8').asText().build(),
          ).asContainer().bgBlue100().p8().build()),
          _buildExample('px-4 py-2', Container(
            child: const Text('Padding X:4 Y:2').asText().build(),
          ).asContainer().bgBlue100().px4().py2().build()),
          _buildExample('pt-4 pb-2 pl-6 pr-8', Container(
            child: const Text('Padding T:4 B:2 L:6 R:8').asText().build(),
          ).asContainer().bgBlue100().padding(const EdgeInsets.only(top: 16, bottom: 8, left: 24, right: 32)).build()),

          _buildSectionTitle('外边距 (Margin)'),
          _buildExample('m-2', Container(
            child: const Text('Margin 2').asText().build(),
          ).asContainer().bgGreen100().margin(const EdgeInsets.all(8)).build()),
          _buildExample('m-4', Container(
            child: const Text('Margin 4').asText().build(),
          ).asContainer().bgGreen100().margin(const EdgeInsets.all(16)).build()),
          _buildExample('mx-auto', SizedBox(
            width: 200,
            child: const Text('Margin X Auto').asText().textCenter().build(),
          ).asContainer().bgGreen100().margin(const EdgeInsets.symmetric(horizontal: double.infinity)).p4().build()),
          _buildExample('mt-4 mb-2', Container(
            child: const Text('Margin T:4 B:2').asText().build(),
          ).asContainer().bgGreen100().margin(const EdgeInsets.only(top: 16, bottom: 8)).p4().build()),

          _buildSectionTitle('宽度和高度 (Width & Height)'),
          _buildExample('w-full h-20', Container(
            child: const Text('Full Width, Height 20').asText().textCenter().textWhite().build(),
          ).asContainer().bgBlue500().wFull().h20().build()),
          _buildExample('w-48 h-32', Container(
            child: const Text('Width 48, Height 32').asText().textCenter().textWhite().build(),
          ).asContainer().bgBlue500().w48().h32().build()),
          _buildExample('w-auto h-auto', Container(
            child: const Text('Auto Size').asText().textWhite().build(),
          ).asContainer().bgBlue500().wAuto().hAuto().p4().build()),

          _buildSectionTitle('最小/最大尺寸 (Min/Max Sizing)'),
          _buildExample('min-w-32 max-w-64', Container(
            child: const Text('Min Width 32, Max Width 64').asText().build(),
          ).asContainer().bgPurple100().minW32().maxW64().p4().build()),
          _buildExample('min-h-20 max-h-40', Container(
            child: const Text('Min Height 20, Max Height 40').asText().build(),
          ).asContainer().bgPurple100().minH20().maxH40().p4().build()),

          _buildSectionTitle('圆角 (Border Radius)'),
          _buildExample('rounded', Container(
            child: const Text('Rounded').asText().textWhite().build(),
          ).asContainer().bgBlue500().rounded().p4().build()),
          _buildExample('rounded-lg', Container(
            child: const Text('Rounded Large').asText().textWhite().build(),
          ).asContainer().bgBlue500().roundedLg().p4().build()),
          _buildExample('rounded-xl', Container(
            child: const Text('Rounded XL').asText().textWhite().build(),
          ).asContainer().bgBlue500().roundedXl().p4().build()),
          _buildExample('rounded-full', SizedBox(
            width: 100,
            height: 100,
            child: Center(child: const Text('Full').asText().textWhite().build()),
          ).asContainer().bgBlue500().borderRadiusCircular(50).build()),
          _buildExample('rounded-t-lg', Container(
            child: const Text('Rounded Top Large').asText().textWhite().build(),
          ).asContainer().bgBlue500().borderRadius(const BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8))).p4().build()),

          _buildSectionTitle('边框 (Border)'),
          _buildExample('border', Container(
            child: const Text('Border').asText().build(),
          ).asContainer().border().p4().build()),
          _buildExample('border-2 border-blue-500', Container(
            child: const Text('Border 2 Blue').asText().build(),
          ).asContainer().border2().borderBlue500().p4().build()),
          _buildExample('border-t-4 border-red-500', Container(
            child: const Text('Border Top 4 Red').asText().build(),
          ).asContainer().setBorder(const Border(top: BorderSide(color: Colors.red, width: 4))).p4().build()),
          _buildExample('border-x-2 border-green-500', Container(
            child: const Text('Border X 2 Green').asText().build(),
          ).asContainer().setBorder(const Border(left: BorderSide(color: Colors.green, width: 2), right: BorderSide(color: Colors.green, width: 2))).p4().build()),

          _buildSectionTitle('阴影 (Box Shadow)'),
          _buildExample('shadow', Container(
            child: const Text('Shadow').asText().build(),
          ).asContainer().bgWhite().shadow().p4().rounded().build()),
          _buildExample('shadow-md', Container(
            child: const Text('Shadow Medium').asText().build(),
          ).asContainer().bgWhite().shadowMd().p4().rounded().build()),
          _buildExample('shadow-lg', Container(
            child: const Text('Shadow Large').asText().build(),
          ).asContainer().bgWhite().shadowLg().p4().rounded().build()),
          _buildExample('shadow-xl', Container(
            child: const Text('Shadow XL').asText().build(),
          ).asContainer().bgWhite().shadowLg().p4().rounded().build()),

          _buildSectionTitle('宽高比 (Aspect Ratio)'),
          _buildExample('aspect-square', Center(child: const Text('Square').asText().textWhite().build())
              .asContainer().bgBlue500().aspectSquare().build()),
          _buildExample('aspect-video', Center(child: const Text('Video (16:9)').asText().textWhite().build())
              .asContainer().bgBlue500().aspectVideo().build()),
          _buildExample('aspect-ratio(4/3)', Center(child: const Text('4:3').asText().textWhite().build())
              .asContainer().bgBlue500().aspectRatio(4 / 3).build()),

          _buildSectionTitle('Flex 属性'),
          _buildExample('flex-1', Row(
            children: [
              Container(child: const Text('Flex 1').asText().textWhite().build())
                  .asContainer().bgBlue500().p4().flex1(),
              Container(child: const Text('Flex 1').asText().textWhite().build())
                  .asContainer().bgGreen500().p4().flex1(),
            ],
          )),
          _buildExample('flex-none', Row(
            children: [
              Container(child: const Text('None').asText().textWhite().build())
                  .asContainer().bgBlue500().p4().flexNone(),
              Container(child: const Text('Flex 1').asText().textWhite().build())
                  .asContainer().bgGreen500().p4().flex1(),
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

