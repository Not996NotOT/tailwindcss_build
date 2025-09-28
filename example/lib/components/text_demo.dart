import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Text Demo')
            .text2xl()
            .fontBold()
            .textGray900()
            .build(),
        
        SizedBox(height: 16),
        
        // 字体大小
        Text('text-sm').textSm().textGray700().build(),
        Text('text-base').textBase().textGray700().build(),
        Text('text-lg').textLg().textGray700().build(),
        Text('text-xl').textXl().textGray700().build(),
        Text('text-2xl').text2xl().textGray700().build(),
        
        SizedBox(height: 16),
        
        // 字体粗细
        Text('font-light').fontLight().textGray700().build(),
        Text('font-medium').fontMedium().textGray700().build(),
        Text('font-bold').fontBold().textGray700().build(),
        
        SizedBox(height: 16),
        
        // 颜色
        Wrap(
          spacing: 12,
          children: [
            Text('Blue').textBlue600().fontMedium().build(),
            Text('Red').textRed600().fontMedium().build(),
            Text('Green').textGreen600().fontMedium().build(),
            Text('Purple').textPurple600().fontMedium().build(),
          ],
        ),
        
        SizedBox(height: 16),
        
        // 装饰
        Text('Normal text').textGray700().build(),
        Text('Underlined').underline().textBlue600().build(),
        Text('Line through').lineThrough().textRed600().build(),
        Text('Italic text').italic().textGray700().build(),
        
        SizedBox(height: 16),
        
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
