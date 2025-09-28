import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Text Demo')
            .text2xl()
            .fontBold()
            .textGray900()
            .build(),
        
        const SizedBox(height: 16),
        
        // 字体大小
        const Text('text-sm').textSm().textGray700().build(),
        const Text('text-base').textBase().textGray700().build(),
        const Text('text-lg').textLg().textGray700().build(),
        const Text('text-xl').textXl().textGray700().build(),
        const Text('text-2xl').text2xl().textGray700().build(),
        
        const SizedBox(height: 16),
        
        // 字体粗细
        const Text('font-light').fontLight().textGray700().build(),
        const Text('font-medium').fontMedium().textGray700().build(),
        const Text('font-bold').fontBold().textGray700().build(),
        
        const SizedBox(height: 16),
        
        // 颜色
        Wrap(
          spacing: 12,
          children: [
            const Text('Blue').textBlue600().fontMedium().build(),
            const Text('Red').textRed600().fontMedium().build(),
            const Text('Green').textGreen600().fontMedium().build(),
            const Text('Purple').textPurple600().fontMedium().build(),
          ],
        ),
        
        const SizedBox(height: 16),
        
        // 装饰
        const Text('Normal text').textGray700().build(),
        const Text('Underlined').underline().textBlue600().build(),
        const Text('Line through').lineThrough().textRed600().build(),
        const Text('Italic text').italic().textGray700().build(),
        
        const SizedBox(height: 16),
        
        // String扩展
        'String to TextBuilder'
            .asText()
            .textOrange600()
            .fontSemibold()
            .build(),
      ],
    );
  }
}
