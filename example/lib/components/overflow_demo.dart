import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

/// Overflow 功能演示组件
/// 展示各种 overflow 样式的使用方法
class OverflowDemo extends StatelessWidget {
  const OverflowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overflow Demo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // === overflow-visible 示例 ===
              const Text(
                'overflow-visible',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                width: 200,
                height: 100,
                color: Colors.grey[200],
                child: Text('这是一段很长的文字，会溢出容器显示在外面 ' * 3)
                    .asScrollView()
                    .overflowVisible()
                    .build(),
              ),
              const SizedBox(height: 32),

              // === overflow-hidden 示例 ===
              const Text(
                'overflow-hidden',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                width: 200,
                height: 100,
                color: Colors.grey[200],
                child: Text('这是一段很长的文字，超出部分会被隐藏 ' * 3)
                    .asScrollView()
                    .overflowHidden()
                    .build(),
              ),
              const SizedBox(height: 32),

              // === overflow-x-scroll 示例 ===
              const Text(
                'overflow-x-scroll',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.grey[200],
                child: List.generate(
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
                    .build(),
              ),
              const SizedBox(height: 32),

              // === overflow-y-scroll 示例 ===
              const Text(
                'overflow-y-scroll',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[200],
                child: List.generate(
                  20,
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
                    .build(),
              ),
              const SizedBox(height: 32),

              // === overflow-auto 示例 ===
              const Text(
                'overflow-auto (双向滚动)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[200],
                child: Container(
                  width: 600,
                  height: 400,
                  color: Colors.purple[200],
                  child: const Center(
                    child: Text(
                      '这是一个大容器\n可以双向滚动',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
                    .asScrollView()
                    .overflowAuto()
                    .build(),
              ),
              const SizedBox(height: 32),

              // === 链式调用示例 ===
              const Text(
                '链式调用示例',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              List.generate(
                10,
                (index) => Container(
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(4),
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
              const SizedBox(height: 32),

              // === 实际应用场景：横向卡片列表 ===
              const Text(
                '实际应用：横向卡片列表',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              List.generate(
                8,
                (index) => Container(
                  width: 160,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 160,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.amber[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.image, size: 40),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Card Title $index',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Card description here',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  )
                      .asContainer()
                      .p3()
                      .bgWhite()
                      .rounded8()
                      .shadow()
                      .build(),
                ),
              )
                  .asRow()
                  .gap4()
                  .build()
                  .asScrollView()
                  .overflowXScroll()
                  .padding(const EdgeInsets.symmetric(horizontal: 8))
                  .build(),
            ],
          ),
        ),
      ),
    );
  }
}

