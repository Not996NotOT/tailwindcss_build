import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

void main() {
  runApp(const TestBuilderApp());
}

class TestBuilderApp extends StatelessWidget {
  const TestBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Builder Test',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Builder Pattern Test'),
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
              
              const SizedBox(height: 20),
              
              // 测试 ContainerBuilder
              const Text('Hello ContainerBuilder!')
                  .asContainer()
                  .px6()
                  .py3()
                  .bgBlue600()
                  .r8()
                  .shadow()
                  .build(),
              
              const SizedBox(height: 20),
              
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
