import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Flex Demo')
            .text2xl()
            .fontBold()
            .textGray900()
            .build(),
        
        const SizedBox(height: 16),
        
        // Flex Direction
        const Text('Flex Direction')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        const SizedBox(height: 8),
        
        // flex-row 示例
        [
          _buildFlexItem('1'),
          _buildFlexItem('2'),
          _buildFlexItem('3'),
        ].asFlex()
            .flexRow()
            .justifyStart()
            .itemsCenter()
            .asContainer()
            .bgGray100()
            .p4()
            .r8()
            .build(),
        
        const SizedBox(height: 8),
        
        // flex-row with gap4 示例  
        const Text('Flex Row with Gap')
            .textBase()
            .fontMedium()
            .textGray700()
            .build(),
            
        const SizedBox(height: 4),
        
        [
          _buildFlexItem('1'),
          _buildFlexItem('2'), 
          _buildFlexItem('3'),
        ].asFlex()
            .flexRow()
            .justifyStart()
            .itemsCenter()
            .gap4() // 添加 gap4 间距
            .asContainer()
            .bgBlue50()
            .p4()
            .r8()
            .build(),
        
        const SizedBox(height: 8),
        
        // flex-col 示例
        [
          _buildFlexItem('A'),
          _buildFlexItem('B'),
          _buildFlexItem('C'),
        ].asFlex()
            .flexCol()
            .justifyStart()
            .itemsStart()
            .asContainer()
            .bgGray100()
            .p4()
            .r8()
            .build(),
            
        const SizedBox(height: 8),
        
        // flex-col with gap2 示例
        const Text('Flex Column with Gap')
            .textBase()
            .fontMedium()
            .textGray700()
            .build(),
            
        const SizedBox(height: 4),
        
        [
          _buildFlexItem('A'),
          _buildFlexItem('B'),
          _buildFlexItem('C'),
        ].asFlex()
            .flexCol()
            .justifyStart()
            .itemsStart()
            .gap2() // 添加 gap2 间距
            .asContainer()
            .bgGreen50()
            .p4()
            .r8()
            .build(),
        
        const SizedBox(height: 8),
        
        // flex with custom gap 示例
        const Text('Flex with Custom Gap (30px)')
            .textBase()
            .fontMedium()
            .textGray700()
            .build(),
            
        const SizedBox(height: 4),
        
        [
          _buildFlexItem('1'),
          _buildFlexItem('2'),
          _buildFlexItem('3'),
        ].asFlex()
            .flexRow()
            .justifyCenter()
            .itemsCenter()
            .gap(30.0) // 自定义30px间距
            .asContainer()
            .bgPurple50()
            .p4()
            .r8()
            .build(),
        
        const SizedBox(height: 16),
        
        // Justify Content
        const Text('Justify Content (主轴)')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        const SizedBox(height: 8),
        
        // justify-center
        [
          _buildFlexItem('1'),
          _buildFlexItem('2'),
          _buildFlexItem('3'),
        ].asFlex()
            .flexRow()
            .justifyCenter()
            .itemsCenter()
            .asContainer()
            .backgroundColor(const Color(0xFFF0FDF4)) // green-50
            .p4()
            .r8()
            .build(),
        
        const SizedBox(height: 8),
        
        // justify-between
        [
          _buildFlexItem('A'),
          _buildFlexItem('B'),
          _buildFlexItem('C'),
        ].asFlex()
            .flexRow()
            .justifyBetween()
            .itemsCenter()
            .asContainer()
            .backgroundColor(const Color(0xFFFEFCE8)) // yellow-50
            .p4()
            .r8()
            .build(),
        
        const SizedBox(height: 8),
        
        // justify-around
        [
          _buildFlexItem('X'),
          _buildFlexItem('Y'),
          _buildFlexItem('Z'),
        ].asFlex()
            .flexRow()
            .justifyAround()
            .itemsCenter()
            .asContainer()
            .backgroundColor(const Color(0xFFFAF5FF)) // purple-50
            .p4()
            .r8()
            .build(),
        
        const SizedBox(height: 8),
        
        // justify-evenly
        [
          _buildFlexItem('1'),
          _buildFlexItem('2'),
          _buildFlexItem('3'),
        ].asFlex()
            .flexRow()
            .justifyEvenly()
            .itemsCenter()
            .asContainer()
            .backgroundColor(const Color(0xFFFEF2F2)) // red-50
            .p4()
            .r8()
            .build(),
        
        const SizedBox(height: 16),
        
        // Align Items
        const Text('Align Items (交叉轴)')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        const SizedBox(height: 8),
        
        // items-start
        [
          _buildFlexItem('S', height: 40),
          _buildFlexItem('M', height: 60),
          _buildFlexItem('L', height: 80),
        ].asFlex()
            .flexRow()
            .justifyCenter()
            .itemsStart()
            .asContainer()
            .bgBlue50()
            .p4()
            .r8()
            .h(100)
            .build(),
        
        const SizedBox(height: 8),
        
        // items-center
        [
          _buildFlexItem('S', height: 40),
          _buildFlexItem('M', height: 60),
          _buildFlexItem('L', height: 80),
        ].asFlex()
            .flexRow()
            .justifyCenter()
            .itemsCenter()
            .asContainer()
            .backgroundColor(const Color(0xFFF0FDF4)) // green-50
            .p4()
            .r8()
            .h(100)
            .build(),
        
        const SizedBox(height: 8),
        
        // items-end
        [
          _buildFlexItem('S', height: 40),
          _buildFlexItem('M', height: 60),
          _buildFlexItem('L', height: 80),
        ].asFlex()
            .flexRow()
            .justifyCenter()
            .itemsEnd()
            .asContainer()
            .backgroundColor(const Color(0xFFFEFCE8)) // yellow-50
            .p4()
            .r8()
            .h(100)
            .build(),
        
        const SizedBox(height: 16),
        
        // 复合示例
        const Text('复合示例')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        const SizedBox(height: 8),
        
        // 卡片式布局
        [
          const Text('标题')
              .textWhite()
              .fontBold()
               .asContainer()
              .px4()
              .py2()
              .bgBlue600()
              .r6()
              .build(),
          
          const Text('内容区域')
              .textGray700()
              .build(),
          
          const Text('操作')
              .textBlue600()
              .fontMedium()
               .asContainer()
              .px3()
              .py1()
              .border()
              .borderBlue300()
              .r4()
              .onTap(() {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Flex item clicked!')),
                );
              }),
        ].asFlex()
            .flexRow()
            .justifyBetween()
            .itemsCenter()
            .asContainer()
            .bgWhite()
            .p6()
            .border()
            .borderGray200()
            .r12()
            .shadow()
            .onTap(() {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Flex container clicked!')),
              );
            }),
        
        const SizedBox(height: 16),
        
        // 垂直布局示例
        [
          const Text('Header')
              .textWhite()
              .fontBold()
               .asContainer()
              .px4()
              .py3()
              .bgGray800()
              .r6()
              .build(),
          
          const Text('Main Content Area')
              .textGray700()
               .asContainer()
              .px4()
              .py8()
              .bgGray50()
              .build(),
          
          [
            const Text('Cancel')
                .textGray600()
               .asContainer()
                .px4()
                .py2()
                .border()
                .borderGray300()
                .r6()
                .onTap(() {}),
            
            const Text('Confirm')
                .textWhite()
               .asContainer()
                .px4()
                .py2()
                .bgBlue600()
                .r6()
                .onTap(() {}),
          ].asFlex()
              .flexRow()
              .justifyEnd()
              .itemsCenter()
              .build(),
        ].asFlex()
            .flexCol()
            .justifyStart()
            .itemsStretch()
            .asContainer()
            .bgWhite()
            .border()
            .borderGray200()
            .r12()
            .shadow()
            .build(),
      ],
    );
  }
  
  Widget _buildFlexItem(String text, {double? height}) {
    return Text(text)
        .textWhite()
        .fontBold()
               .asContainer()
        .px4()
        .py2()
        .bgBlue500()
        .r4()
            .h(height ?? 40)
        .build();
  }
}
