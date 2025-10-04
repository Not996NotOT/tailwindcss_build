import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Text('Button Demo (Container + GestureDetector)')
            .text2xl()
            .fontBold()
            .textGray900()
            .build(),
        
        const SizedBox(height: 16),
        
        const Text('基础按钮')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        const SizedBox(height: 8),
        
        // 基础按钮
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            const Text('Primary')
                .textWhite()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgBlue600()
                .r8()
                .shadow()
                .onTap(() => _showMessage(context, 'Primary clicked!')),
            
            const Text('Secondary')
                .textGray700()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgWhite()
                .border()
                .borderGray300()
                .r8()
                .onTap(() => _showMessage(context, 'Secondary clicked!')),
            
            const Text('Success')
                .textWhite()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgGreen600()
                .r8()
                .shadow()
                .onTap(() => _showMessage(context, 'Success clicked!')),
            
            const Text('Danger')
                .textWhite()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgRed600()
                .r8()
                .shadow()
                .onTap(() => _showMessage(context, 'Danger clicked!')),
          ],
        ),
        
        const SizedBox(height: 16),
        
        const Text('按钮大小')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        const SizedBox(height: 8),
        
        // 不同大小
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Small')
                .textWhite()
                .textSm()
                .fontMedium()
                         .asContainer()
                .px4()
                .py2()
                .bgBlue600()
                .r6()
                .shadow()
                .onTap(() => _showMessage(context, 'Small clicked!')),
            
            const SizedBox(height: 8),
            
            const Text('Medium')
                .textWhite()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgBlue600()
                .r8()
                .shadow()
                .onTap(() => _showMessage(context, 'Medium clicked!')),
            
            const SizedBox(height: 8),
            
            const Text('Large')
                .textWhite()
                .textLg()
                .fontMedium()
                         .asContainer()
                .px8()
                .py4()
                .bgBlue600()
                .r8()
                .shadow()
                .onTap(() => _showMessage(context, 'Large clicked!')),
          ],
        ),
        
        const SizedBox(height: 16),
        
        const Text('按钮样式')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        const SizedBox(height: 8),
        
        // 不同样式
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            const Text('Solid')
                .textWhite()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgPurple600()
                .r8()
                .shadow()
                .onTap(() => _showMessage(context, 'Solid clicked!')),
            
            const Text('Outline')
                .textPurple600()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgWhite()
                .border2()
                .borderPurple600()
                .r8()
                .onTap(() => _showMessage(context, 'Outline clicked!')),
            
            const Text('Ghost')
                .textPurple600()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgPurple50()
                .r8()
                .onTap(() => _showMessage(context, 'Ghost clicked!')),
            
            const Text('Text Only')
                .textPurple600()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .onTap(() => _showMessage(context, 'Text only clicked!')),
          ],
        ),
        
        const SizedBox(height: 16),
        
        const Text('复杂按钮')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        const SizedBox(height: 8),
        
        // 复杂按钮
        const Text('🚀 Gradient-style Button')
            .textWhite()
            .fontSemibold()
                         .asContainer()
            .px8()
            .py4()
            .bgPurple600()
            .r12()
            .shadowLg()
            .onTap(() => _showMessage(context, 'Gradient-style clicked!')),
        
        const SizedBox(height: 8),
        
        const Text('⚠️ Warning Action')
            .textYellow800()
            .fontMedium()
                         .asContainer()
            .px6()
            .py3()
            .bgYellow100()
            .border()
            .borderYellow400()
            .r8()
            .onTap(() => _showMessage(context, 'Warning clicked!')),
        ],
      ),
    );
  }
  
  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}