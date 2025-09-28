import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Button Demo (Container + GestureDetector)')
            .text2xl()
            .fontBold()
            .textGray900()
            .build(),
        
        SizedBox(height: 16),
        
        Text('基础按钮')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        SizedBox(height: 8),
        
        // 基础按钮
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            Text('Primary')
                .textWhite()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgBlue600()
                .r8()
                .shadow()
                .onTap(() => _showMessage(context, 'Primary clicked!')),
            
            Text('Secondary')
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
            
            Text('Success')
                .textWhite()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgGreen600()
                .r8()
                .shadow()
                .onTap(() => _showMessage(context, 'Success clicked!')),
            
            Text('Danger')
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
        
        SizedBox(height: 16),
        
        Text('按钮大小')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        SizedBox(height: 8),
        
        // 不同大小
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Small')
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
            
            SizedBox(height: 8),
            
            Text('Medium')
                .textWhite()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgBlue600()
                .r8()
                .shadow()
                .onTap(() => _showMessage(context, 'Medium clicked!')),
            
            SizedBox(height: 8),
            
            Text('Large')
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
        
        SizedBox(height: 16),
        
        Text('按钮样式')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        SizedBox(height: 8),
        
        // 不同样式
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            Text('Solid')
                .textWhite()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgPurple600()
                .r8()
                .shadow()
                .onTap(() => _showMessage(context, 'Solid clicked!')),
            
            Text('Outline')
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
            
            Text('Ghost')
                .textPurple600()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .bgPurple50()
                .r8()
                .onTap(() => _showMessage(context, 'Ghost clicked!')),
            
            Text('Text Only')
                .textPurple600()
                .fontMedium()
                         .asContainer()
                .px6()
                .py3()
                .onTap(() => _showMessage(context, 'Text only clicked!')),
          ],
        ),
        
        SizedBox(height: 16),
        
        Text('复杂按钮')
            .textLg()
            .fontSemibold()
            .textGray800()
            .build(),
        
        SizedBox(height: 8),
        
        // 复杂按钮
        Text('🚀 Gradient-style Button')
            .textWhite()
            .fontSemibold()
                         .asContainer()
            .px8()
            .py4()
            .bgPurple600()
            .r12()
            .shadowLg()
            .onTap(() => _showMessage(context, 'Gradient-style clicked!')),
        
        SizedBox(height: 8),
        
        Text('⚠️ Warning Action')
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
    );
  }
  
  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }
}