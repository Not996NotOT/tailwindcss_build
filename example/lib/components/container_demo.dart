import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Container Demo')
            .text2xl()
            .fontBold()
            .textGray900()
            .build(),
        
        const SizedBox(height: 16),
        
        // 基础容器
        const Text('Simple Container')
            .textWhite()
                .fontMedium()
                .asContainer()
            .px4()
            .py2()
            .bgBlue500()
            .r6()
            .build(),
        
        const SizedBox(height: 12),
        
        // 带阴影
        const Text('With Shadow')
            .textWhite()
                .fontMedium()
                .asContainer()
            .px4()
            .py2()
            .bgGreen500()
            .r6()
            .shadow()
            .build(),
        
        const SizedBox(height: 12),
        
        // 带边框
        const Text('With Border')
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
        
        const SizedBox(height: 16),
        
        // 不同内边距
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            const Text('px2 py1')
                .textWhite()
                .asContainer()
                .px2()
                .py1()
                .bgPurple500()
                .r4()
                .build(),
            
            const Text('px4 py2')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgPurple500()
                .r4()
                .build(),
            
            const Text('px6 py3')
                .textWhite()
                .asContainer()
                .px6()
                .py3()
                .bgPurple500()
                .r4()
                .build(),
          ],
        ),
        
        const SizedBox(height: 16),
        
        // 不同圆角
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            const Text('r4')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgRed500()
                .r4()
                .build(),
            
            const Text('r8')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgRed500()
                .r8()
                .build(),
            
            const Text('r12')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgRed500()
                .r12()
                .build(),
          ],
        ),
        
        const SizedBox(height: 16),
        
        // 复合示例
        const Text('Complex Container')
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