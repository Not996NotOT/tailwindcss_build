import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

/// Layout Demo - 展示新的Stack定位和Flex布局功能
class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        // === Stack定位示例 ===
        _buildStackExample(),
        
        const SizedBox(height: 32),
        
        // === Flex布局示例 ===
        _buildFlexExample(),
        ],
      ),
    );
  }

  /// Stack定位示例 - 类似HTML的position布局
  Widget _buildStackExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Stack定位示例',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        
        // 相对定位容器 - 类似 <div class="relative">
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: [
            // 背景内容
            const Text('Relative parent container')
                .asContainer()
                .p4()
                .bgGray100()
                .build(),
            
            // 绝对定位的子元素 - 类似 <div class="absolute top-4 left-4">
            const Text('Absolute child - top-4 left-4')
                .asContainer()
                .position()     // 启用绝对定位
                .top4()         // top: 16px
                .left4()        // left: 16px
                .p3()
                .bgBlue500()
                .r4()
                .build(),
            
            // 右上角定位 - 类似 <div class="absolute top-0 right-0">
            const Text('Top Right')
                .asContainer()
                .position()
                .top0()
                .right0()
                .p2()
                .bgRed500()
                .r4()
                .build(),
            
            // 底部居中 - 使用自定义值
            const Text('Bottom Center')
                .asContainer()
                .position()
                .bottom(20)     // 自定义bottom值
                .left(100)      // 自定义left值
                .p3()
                .bgGreen500()
                .r4()
                .build(),
            
            // inset定位 - 类似 <div class="absolute inset-4">
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text('Inset-4 border'),
            )
                .asContainer()
                .position()
                .inset4()      // top/right/bottom/left: 16px
                .build(),
          ].asStack().relative(), // 创建Stack并设置为relative
        ),
        
        const SizedBox(height: 16),
        const Text(
          '代码示例:\n'
          '[\n'
          '  Text("背景").asContainer().build(),\n'
          '  Text("定位元素")\n'
          '    .asContainer()\n'
          '    .position()  // 启用定位\n'
          '    .top4()      // top: 16px\n'
          '    .left4()     // left: 16px\n'
          '    .build(),\n'
          '].asStack().relative()',
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  /// Flex布局示例
  Widget _buildFlexExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Flex布局示例',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        
        // Flex示例容器
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              // flex-1, flex-2, flex-1 布局
              Row(
                children: [
                  const Text('flex-1')
                      .asContainer()
                      .p3()
                      .bgBlue200()
                      .r4()
                      .flex1(),    // flex: 1
                  
                  const SizedBox(width: 8),
                  
                  const Text('flex-2')
                      .asContainer()
                      .p3()
                      .bgGreen200()
                      .r4()
                      .flex2(),    // flex: 2
                  
                  const SizedBox(width: 8),
                  
                  const Text('flex-1')
                      .asContainer()
                      .p3()
                      .bgRed200()
                      .r4()
                      .flex1(),    // flex: 1
                ],
              ),
              
              const SizedBox(height: 16),
              
              // flex-auto 和 flex-none 示例
              Row(
                children: [
                  const Text('flex-auto')
                      .asContainer()
                      .p3()
                      .bgPurple200()
                      .r4()
                      .flexAuto(),    // Flexible(fit: FlexFit.loose)
                  
                  const SizedBox(width: 8),
                  
                  const Text('flex-none (固定)')
                      .asContainer()
                      .p3()
                      .bgOrange200()
                      .r4()
                      .flexNone(),    // 不使用flex
                  
                  const SizedBox(width: 8),
                  
                  const Text('flex-auto')
                      .asContainer()
                      .p3()
                      .bgCyan200()
                      .r4()
                      .flexAuto(),
                ],
              ),
              
              const SizedBox(height: 16),
              
              // 自定义flex值
              Row(
                children: [
                  const Text('flex(3)')
                      .asContainer()
                      .p3()
                      .bgYellow200()
                      .r4()
                      .flex(3),       // 自定义flex值
                  
                  const SizedBox(width: 8),
                  
                  const Text('flexible(2)')
                      .asContainer()
                      .p3()
                      .bgPink200()
                      .r4()
                      .flexible(flex: 2, fit: FlexFit.tight),
                ],
              ),
            ],
          ),
        ),
        
        const SizedBox(height: 16),
        const Text(
          '代码示例:\n'
          'Row(children: [\n'
          '  Text("A").asContainer().flex1(),     // flex: 1\n'
          '  Text("B").asContainer().flex2(),     // flex: 2\n'
          '  Text("C").asContainer().flexAuto(),  // flexible\n'
          '])',
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
