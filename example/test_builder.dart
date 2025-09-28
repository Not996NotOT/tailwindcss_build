import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

void main() {
  runApp(TestBuilderApp());
}

class TestBuilderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Builder Test',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Builder Pattern Test'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 测试 TextBuilder
              textBuilder('Hello TextBuilder!')
                  .textBlue600()
                  .textXl()
                  .fontBold()
                  .build(),
              
              SizedBox(height: 20),
              
              // 测试 ContainerBuilder
              Text('Hello ContainerBuilder!')
                  .asContainer()
                  .px6()
                  .py3()
                  .bgBlue600()
                  .r8()
                  .shadow()
                  .build(),
              
              SizedBox(height: 20),
              
              // 测试 String 到 TextBuilder
              'Hello String to TextBuilder!'
                  .asTextBuilder()
                  .textGreen600()
                  .textLg()
                  .fontMedium()
                  .build(),
            ],
          ),
        ),
      ),
    );
  }
}
