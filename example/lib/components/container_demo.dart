import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Container Demo')
            .text2xl()
            .fontBold()
            .textGray900()
            .build(),
        
        SizedBox(height: 16),
        
        // 基础容器
        Text('Simple Container')
            .textWhite()
                .fontMedium()
                .asContainer()
            .px4()
            .py2()
            .bgBlue500()
            .r6()
            .build(),
        
        SizedBox(height: 12),
        
        // 带阴影
        Text('With Shadow')
            .textWhite()
                .fontMedium()
                .asContainer()
            .px4()
            .py2()
            .bgGreen500()
            .r6()
            .shadow()
            .build(),
        
        SizedBox(height: 12),
        
        // 带边框
        Text('With Border')
            .textGray700()
                .fontMedium()
                .asContainer()
            .px4()
            .py2()
            .bgWhite()
            .border()
            .borderGray300()
            .r6()
            .build(),
        
        SizedBox(height: 16),
        
        // 不同内边距
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            Text('px2 py1')
                .textWhite()
                .asContainer()
                .px2()
                .py1()
                .bgPurple500()
                .r4()
                .build(),
            
            Text('px4 py2')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgPurple500()
                .r4()
                .build(),
            
            Text('px6 py3')
                .textWhite()
                .asContainer()
                .px6()
                .py3()
                .bgPurple500()
                .r4()
                .build(),
          ],
        ),
        
        SizedBox(height: 16),
        
        // 不同圆角
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            Text('r4')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgRed500()
                .r4()
                .build(),
            
            Text('r8')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgRed500()
                .r8()
                .build(),
            
            Text('r12')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgRed500()
                .r12()
                .build(),
          ],
        ),
        
        SizedBox(height: 16),
        
        // 复合示例
        Text('Complex Container')
            .textGray800()
            .fontSemibold()
            .build()
            .asContainer()
            .px6()
            .py4()
            .bgWhite()
            .border()
            .borderGray200()
            .r12()
            .shadowMd()
            .build(),
      ],
    );
  }
}