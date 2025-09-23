import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

import 'aspect_ratio_demo.dart';
import 'border_radius_demo.dart';
import 'chat/chat_list_demo.dart';
import 'colors_demo.dart';
import 'height_demo.dart';
import 'width_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tailwind CSS Build Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
        ),
        useMaterial3: true,
      ),
      home: const DemoHomePage(),
    );
  }
}

class DemoHomePage extends StatelessWidget {
  const DemoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tailwind CSS Build 演示'),
          centerTitle: true,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home), text: '首页'),
              Tab(icon: Icon(Icons.aspect_ratio), text: '宽高比'),
              Tab(icon: Icon(Icons.rounded_corner), text: '圆角'),
              Tab(icon: Icon(Icons.width_full), text: '宽度'),
              Tab(icon: Icon(Icons.height), text: '高度'),
              Tab(icon: Icon(Icons.palette), text: '颜色'),
              Tab(icon: Icon(Icons.chat), text: '聊天列表'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeDemo(),
            AspectRatioDemo(),
            BorderRadiusDemo(),
            WidthDemo(),
            HeightDemo(),
            ColorsDemo(),
            ChatListDemo(),
          ],
        ),
      ),
    );
  }
}

class HomeDemo extends StatelessWidget {
  const HomeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 欢迎标题
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                    ),
                  ),
                  child: const Icon(
                    Icons.flutter_dash,
                    color: Colors.white,
                    size: 40,
                  ),
                ).roundedFull(),
                const SizedBox(height: 16),
                const Text(
                  'Tailwind CSS Build',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Flutter版本的Tailwind CSS工具类库',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ).roundedXl(),
          
          const SizedBox(height: 24),
          
          // 功能概述
          const Text(
            '功能概述',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          
          // 功能卡片网格
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.2,
            children: [
              _buildFeatureCard(
                icon: Icons.aspect_ratio,
                title: '宽高比',
                description: 'aspect-ratio\n控制元素宽高比',
                color: Colors.blue,
              ),
              _buildFeatureCard(
                icon: Icons.rounded_corner,
                title: '圆角',
                description: 'border-radius\n控制元素圆角',
                color: Colors.green,
              ),
              _buildFeatureCard(
                icon: Icons.width_full,
                title: '宽度',
                description: 'width\n控制元素宽度',
                color: Colors.orange,
              ),
              _buildFeatureCard(
                icon: Icons.height,
                title: '高度',
                description: 'height\n控制元素高度',
                color: Colors.red,
              ),
              _buildFeatureCard(
                icon: Icons.palette,
                title: '颜色',
                description: 'colors\nTailwind颜色系统',
                color: Colors.purple,
              ),
              _buildFeatureCard(
                icon: Icons.chat,
                title: '聊天列表',
                description: '完整示例\n语法糖应用',
                color: Colors.teal,
              ),
              _buildFeatureCard(
                icon: Icons.code,
                title: '语法糖演示',
                description: '新语法\n简化调用',
                color: Colors.indigo,
              ),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // 快速开始
          const Text(
            '快速开始',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '1. 添加依赖',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                  child: const Text(
                    'dependencies:\n  tailwindcss_build: ^0.2.1',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ).roundedMd(),
                
                const SizedBox(height: 16),
                
                const Text(
                  '2. 导入使用',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                  child: const Text(
                    "import 'package:tailwindcss_build/tailwindcss_build.dart';\n\n// 使用圆角\nContainer().roundedLg()\n\n// 使用宽高比\nWidget().aspectVideo()\n\n// 使用尺寸\nWidget().w(200).h(100)",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'monospace',
                      fontSize: 14,
                    ),
                  ),
                ).roundedMd(),
              ],
            ),
          ).roundedLg(),
          
          const SizedBox(height: 24),
          
          // 实时演示
          const Text(
            '实时演示',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          
          // 组合效果演示
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  '组合效果演示',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                
                // 演示卡片
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.purple],
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              color: Colors.white,
                              child: const Icon(Icons.star, color: Colors.amber),
                            ).roundedFull(),
                            const SizedBox(height: 8),
                            const Text(
                              '圆形图标',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ).roundedLg(),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.green[100],
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 40,
                              color: Colors.green[300],
                              child: const Center(
                                child: Text('16:9视频'),
                              ),
                            ).aspectVideo().roundedMd(),
                            const SizedBox(height: 8),
                            const Text(
                              '视频比例',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ).roundedLg(),
                    ),
                  ],
                ),
                
                const SizedBox(height: 12),
                
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                        ),
                        child: const Center(
                          child: Text(
                            '左上角\n圆角',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ).roundedTlXl(),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                        ),
                        child: const Center(
                          child: Text(
                            '右下角\n圆角',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ).roundedBrXl(),
                    ),
                  ],
                ),
              ],
            ),
          ).roundedXl(),
          
          const SizedBox(height: 32),
          
          // 底部信息
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            child: const Column(
              children: [
                Text(
                  '🚀 点击上方标签页查看详细演示',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '每个标签页都展示了对应功能的完整用法和组合示例',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ).roundedLg(),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
            color: color,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ).roundedLg();
  }
}