import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('字体大小 (Font Sizes)'),
          _buildExample('text-xs', 'Extra Small'.asText().textXs().build()),
          _buildExample('text-sm', 'Small'.asText().textSm().build()),
          _buildExample('text-base', 'Base'.asText().textBase().build()),
          _buildExample('text-lg', 'Large'.asText().textLg().build()),
          _buildExample('text-xl', 'Extra Large'.asText().textXl().build()),
          _buildExample('text-2xl', '2XL'.asText().text2xl().build()),
          _buildExample('text-3xl', '3XL'.asText().text3xl().build()),
          _buildExample('text-4xl', '4XL'.asText().text4xl().build()),
          _buildExample('text-5xl', '5XL'.asText().text5xl().build()),
          _buildExample('text-6xl', '6XL'.asText().text6xl().build()),

          _buildSectionTitle('字体粗细 (Font Weights)'),
          _buildExample('font-thin', 'Thin (100)'.asText().fontThin().build()),
          _buildExample('font-extralight', 'Extralight (200)'.asText().fontExtralight().build()),
          _buildExample('font-light', 'Light (300)'.asText().fontLight().build()),
          _buildExample('font-normal', 'Normal (400)'.asText().fontNormal().build()),
          _buildExample('font-medium', 'Medium (500)'.asText().fontMedium().build()),
          _buildExample('font-semibold', 'Semibold (600)'.asText().fontSemibold().build()),
          _buildExample('font-bold', 'Bold (700)'.asText().fontBold().build()),
          _buildExample('font-extrabold', 'Extrabold (800)'.asText().fontExtrabold().build()),
          _buildExample('font-black', 'Black (900)'.asText().fontBlack().build()),

          _buildSectionTitle('文本颜色 (Text Colors)'),
          _buildExample('text-red-500', 'Red 500'.asText().textRed500().build()),
          _buildExample('text-blue-600', 'Blue 600'.asText().textBlue600().build()),
          _buildExample('text-green-700', 'Green 700'.asText().textGreen700().build()),
          _buildExample('text-purple-500', 'Purple 500'.asText().textPurple500().build()),
          _buildExample('text-gray-900', 'Gray 900'.asText().textGray900().build()),
          _buildExample('text-blue-700', 'Blue 700'.asText().textBlue700().build()),

          _buildSectionTitle('文本对齐 (Text Alignment)'),
          _buildExample('text-left', 'Left Aligned'.asText().textLeft().build()),
          _buildExample('text-center', 'Center Aligned'.asText().textCenter().build()),
          _buildExample('text-right', 'Right Aligned'.asText().textRight().build()),
          _buildExample('text-justify', SizedBox(
            width: double.infinity,
            child: 'Justified text with enough content to demonstrate the justify alignment feature. This text will be evenly distributed across the width.'.asText().textJustify().build(),
          )),

          _buildSectionTitle('文本装饰 (Text Decoration)'),
          _buildExample('underline', 'Underlined'.asText().underline().build()),
          _buildExample('overline', 'Overlined'.asText().overline().build()),
          _buildExample('line-through', 'Line Through'.asText().lineThrough().build()),
          _buildExample('no-underline', 'No Underline'.asText().noUnderline().build()),
          _buildExample('underline + decoration-blue-500', 'Colored Underline'.asText().underline().decorationBlue500().build()),
          _buildExample('decoration-dotted', 'Dotted Underline'.asText().underline().decorationDotted().build()),
          _buildExample('decoration-dashed', 'Dashed Underline'.asText().underline().decorationDashed().build()),
          _buildExample('decoration-wavy', 'Wavy Underline'.asText().underline().decorationWavy().build()),
          _buildExample('decoration-double', 'Double Underline'.asText().underline().decorationDouble().build()),

          _buildSectionTitle('文本转换 (Text Transform)'),
          _buildExample('uppercase', 'uppercase text'.asText().uppercase().build()),
          _buildExample('lowercase', 'LOWERCASE TEXT'.asText().lowercase().build()),
          _buildExample('capitalize', 'capitalize text'.asText().capitalize().build()),
          _buildExample('normal-case', 'Normal Case'.asText().normalCase().build()),

          _buildSectionTitle('文本溢出 (Text Overflow)'),
          _buildExample('truncate', SizedBox(
            width: 200,
            child: 'Very long text that will be truncated with ellipsis'.asText().truncate().build(),
          )),
          _buildExample('text-ellipsis', SizedBox(
            width: 200,
            child: 'Very long text with ellipsis'.asText().textEllipsis().build(),
          )),
          _buildExample('text-clip', SizedBox(
            width: 200,
            child: 'Very long text that will be clipped'.asText().textClip().build(),
          )),
          _buildExample('maxLines(2)', SizedBox(
            width: 200,
            child: 'Very long text that will be limited to two lines maximum and show ellipsis'.asText().maxLines(2).build(),
          )),

          _buildSectionTitle('字符间距 (Letter Spacing)'),
          _buildExample('tracking-tighter', 'Tighter Spacing'.asText().trackingTighter().build()),
          _buildExample('tracking-tight', 'Tight Spacing'.asText().trackingTight().build()),
          _buildExample('tracking-normal', 'Normal Spacing'.asText().trackingNormal().build()),
          _buildExample('tracking-wide', 'Wide Spacing'.asText().trackingWide().build()),
          _buildExample('tracking-wider', 'Wider Spacing'.asText().trackingWider().build()),
          _buildExample('tracking-widest', 'Widest Spacing'.asText().trackingWidest().build()),

          _buildSectionTitle('行高 (Line Height)'),
          _buildExample('leading-none', 'None\nLine Height'.asText().leadingNone().build()),
          _buildExample('leading-tight', 'Tight\nLine Height'.asText().leadingTight().build()),
          _buildExample('leading-snug', 'Snug\nLine Height'.asText().leadingSnug().build()),
          _buildExample('leading-normal', 'Normal\nLine Height'.asText().leadingNormal().build()),
          _buildExample('leading-relaxed', 'Relaxed\nLine Height'.asText().leadingRelaxed().build()),
          _buildExample('leading-loose', 'Loose\nLine Height'.asText().leadingLoose().build()),

          _buildSectionTitle('字体样式 (Font Style)'),
          _buildExample('italic', 'Italic Text'.asText().italic().build()),
          _buildExample('not-italic', 'Not Italic'.asText().notItalic().build()),

          _buildSectionTitle('文本阴影 (Text Shadow)'),
          _buildExample('text-shadow', 'Text with Shadow'.asText()
            .textShadow([const Shadow(color: Colors.black26, blurRadius: 4, offset: Offset(2, 2))])
            .build()),

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
