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
        
        // Text Decoration Line (Tailwind CSS)
        const Text('Text Decoration Examples')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        const SizedBox(height: 8),
        
        const Text('Normal text').textGray700().build(),
        const Text('underline').underline().textBlue600().build(),
        const Text('overline').overline().textGreen600().build(),
        const Text('line-through').lineThrough().textRed600().build(),
        const Text('no-underline').noUnderline().textGray700().build(),
        
        const SizedBox(height: 8),
        
        // Text Decoration Style
        const Text('Decoration Styles:').fontMedium().textGray800().build(),
        const Text('decoration-solid').underline().decorationSolid().textBlue600().build(),
        const Text('decoration-double').underline().decorationDouble().textBlue600().build(),
        const Text('decoration-dotted').underline().decorationDotted().textBlue600().build(),
        const Text('decoration-dashed').underline().decorationDashed().textBlue600().build(),
        const Text('decoration-wavy').underline().decorationWavy().textBlue600().build(),
        
        const SizedBox(height: 8),
        
        // Text Decoration Thickness
        const Text('Decoration Thickness:').fontMedium().textGray800().build(),
        const Text('decoration-auto').underline().decorationAuto().textBlue600().build(),
        const Text('decoration-from-font').underline().decorationFromFont().textBlue600().build(),
        const Text('decoration-0').underline().decoration0().textBlue600().build(),
        const Text('decoration-1').underline().decoration1().textBlue600().build(),
        const Text('decoration-2').underline().decoration2().textBlue600().build(),
        const Text('decoration-4').underline().decoration4().textBlue600().build(),
        const Text('decoration-8').underline().decoration8().textBlue600().build(),
        const Text('decoration-custom(3.5)').underline().decorationCustom(3.5).textBlue600().build(),
        
        const SizedBox(height: 8),
        
        // Text Decoration Color  
        const Text('Decoration Colors:').fontMedium().textGray800().build(),
        const Text('decoration-red-500').underline().decorationRed500().textGray700().build(),
        const Text('decoration-blue-600').underline().decorationBlue600().textGray700().build(),
        const Text('decoration-green-500').underline().decorationGreen500().textGray700().build(),
        const Text('decoration-purple-600').underline().decorationPurple600().textGray700().build(),
        const Text('decoration-orange-500').underline().decorationOrange500().textGray700().build(),
        
        const SizedBox(height: 8),
        
        // Combined Decorations
        const Text('Combined Decorations:').fontMedium().textGray800().build(),
        const Text('underline + line-through').underlineLineThrough().textRed600().build(),
        const Text('underline + overline').underlineOverline().textGreen600().build(),
        
        const SizedBox(height: 8),
        
        // Text Transform
        const Text('Text Transform:').fontMedium().textGray800().build(),
        const Text('Hello World').uppercase().textBlue600().build(),
        const Text('Hello World').lowercase().textGreen600().build(),
        const Text('hello world').capitalize().textBlue600().build(),
        const Text('HELLO WORLD').normalCase().textGray700().build(),
        
        const SizedBox(height: 8),
        
        // Text Overflow
        const Text('Text Overflow:').fontMedium().textGray800().build(),
        SizedBox(
          width: 100,
          child: const Text('This is a very long text that will overflow').truncate().textRed600().build(),
        ),
        SizedBox(
          width: 100,
          child: const Text('Text with ellipsis overflow').textEllipsis().textBlue600().build(),
        ),
        SizedBox(
          width: 100,
          child: const Text('Text with clip overflow').textClip().textGreen600().build(),
        ),
        
        const SizedBox(height: 8),
        
        // Text Wrap
        const Text('Text Wrap:').fontMedium().textGray800().build(),
        SizedBox(
          width: 150,
          child: const Text('This text will wrap normally').textWrap().textBlue600().build(),
        ),
        SizedBox(
          width: 150,
          child: const Text('This text will not wrap at all').textNowrap().textRed600().build(),
        ),
        
        const SizedBox(height: 8),
        
        // String Extensions
        const Text('String Extensions:').fontMedium().textGray800().build(),
        'String underline'.asText().underline().decorationWavy().decorationBlue600().textBlue600().build(),
        'String UPPERCASE'.asText().lowercase().decorationRed500().textRed600().build(),
        'String truncate example'.asText().truncate().textGreen600().build(),
        
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
