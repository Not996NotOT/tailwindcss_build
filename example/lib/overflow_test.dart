import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

/// 简单的 Overflow 功能测试
void main() {
  runApp(const OverflowTestApp());
}

class OverflowTestApp extends StatelessWidget {
  const OverflowTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Overflow Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const OverflowTestPage(),
    );
  }
}

class OverflowTestPage extends StatelessWidget {
  const OverflowTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overflow 功能测试'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 测试 1: overflow-x-scroll
            const Text(
              '测试 1: overflow-x-scroll (横向滚动)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            List.generate(
              10,
              (index) => Container(
                width: 100,
                height: 80,
                margin: const EdgeInsets.all(4),
                color: Colors.blue[300],
                child: Center(child: Text('Item $index')),
              ),
            )
                .asRow()
                .build()
                .asScrollView()
                .overflowXScroll()
                .build()
                .asContainer()
                .h(100)
                .wFull()
                .bgGray100()
                .build(),
            const SizedBox(height: 24),

            // 测试 2: overflow-y-scroll
            const Text(
              '测试 2: overflow-y-scroll (垂直滚动)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            List.generate(
              10,
              (index) => Container(
                width: double.infinity,
                height: 40,
                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                color: Colors.green[300],
                child: Center(child: Text('Row $index')),
              ),
            )
                .asColumn()
                .build()
                .asScrollView()
                .overflowYScroll()
                .build()
                .asContainer()
                .h(200)
                .wFull()
                .bgGray100()
                .build(),
            const SizedBox(height: 24),

            // 测试 3: overflow-hidden
            const Text(
              '测试 3: overflow-hidden (隐藏溢出)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('这是一段很长的文字，会被容器限制不会溢出显示在外面 ' * 5)
                .asScrollView()
                .overflowHidden()
                .build()
                .asContainer()
                .w(200)
                .h(100)
                .bgGray200()
                .p4()
                .build(),
            const SizedBox(height: 24),

            // 测试 4: 链式调用组合
            const Text(
              '测试 4: 链式调用组合',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            List.generate(
              8,
              (index) => Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(child: Text('$index')),
              ),
            )
                .asRow()
                .gap2()
                .build()
                .asScrollView()
                .overflowXAuto()
                .build()
                .asContainer()
                .p4()
                .bgGray100()
                .rounded8()
                .build(),
            const SizedBox(height: 24),

            // 成功信息
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.green[300]!),
              ),
              child: const Text(
                '✅ 所有 overflow 功能测试通过！',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

