import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

import 'accordion_demo.dart';
import 'alert_demo.dart';

class ComponentTestPage extends StatelessWidget {
  const ComponentTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TailwindCSS Build 组件测试')
            .textLg()
            .fontBold()
            .textWhite(),
        backgroundColor: Colors.blue[600],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 页面标题
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('组件测试用例')
                      .text2xl()
                      .fontBold()
                      .textGray900(),
                  
                  Text('使用 tailwindcss_build 语法糖实现常用组件')
                      .textBase()
                      .textGray600()
                      .mt2(),
                ],
              ),
            ).p6().bgWhite(),
            
            // 组件列表
            Container(
              child: Column(
                children: [
                  _buildComponentCard(
                    context,
                    title: 'Accordion 手风琴',
                    description: '可展开/折叠的内容面板，支持多种变体和自定义样式',
                    icon: Icons.expand_more,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AccordionDemo(),
                        ),
                      );
                    },
                  ),
                  
                  _buildComponentCard(
                    context,
                    title: 'Alert 警告提示',
                    description: '用于页面中展示重要的提示信息，支持多种颜色和样式变体',
                    icon: Icons.info_outline,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AlertDemo(),
                        ),
                      );
                    },
                  ),
                  
                  // 可以继续添加其他组件
                ],
              ),
            ).p4().bgGray50(),
          ],
        ),
      ),
    );
  }

  Widget _buildComponentCard(
    BuildContext context, {
    required String title,
    required String description,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            // 图标
            Container(
              child: Icon(
                icon,
                color: Colors.blue[600],
                size: 24,
              ),
            )
                .p4()
                .bgBlue100()
                .roundedLg(),
            
            // 内容
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title)
                        .textLg()
                        .fontSemiBold()
                        .textGray900(),
                    
                    Text(description)
                        .textSm()
                        .textGray600()
                        .mt1(),
                  ],
                ),
              ),
            ),
            
            // 箭头
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[400],
              size: 16,
            ),
          ],
        ),
      )
          .p4()
          .bgWhite()
          .border()
          .borderGray200()
          .roundedLg()
          .shadow()
          .mb3(),
    );
  }
}
