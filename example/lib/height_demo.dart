import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

import 'code_example_widget.dart';

class HeightDemo extends StatelessWidget {
  const HeightDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 页面标题
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.orange],
              ),
            ),
            child: const Column(
              children: [
                Icon(
                  Icons.height,
                  size: 48,
                  color: Colors.white,
                ),
                SizedBox(height: 12),
                Text(
                  'Height 高度控制',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '精确控制元素高度，支持固定值、百分比和视口单位',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ).roundedXl(),
          
          const SizedBox(height: 24),
          
          // 固定高度
          _buildSection(
            title: '1. 固定高度 (h-<number>)',
            description: 'Tailwind CSS 标准间距系统，基于4px的倍数',
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                children: [
                  const Text(
                    '基础高度演示（横向对比）',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  
                  // 小尺寸高度
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildHeightCard('h-0', '0px', Colors.grey[300]!).h0(),
                      _buildHeightCard('h-1', '4px', Colors.blue[200]!).h1(),
                      _buildHeightCard('h-2', '8px', Colors.green[200]!).h2(),
                      _buildHeightCard('h-3', '12px', Colors.orange[200]!).h3(),
                      _buildHeightCard('h-4', '16px', Colors.purple[200]!).h4(),
                    ],
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // 中等尺寸高度
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildHeightCard('h-6', '24px', Colors.teal[200]!).h6(),
                      _buildHeightCard('h-8', '32px', Colors.pink[200]!).h8(),
                      _buildHeightCard('h-10', '40px', Colors.cyan[200]!).h10(),
                      _buildHeightCard('h-12', '48px', Colors.amber[200]!).h12(),
                    ],
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // 大尺寸高度
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildHeightCard('h-16', '64px', Colors.indigo[200]!).h16(),
                      _buildHeightCard('h-20', '80px', Colors.red[200]!).h20(),
                      _buildHeightCard('h-24', '96px', Colors.lime[200]!).h24(),
                    ],
                  ),
                ],
              ),
            ).roundedLg(),
          ),
          
          const SizedBox(height: 16),
          
          // 固定高度代码示例
          CodeExampleWidget(
            title: '固定高度 - 示例代码',
            code: '''// 基础固定高度
Container(
  width: 100,
  color: Colors.blue,
  child: Center(child: Text('h-4 (16px)')),
).h4()

Container(
  width: 100,
  color: Colors.green,
  child: Center(child: Text('h-8 (32px)')),
).h8()

Container(
  width: 100,
  color: Colors.red,
  child: Center(child: Text('h-16 (64px)')),
).h16()

// 大尺寸高度
Container(
  width: 100,
  color: Colors.purple,
  child: Center(child: Text('h-32 (128px)')),
).h32()

Container(
  width: 100,
  color: Colors.orange,
  child: Center(child: Text('h-96 (384px)')),
).h96()''',
          ),
          
          const SizedBox(height: 24),
          
          // 百分比高度
          _buildSection(
            title: '2. 百分比高度 (h-<fraction>)',
            description: '基于父容器的百分比高度，适用于响应式布局',
            child: Container(
              width: double.infinity,
              height: 300,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                children: [
                  const Text(
                    '300px 高度容器内的百分比高度演示',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  
                  Expanded(
                    child: Row(
                      children: [
                        // 1/2 高度
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: Colors.blue[50],
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: Colors.blue[300],
                                  child: const Center(
                                    child: Text('h-1/2 (50%)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                                  ),
                                ).hHalf().roundedMd(),
                                const SizedBox(height: 8),
                                const Text('使用 .hHalf()', style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ).roundedMd(),
                        ),
                        
                        const SizedBox(width: 12),
                        
                        // 1/3 和 2/3
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: Colors.green[50],
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: Colors.green[300],
                                  child: const Center(
                                    child: Text('h-1/3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                                  ),
                                ).h1Of3().roundedMd(),
                                const SizedBox(height: 4),
                                Container(
                                  width: double.infinity,
                                  color: Colors.green[400],
                                  child: const Center(
                                    child: Text('h-2/3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                                  ),
                                ).h2Of3().roundedMd(),
                              ],
                            ),
                          ).roundedMd(),
                        ),
                        
                        const SizedBox(width: 12),
                        
                        // 1/4 组合
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: Colors.orange[50],
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: Colors.orange[300],
                                  child: const Center(
                                    child: Text('1/4', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11)),
                                  ),
                                ).h1Of4().roundedMd(),
                                const SizedBox(height: 2),
                                Container(
                                  width: double.infinity,
                                  color: Colors.orange[400],
                                  child: const Center(
                                    child: Text('1/4', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11)),
                                  ),
                                ).h1Of4().roundedMd(),
                                const SizedBox(height: 2),
                                Container(
                                  width: double.infinity,
                                  color: Colors.orange[500],
                                  child: const Center(
                                    child: Text('2/4', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11)),
                                  ),
                                ).h2Of4().roundedMd(),
                              ],
                            ),
                          ).roundedMd(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ).roundedLg(),
          ),
          
          const SizedBox(height: 24),
          
          // 特殊高度
          _buildSection(
            title: '3. 特殊高度',
            description: '自动、全高、视口高度等特殊用途的高度设置',
            child: Column(
              children: [
                // h-auto
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  color: Colors.purple[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('h-auto - 自动高度', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.all(16),
                        color: Colors.purple[300],
                        child: const Text(
                          '这是一个自适应内容高度的容器，高度由内容决定。可以包含多行文本和其他元素。',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ).hAuto().roundedMd(),
                      const SizedBox(height: 4),
                      const Text('内容决定高度，使用 .hAuto()', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ).roundedMd(),
                
                const SizedBox(height: 12),
                
                // h-full
                Container(
                  width: double.infinity,
                  height: 150,
                  padding: const EdgeInsets.all(12),
                  color: Colors.teal[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('h-full - 全高', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Expanded(
                        child: Container(
                          width: 200,
                          color: Colors.teal[300],
                          child: const Center(
                            child: Text('填满父容器高度', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ),
                        ).hFull().roundedMd(),
                      ),
                      const SizedBox(height: 4),
                      const Text('填满父容器，使用 .hFull()', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ).roundedMd(),
                
                const SizedBox(height: 12),
                
                // h-screen
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  color: Colors.pink[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('h-screen - 视口高度', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Container(
                        width: 200,
                        height: 100, // 限制演示高度
                        color: Colors.pink[300],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('100vh 视口高度', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                              Text('(演示中限制高度)', style: TextStyle(color: Colors.white70, fontSize: 10)),
                            ],
                          ),
                        ),
                      ).roundedMd(),
                      const SizedBox(height: 4),
                      const Text('等于屏幕高度，使用 .hScreen()', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ).roundedMd(),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 视口单位
          _buildSection(
            title: '4. 视口单位',
            description: '动态视口、大视口、小视口等现代CSS单位',
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '视口单位说明',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          color: Colors.blue[100],
                          child: const Column(
                            children: [
                              Text('hDvh()', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                              SizedBox(height: 4),
                              Text('动态视口高度', style: TextStyle(fontSize: 10)),
                              Text('100dvh', style: TextStyle(fontSize: 10, color: Colors.grey)),
                            ],
                          ),
                        ).roundedMd(),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          color: Colors.green[100],
                          child: const Column(
                            children: [
                              Text('hLvh()', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                              SizedBox(height: 4),
                              Text('大视口高度', style: TextStyle(fontSize: 10)),
                              Text('100lvh', style: TextStyle(fontSize: 10, color: Colors.grey)),
                            ],
                          ),
                        ).roundedMd(),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          color: Colors.orange[100],
                          child: const Column(
                            children: [
                              Text('hSvh()', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                              SizedBox(height: 4),
                              Text('小视口高度', style: TextStyle(fontSize: 10)),
                              Text('100svh', style: TextStyle(fontSize: 10, color: Colors.grey)),
                            ],
                          ),
                        ).roundedMd(),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 12),
                  
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('说明：', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                        SizedBox(height: 4),
                        Text('• dvh: 动态视口高度，考虑移动端浏览器UI变化', style: TextStyle(fontSize: 11)),
                        Text('• lvh: 大视口高度，浏览器UI隐藏时的高度', style: TextStyle(fontSize: 11)),
                        Text('• svh: 小视口高度，浏览器UI显示时的高度', style: TextStyle(fontSize: 11)),
                      ],
                    ),
                  ).roundedMd(),
                ],
              ),
            ).roundedLg(),
          ),
          
          const SizedBox(height: 24),
          
          // 自定义高度
          _buildSection(
            title: '5. 自定义高度',
            description: '使用简洁API设置任意高度值',
            child: Column(
              children: [
                // h() 方法
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  color: Colors.amber[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('h(double) - 自定义高度', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 60,
                            color: Colors.amber[300],
                            child: const Center(
                              child: Text('h(30)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10)),
                            ),
                          ).h(30).roundedMd(),
                          Container(
                            width: 60,
                            color: Colors.amber[400],
                            child: const Center(
                              child: Text('h(60)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10)),
                            ),
                          ).h(60).roundedMd(),
                          Container(
                            width: 60,
                            color: Colors.amber[500],
                            child: const Center(
                              child: Text('h(90)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10)),
                            ),
                          ).h(90).roundedMd(),
                          Container(
                            width: 60,
                            color: Colors.amber[600],
                            child: const Center(
                              child: Text('h(120)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 9)),
                            ),
                          ).h(120).roundedMd(),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text('使用 .h(double) 设置精确高度', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ).roundedMd(),
                
                const SizedBox(height: 12),
                
                // hCustom() 方法
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('hCustom(double) - 别名方法', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Container(
                        width: 200,
                        color: Colors.cyan[300],
                        child: const Center(
                          child: Text('hCustom(80)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ).hCustom(80).roundedMd(),
                      const SizedBox(height: 4),
                      const Text('与 .h() 相同，提供更明确的方法名', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ).roundedMd(),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 实际应用场景
          _buildSection(
            title: '6. 实际应用场景',
            description: '在真实项目中的使用示例，结合宽度、圆角等工具类',
            child: Column(
              children: [
                // 导航栏
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey[300]!),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '应用界面布局',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      
                      // 顶部导航栏
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.blue, Colors.purple],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              const Icon(Icons.menu, color: Colors.white),
                              const SizedBox(width: 16),
                              const Text('应用标题', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                              const Spacer(),
                              Container(
                                width: 32,
                                color: Colors.white.withOpacity(0.2),
                                child: const Icon(Icons.person, color: Colors.white, size: 20),
                              ).roundedFull().h(32),
                            ],
                          ),
                        ),
                      ).h(56).roundedLg(), // 标准导航栏高度
                      
                      const SizedBox(height: 16),
                      
                      // 内容区域
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          border: Border.all(color: Colors.grey[200]!),
                        ),
                        child: Column(
                          children: [
                            // 搜索栏
                            Container(
                              width: double.infinity,
                              color: Colors.white,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  children: [
                                    Icon(Icons.search, color: Colors.grey),
                                    SizedBox(width: 12),
                                    Text('搜索...', style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ).h(48).roundedMd(),
                            
                            const SizedBox(height: 12),
                            
                            // 卡片列表
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(16),
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    color: Colors.blue[200],
                                    child: const Icon(Icons.image, color: Colors.white),
                                  ).aspectSquare().roundedMd(),
                                  const SizedBox(width: 12),
                                  const Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('卡片标题', style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text('这是卡片的描述内容...', style: TextStyle(fontSize: 12, color: Colors.grey)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ).h(80).roundedLg(),
                            
                            const SizedBox(height: 8),
                            
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(16),
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    color: Colors.green[200],
                                    child: const Icon(Icons.article, color: Colors.white),
                                  ).aspectSquare().roundedMd(),
                                  const SizedBox(width: 12),
                                  const Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('另一个卡片', style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text('更多内容描述...', style: TextStyle(fontSize: 12, color: Colors.grey)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ).h(80).roundedLg(),
                          ],
                        ),
                      ).h(240).roundedLg(),
                      
                      const SizedBox(height: 16),
                      
                      // 底部操作栏
                      Container(
                        width: double.infinity,
                        color: Colors.grey[100],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.home, color: Colors.blue[600]),
                                const SizedBox(height: 4),
                                Text('首页', style: TextStyle(fontSize: 10, color: Colors.blue[600])),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.explore, color: Colors.grey[600]),
                                const SizedBox(height: 4),
                                Text('发现', style: TextStyle(fontSize: 10, color: Colors.grey[600])),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.favorite, color: Colors.grey[600]),
                                const SizedBox(height: 4),
                                Text('收藏', style: TextStyle(fontSize: 10, color: Colors.grey[600])),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.person, color: Colors.grey[600]),
                                const SizedBox(height: 4),
                                Text('我的', style: TextStyle(fontSize: 10, color: Colors.grey[600])),
                              ],
                            ),
                          ],
                        ),
                      ).h(64).roundedLg(), // 底部导航栏高度
                      
                      const SizedBox(height: 8),
                      Text(
                        '完整界面布局：.h(56) 导航栏，.h(48) 搜索栏，.h(80) 卡片，.h(64) 底栏',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ).roundedXl(),
                
                const SizedBox(height: 16),
                
                // 图表示例
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey[300]!),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '数据可视化图表',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      
                      // 柱状图
                      Container(
                        width: double.infinity,
                        height: 200,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          border: Border.all(color: Colors.grey[200]!),
                        ),
                        child: Column(
                          children: [
                            const Text('销售数据柱状图', style: TextStyle(fontWeight: FontWeight.bold)),
                            const SizedBox(height: 16),
                            
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  _buildBarChart('Q1', '85%', 0.85, Colors.blue),
                                  _buildBarChart('Q2', '92%', 0.92, Colors.green),
                                  _buildBarChart('Q3', '78%', 0.78, Colors.orange),
                                  _buildBarChart('Q4', '96%', 0.96, Colors.purple),
                                ],
                              ),
                            ),
                            
                            const SizedBox(height: 8),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Q1', style: TextStyle(fontSize: 12)),
                                Text('Q2', style: TextStyle(fontSize: 12)),
                                Text('Q3', style: TextStyle(fontSize: 12)),
                                Text('Q4', style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ],
                        ),
                      ).roundedLg(),
                      
                      const SizedBox(height: 8),
                      Text(
                        '使用百分比高度 .hCustom() 创建动态柱状图',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ).roundedXl(),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 使用说明
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.red[50],
              border: Border.all(color: Colors.red[200]!),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.info_outline, color: Colors.red[700], size: 24),
                    const SizedBox(width: 8),
                    Text(
                      '使用说明',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[700],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _buildTip('• 固定高度: .h0() 到 .h96() - 基于4px间距系统', Colors.red[700]!),
                _buildTip('• 百分比高度: .hHalf(), .h1Of3(), .h2Of3(), .h1Of4() 等', Colors.red[700]!),
                _buildTip('• 特殊高度: .hAuto(), .hFull(), .hScreen()', Colors.red[700]!),
                _buildTip('• 视口单位: .hDvh(), .hLvh(), .hSvh()', Colors.red[700]!),
                _buildTip('• 自定义高度: .h(double), .hCustom(double)', Colors.red[700]!),
                _buildTip('• 最小/最大高度: .minH(), .maxH()', Colors.red[700]!),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.lightbulb_outline, color: Colors.red[700], size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          '提示：高度工具类经常与宽度、宽高比、圆角等组合使用，创建精确的界面布局和视觉层次。',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red[700],
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ).roundedMd(),
              ],
            ),
          ).roundedXl(),
        ],
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required String description,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 16),
        child,
      ],
    );
  }

  Widget _buildHeightCard(String className, String size, Color color) {
    return Container(
      width: 50,
      color: color,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                className,
                style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
              ),
              Text(
                size,
                style: const TextStyle(fontSize: 7),
              ),
            ],
          ),
        ),
      ),
    ).roundedMd();
  }

  Widget _buildBarChart(String label, String percentage, double height, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(percentage, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Container(
          width: 40,
          color: color,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
        ).hCustom(120 * height).roundedTMd(), // 120px 为最大高度
      ],
    );
  }

  Widget _buildTip(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: color,
        ),
      ),
    );
  }
}
