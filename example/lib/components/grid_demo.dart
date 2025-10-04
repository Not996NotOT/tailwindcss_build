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
          const Text('Grid Demo')
              .text2xl()
              .fontBold()
              .textGray900()
              .build(),
          
          const SizedBox(height: 16),
          
          // 基础Grid布局
          const Text('基础Grid布局 - grid-cols-3')
              .textLg()
              .fontSemibold()
              .textGray800()
              .build(),
          
          const SizedBox(height: 8),
          
          [
            _buildGridItem('1'),
            _buildGridItem('2'),
            _buildGridItem('3'),
            _buildGridItem('4'),
            _buildGridItem('5'),
            _buildGridItem('6'),
          ].asGrid()
              .gridCols3()
              .gap4()
              .asContainer()
              .bgGray100()
              .p4()
              .r8()
              .build(),
          
          const SizedBox(height: 16),
          
          // Grid列跨度
          const Text('Grid列跨度 - col-span')
              .textLg()
              .fontSemibold()
              .textGray800()
              .build(),
          
          const SizedBox(height: 8),
          
          [
            _buildGridItem('span-2').colSpan(2),
            _buildGridItem('1'),
            _buildGridItem('1'),
            _buildGridItem('span-2').colSpan(2),
          ].asGrid()
              .gridCols3()
              .gap4()
              .asContainer()
              .bgBlue50()
              .p4()
              .r8()
              .build(),
          
          const SizedBox(height: 16),
          
          // Grid行跨度
          const Text('Grid行跨度 - row-span')
              .textLg()
              .fontSemibold()
              .textGray800()
              .build(),
          
          const SizedBox(height: 8),
          
          [
            _buildGridItem('row-2', height: 80).rowSpan(2),
            _buildGridItem('1'),
            _buildGridItem('2'),
            _buildGridItem('3'),
            _buildGridItem('4'),
          ].asGrid()
              .gridCols3()
              .gap4()
              .asContainer()
              .bgGreen50()
              .p4()
              .r8()
              .build(),
          
          const SizedBox(height: 16),
          
          // Grid定位
          const Text('Grid定位 - col-start, row-start')
              .textLg()
              .fontSemibold()
              .textGray800()
              .build(),
          
          const SizedBox(height: 8),
          
          [
            _buildGridItem('1-1').gridArea(colStart: 1, rowStart: 1),
            _buildGridItem('3-1').gridArea(colStart: 3, rowStart: 1),
            _buildGridItem('2-2').gridArea(colStart: 2, rowStart: 2),
            _buildGridItem('1-3').gridArea(colStart: 1, rowStart: 3),
            _buildGridItem('3-3').gridArea(colStart: 3, rowStart: 3),
          ].asGrid()
              .gridCols3()
              .gridRows3()
              .gap4()
              .asContainer()
              .bgPurple50()
              .p4()
              .r8()
              .build(),
          
          const SizedBox(height: 16),
          
          // 复杂Grid布局
          const Text('复杂Grid布局')
              .textLg()
              .fontSemibold()
              .textGray800()
              .build(),
          
          const SizedBox(height: 8),
          
          [
            _buildGridItem('Header', color: Colors.blue).colSpan(3),
            _buildGridItem('Sidebar', color: Colors.green, height: 120).rowSpan(2),
            _buildGridItem('Main', color: Colors.orange).colSpan(2),
            _buildGridItem('Content', color: Colors.purple).colSpan(2),
            _buildGridItem('Footer', color: Colors.red).colSpan(3),
          ].asGrid()
              .gridCols3()
              .gap4()
              .asContainer()
              .bgGray100()
              .p4()
              .r8()
              .build(),
          
          const SizedBox(height: 16),
          
          // Grid对齐
          const Text('Grid对齐 - justify-content')
              .textLg()
              .fontSemibold()
              .textGray800()
              .build(),
          
          const SizedBox(height: 8),
          
          [
            _buildGridItem('1'),
            _buildGridItem('2'),
            _buildGridItem('3'),
          ].asGrid()
              .gridCols3()
              .justifyCenter()
              .gap4()
              .asContainer()
              .bgYellow50()
              .p4()
              .r8()
              .h(100)
              .build(),
          
          const SizedBox(height: 16),
          
          // Grid Items对齐
          const Text('Grid Items对齐 - place-items-center')
              .textLg()
              .fontSemibold()
              .textGray800()
              .build(),
          
          const SizedBox(height: 8),
          
          [
            _buildGridItem('A', height: 60),
            _buildGridItem('B', height: 40),
            _buildGridItem('C', height: 80),
            _buildGridItem('D', height: 50),
          ].asGrid()
              .gridCols2()
              .placeItemsCenter()
              .gap4()
              .asContainer()
              .bgPink50()
              .p4()
              .r8()
              .h(200)
              .build(),
          
          const SizedBox(height: 16),
          
          // Gap变化
          const Text('Gap间距变化')
              .textLg()
              .fontSemibold()
              .textGray800()
              .build(),
          
          const SizedBox(height: 8),
          
          const Text('gap-2')
              .textBase()
              .fontMedium()
              .textGray700()
              .build(),
          
          const SizedBox(height: 4),
          
          [
            _buildGridItem('1'),
            _buildGridItem('2'),
            _buildGridItem('3'),
            _buildGridItem('4'),
          ].asGrid()
              .gridCols2()
              .gap2()
              .asContainer()
              .bgTeal50()
              .p4()
              .r8()
              .build(),
          
          const SizedBox(height: 8),
          
          const Text('gap-8')
              .textBase()
              .fontMedium()
              .textGray700()
              .build(),
          
          const SizedBox(height: 4),
          
          [
            _buildGridItem('1'),
            _buildGridItem('2'),
            _buildGridItem('3'),
            _buildGridItem('4'),
          ].asGrid()
              .gridCols2()
              .gap8()
              .asContainer()
              .bgIndigo50()
              .p4()
              .r8()
              .build(),
          
          const SizedBox(height: 16),
          
          // 不同列数展示
          const Text('不同列数展示')
              .textLg()
              .fontSemibold()
              .textGray800()
              .build(),
          
          const SizedBox(height: 8),
          
          const Text('grid-cols-1')
              .textBase()
              .fontMedium()
              .textGray700()
              .build(),
          
          const SizedBox(height: 4),
          
          [
            _buildGridItem('Item 1'),
            _buildGridItem('Item 2'),
            _buildGridItem('Item 3'),
          ].asGrid()
              .gridCols1()
              .gap4()
              .asContainer()
              .bgRose50()
              .p4()
              .r8()
              .build(),
          
          const SizedBox(height: 8),
          
          const Text('grid-cols-4')
              .textBase()
              .fontMedium()
              .textGray700()
              .build(),
          
          const SizedBox(height: 4),
          
          [
            _buildGridItem('1'),
            _buildGridItem('2'),
            _buildGridItem('3'),
            _buildGridItem('4'),
            _buildGridItem('5'),
            _buildGridItem('6'),
            _buildGridItem('7'),
            _buildGridItem('8'),
          ].asGrid()
              .gridCols4()
              .gap4()
              .asContainer()
              .bgEmerald50()
              .p4()
              .r8()
              .build(),
          
          const SizedBox(height: 16),
          
          // 实际应用示例
          const Text('实际应用示例 - 卡片布局')
              .textLg()
              .fontSemibold()
              .textGray800()
              .build(),
          
          const SizedBox(height: 8),
          
          [
            _buildCard('用户头像', Icons.person, Colors.blue),
            _buildCard('消息通知', Icons.notifications, Colors.orange),
            _buildCard('设置选项', Icons.settings, Colors.green),
            _buildCard('帮助中心', Icons.help, Colors.purple),
            _buildCard('关于我们', Icons.info, Colors.red),
            _buildCard('联系客服', Icons.support_agent, Colors.teal),
          ].asGrid()
              .gridCols2()
              .gap4()
              .asContainer()
              .p4()
              .build(),
          
          const SizedBox(height: 16),
          
          // 响应式Grid示例
          const Text('响应式Grid示例')
              .textLg()
              .fontSemibold()
              .textGray800()
              .build(),
          
          const SizedBox(height: 8),
          
          [
            _buildResponsiveCard('产品A', '￥299'),
            _buildResponsiveCard('产品B', '￥499'),
            _buildResponsiveCard('产品C', '￥199'),
            _buildResponsiveCard('产品D', '￥399'),
            _buildResponsiveCard('产品E', '￥599'),
            _buildResponsiveCard('产品F', '￥799'),
          ].asGrid()
              .gridCols3()
              .gap6()
              .asContainer()
              .bgGray50()
              .p6()
              .r12()
              .shadow()
              .build(),
        ],
      ),
    );
  }
  
  Widget _buildGridItem(String text, {double? height, Color? color}) {
    return Container(
      height: height ?? 60,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: color ?? Colors.blue.shade500,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
  
  Widget _buildCard(String title, IconData icon, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 32, color: color),
        const SizedBox(height: 8),
        Text(title)
            .textSm()
            .fontMedium()
            .textGray700()
            .textCenter()
            .build(),
      ],
    ).asContainer()
        .p4()
        .bgWhite()
        .border()
        .borderGray200()
        .r8()
        .shadow()
        .onTap(() {
          // 卡片点击事件
        });
  }
  
  Widget _buildResponsiveCard(String title, String price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
          ),
          child: const Icon(Icons.image, size: 40, color: Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title)
                  .fontSemibold()
                  .textGray900()
                  .build(),
              const SizedBox(height: 4),
              Text(price)
                  .textLg()
                  .fontBold()
                  .textBlue600()
                  .build(),
            ],
          ),
        ),
      ],
    ).asContainer()
        .bgWhite()
        .border()
        .borderGray200()
        .r8()
        .shadow()
        .onTap(() {
          // 产品点击事件
        });
  }
}
