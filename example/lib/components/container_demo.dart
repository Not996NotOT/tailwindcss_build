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
        
        // 尺寸约束示例
        const Text('Size Constraints Demo')
            .textLg()
            .fontBold()
            .textGray900()
            .build(),
        
        const SizedBox(height: 12),
        
        // Min-Width 示例
        const Text('Min-Width Examples')
            .textBase()
            .fontSemibold()
            .textGray700()
            .build(),
        
        const SizedBox(height: 8),
        
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            const Text('min-w-32')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgBlue500()
                .minW32()
                .r4()
                .build(),
            
            const Text('min-w-48')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgBlue500()
                .minW48()
                .r4()
                .build(),
            
            const Text('min-w-64')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgBlue500()
                .minW64()
                .r4()
                .build(),
          ],
        ),
        
        const SizedBox(height: 12),
        
        // Max-Width 示例
        const Text('Max-Width Examples')
            .textBase()
            .fontSemibold()
            .textGray700()
            .build(),
        
        const SizedBox(height: 8),
        
        Column(
          children: [
            const Text('max-w-sm (384px)')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgGreen500()
                .maxWsm()
                .r4()
                .build(),
            
            const SizedBox(height: 8),
            
            const Text('max-w-md (448px)')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgGreen500()
                .maxWmd()
                .r4()
                .build(),
            
            const SizedBox(height: 8),
            
            const Text('max-w-lg (512px)')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgGreen500()
                .maxWlg()
                .r4()
                .build(),
          ],
        ),
        
        const SizedBox(height: 12),
        
        // Min-Height 示例
        const Text('Min-Height Examples')
            .textBase()
            .fontSemibold()
            .textGray700()
            .build(),
        
        const SizedBox(height: 8),
        
        Row(
          children: [
            const Text('min-h-16')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgPurple500()
                .minH16()
                .r4()
                .build(),
            
            const SizedBox(width: 12),
            
            const Text('min-h-24')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgPurple500()
                .minH24()
                .r4()
                .build(),
            
            const SizedBox(width: 12),
            
            const Text('min-h-32')
                .textWhite()
                .asContainer()
                .px4()
                .py2()
                .bgPurple500()
                .minH32()
                .r4()
                .build(),
          ],
        ),
        
        const SizedBox(height: 12),
        
        // Max-Height 示例
        const Text('Max-Height Examples')
            .textBase()
            .fontSemibold()
            .textGray700()
            .build(),
        
        const SizedBox(height: 8),
        
        SizedBox(
          height: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text('max-h-16 (64px)')
                    .textWhite()
                    .asContainer()
                    .px4()
                    .py2()
                    .bgRed500()
                    .maxH16()
                    .r4()
                    .build(),
                
                const SizedBox(height: 8),
                
                const Text('max-h-24 (96px)')
                    .textWhite()
                    .asContainer()
                    .px4()
                    .py2()
                    .bgRed500()
                    .maxH24()
                    .r4()
                    .build(),
                
                const SizedBox(height: 8),
                
                const Text('max-h-32 (128px)')
                    .textWhite()
                    .asContainer()
                    .px4()
                    .py2()
                    .bgRed500()
                    .maxH32()
                    .r4()
                    .build(),
              ],
            ),
          ),
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