import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

import 'code_example_widget.dart';

class WidthDemo extends StatelessWidget {
  const WidthDemo({super.key});

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
                colors: [Colors.green, Colors.teal],
              ),
            ),
            child: const Column(
              children: [
                Icon(
                  Icons.width_full,
                  size: 48,
                  color: Colors.white,
                ),
                SizedBox(height: 12),
                Text(
                  'Width 宽度控制',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '精确控制元素宽度，支持固定值、百分比和响应式设计',
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
          
          // 固定宽度
          _buildSection(
            title: '1. 固定宽度 (w-<number>)',
            description: 'Tailwind CSS 标准间距系统，基于4px的倍数',
            child: Column(
              children: [
                _buildWidthRow([
                  _buildWidthCard('w-0', '0px', Colors.grey[300]!).w0(),
                  _buildWidthCard('w-1', '4px', Colors.blue[200]!).w1(),
                  _buildWidthCard('w-2', '8px', Colors.green[200]!).w2(),
                  _buildWidthCard('w-3', '12px', Colors.orange[200]!).w3(),
                ]),
                const SizedBox(height: 12),
                _buildWidthRow([
                  _buildWidthCard('w-4', '16px', Colors.purple[200]!).w4(),
                  _buildWidthCard('w-6', '24px', Colors.teal[200]!).w6(),
                  _buildWidthCard('w-8', '32px', Colors.pink[200]!).w8(),
                  _buildWidthCard('w-10', '40px', Colors.cyan[200]!).w10(),
                ]),
                const SizedBox(height: 12),
                _buildWidthRow([
                  _buildWidthCard('w-16', '64px', Colors.amber[200]!).w16(),
                  _buildWidthCard('w-20', '80px', Colors.indigo[200]!).w20(),
                  _buildWidthCard('w-24', '96px', Colors.red[200]!).w24(),
                  _buildWidthCard('w-32', '128px', Colors.lime[200]!).w32(),
                ]),
              ],
            ),
          ),
          
          const SizedBox(height: 16),
          
          // 固定宽度代码示例
          CodeExampleWidget(
            title: '固定宽度 - 示例代码',
            code: '''// 基础固定宽度
Container(
  color: Colors.blue,
  child: Text('w-4 (16px)'),
).w4()

Container(
  color: Colors.green,
  child: Text('w-8 (32px)'),
).w8()

Container(
  color: Colors.red,
  child: Text('w-16 (64px)'),
).w16()

// 大尺寸宽度
Container(
  color: Colors.purple,
  child: Text('w-32 (128px)'),
).w32()

Container(
  color: Colors.orange,
  child: Text('w-96 (384px)'),
).w96()''',
          ),
          
          const SizedBox(height: 24),
          
          // 百分比宽度
          _buildSection(
            title: '2. 百分比宽度 (w-<fraction>)',
            description: '基于父容器的百分比宽度，适用于响应式布局',
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                children: [
                  const Text(
                    '容器内的百分比宽度演示',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  
                  // 1/2 宽度
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8),
                    color: Colors.blue[50],
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          color: Colors.blue[300],
                          child: const Center(
                            child: Text('w-1/2 (50%)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ),
                        ).wHalf().roundedMd(),
                        const SizedBox(height: 8),
                        const Text('使用 .wHalf() 或 .w1Of2()', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ).roundedMd(),
                  
                  const SizedBox(height: 12),
                  
                  // 1/3 和 2/3
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[50],
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              color: Colors.green[300],
                              child: const Center(
                                child: Text('w-1/3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                              ),
                            ).w1Of3().roundedMd(),
                            const SizedBox(width: 8),
                            Container(
                              height: 40,
                              color: Colors.green[400],
                              child: const Center(
                                child: Text('w-2/3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                              ),
                            ).w2Of3().roundedMd(),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text('使用 .w1Of3() 和 .w2Of3()', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ).roundedMd(),
                  
                  const SizedBox(height: 12),
                  
                  // 1/4 组合
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8),
                    color: Colors.orange[50],
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              color: Colors.orange[300],
                              child: const Center(
                                child: Text('1/4', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                              ),
                            ).w1Of4().roundedMd(),
                            const SizedBox(width: 4),
                            Container(
                              height: 40,
                              color: Colors.orange[400],
                              child: const Center(
                                child: Text('1/4', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                              ),
                            ).w1Of4().roundedMd(),
                            const SizedBox(width: 4),
                            Container(
                              height: 40,
                              color: Colors.orange[500],
                              child: const Center(
                                child: Text('2/4', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                              ),
                            ).w2Of4().roundedMd(),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text('四等分布局：.w1Of4() + .w1Of4() + .w2Of4()', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ).roundedMd(),
                ],
              ),
            ).roundedLg(),
          ),
          
          const SizedBox(height: 16),
          
          // 百分比宽度代码示例
          CodeExampleWidget(
            title: '百分比宽度 - 示例代码',
            code: '''// 基础百分比宽度
Container(
  color: Colors.blue,
  child: Text('50% 宽度'),
).wHalf()  // 或 .w1Of2()

Container(
  color: Colors.green,
  child: Text('33.33% 宽度'),
).w1Of3()

Container(
  color: Colors.red,
  child: Text('66.67% 宽度'),
).w2Of3()

// 响应式布局示例
Row(
  children: [
    Container(
      height: 60,
      color: Colors.orange,
      child: Center(child: Text('1/4')),
    ).w1Of4(),
    SizedBox(width: 8),
    Container(
      height: 60,
      color: Colors.purple,
      child: Center(child: Text('3/4')),
    ).w3Of4(),
  ],
)''',
          ),
          
          const SizedBox(height: 24),
          
          // 特殊宽度
          _buildSection(
            title: '3. 特殊宽度',
            description: '自动、全宽、视口宽度等特殊用途的宽度设置',
            child: Column(
              children: [
                // w-auto
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  color: Colors.purple[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('w-auto - 自动宽度', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        color: Colors.purple[300],
                        child: const Text('自适应内容宽度', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ).wAuto().roundedMd(),
                      const SizedBox(height: 4),
                      const Text('内容决定宽度，使用 .wAuto()', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ).roundedMd(),
                
                const SizedBox(height: 12),
                
                // w-full
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  color: Colors.teal[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('w-full - 全宽', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Container(
                        height: 40,
                        color: Colors.teal[300],
                        child: const Center(
                          child: Text('100% 宽度', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ).wFull().roundedMd(),
                      const SizedBox(height: 4),
                      const Text('填满父容器，使用 .wFull()', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ).roundedMd(),
                
                const SizedBox(height: 12),
                
                // w-screen
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  color: Colors.pink[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('w-screen - 视口宽度', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Container(
                        height: 40,
                        color: Colors.pink[300],
                        child: const Center(
                          child: Text('100vw 视口宽度', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ).wScreen().roundedMd(),
                      const SizedBox(height: 4),
                      const Text('等于屏幕宽度，使用 .wScreen()', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ).roundedMd(),
              ],
            ),
          ),
          
          const SizedBox(height: 16),
          
          // 特殊宽度代码示例
          CodeExampleWidget(
            title: '特殊宽度 - 示例代码',
            code: '''// 自动宽度（自适应内容）
Container(
  padding: EdgeInsets.all(8),
  color: Colors.blue,
  child: Text('自适应宽度'),
).wAuto()

// 全宽（100%）
Container(
  height: 50,
  color: Colors.green,
  child: Center(child: Text('全宽容器')),
).wFull()

// 屏幕宽度（100vw）
Container(
  height: 50,
  color: Colors.orange,
  child: Center(child: Text('屏幕宽度')),
).wScreen()

// 最小内容宽度
Container(
  color: Colors.purple,
  child: Text('最小宽度'),
).wMin()''',
          ),
          
          const SizedBox(height: 24),
          
          // 自定义宽度
          _buildSection(
            title: '4. 自定义宽度',
            description: '使用简洁API设置任意宽度值',
            child: Column(
              children: [
                // w() 方法
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  color: Colors.amber[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('w(double) - 自定义宽度', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            color: Colors.amber[300],
                            child: const Center(
                              child: Text('w(50)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                            ),
                          ).w(50).roundedMd(),
                          const SizedBox(width: 8),
                          Container(
                            height: 40,
                            color: Colors.amber[400],
                            child: const Center(
                              child: Text('w(100)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                            ),
                          ).w(100).roundedMd(),
                          const SizedBox(width: 8),
                          Container(
                            height: 40,
                            color: Colors.amber[500],
                            child: const Center(
                              child: Text('w(150)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                            ),
                          ).w(150).roundedMd(),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text('使用 .w(double) 设置精确宽度', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ).roundedMd(),
                
                const SizedBox(height: 12),
                
                // wCustom() 方法
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  color: Colors.cyan[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('wCustom(double) - 别名方法', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Container(
                        height: 40,
                        color: Colors.cyan[300],
                        child: const Center(
                          child: Text('wCustom(200)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ).wCustom(200).roundedMd(),
                      const SizedBox(height: 4),
                      const Text('与 .w() 相同，提供更明确的方法名', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ).roundedMd(),
              ],
            ),
          ),
          
          const SizedBox(height: 16),
          
          // 自定义宽度代码示例
          CodeExampleWidget(
            title: '自定义宽度 - 示例代码',
            code: '''// 使用 .w() 简洁语法
Container(
  height: 50,
  color: Colors.blue,
  child: Center(child: Text('w(120)')),
).w(120)

Container(
  height: 50,
  color: Colors.green,
  child: Center(child: Text('w(200)')),
).w(200)

// 使用 .wCustom() 明确语法
Container(
  height: 50,
  color: Colors.orange,
  child: Center(child: Text('wCustom(150)')),
).wCustom(150)

// 链式调用组合
Container(
  color: Colors.purple,
  child: Text('组合使用'),
).w(180).roundedLg()''',
          ),
          
          const SizedBox(height: 24),
          
          // 实际应用场景
          _buildSection(
            title: '5. 实际应用场景',
            description: '在真实项目中的使用示例，结合高度、圆角等工具类',
            child: Column(
              children: [
                // 表单布局
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
                        '用户注册表单',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      
                      // 用户名输入框
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('用户名', style: TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 4),
                          Container(
                            height: 40,
                            color: Colors.grey[100],
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('输入用户名', style: TextStyle(color: Colors.grey)),
                              ),
                            ),
                          ).wFull().roundedMd(),
                        ],
                      ),
                      
                      const SizedBox(height: 12),
                      
                      // 密码输入框（较短）
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('密码', style: TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 4),
                          Container(
                            height: 40,
                            color: Colors.grey[100],
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('••••••••', style: TextStyle(color: Colors.grey)),
                              ),
                            ),
                          ).w(200).roundedMd(),
                        ],
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // 按钮组
                      Row(
                        children: [
                          Container(
                            height: 40,
                            color: Colors.blue[500],
                            child: const Center(
                              child: Text('注册', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            ),
                          ).w(100).roundedMd(),
                          const SizedBox(width: 12),
                          Container(
                            height: 40,
                            color: Colors.grey[300],
                            child: const Center(
                              child: Text('取消', style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ).w(80).roundedMd(),
                        ],
                      ),
                      
                      const SizedBox(height: 8),
                      Text(
                        '组合使用：.wFull() 全宽输入框，.w(200) 固定宽度密码框，.w(100)/.w(80) 不同宽度按钮',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ).roundedXl(),
                
                const SizedBox(height: 16),
                
                // 响应式网格布局
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
                        '响应式卡片布局',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      
                      // 主卡片（全宽）
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.purple, Colors.blue],
                          ),
                        ),
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.star, color: Colors.white, size: 32),
                              SizedBox(height: 8),
                              Text(
                                '主要内容区域',
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '使用 .wFull() 占满容器宽度',
                                style: TextStyle(color: Colors.white70, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ).wFull().aspectVideo().roundedLg(),
                      
                      const SizedBox(height: 16),
                      
                      // 三列布局
                      Row(
                        children: [
                          Container(
                            height: 80,
                            color: Colors.green[200],
                            child: const Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.trending_up, size: 20),
                                  SizedBox(height: 4),
                                  Text('统计', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                  Text('1/3', style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ),
                          ).w1Of3().roundedMd(),
                          const SizedBox(width: 8),
                          Container(
                            height: 80,
                            color: Colors.orange[200],
                            child: const Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.notifications, size: 20),
                                  SizedBox(height: 4),
                                  Text('通知', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                  Text('1/3', style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ),
                          ).w1Of3().roundedMd(),
                          const SizedBox(width: 8),
                          Container(
                            height: 80,
                            color: Colors.pink[200],
                            child: const Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.settings, size: 20),
                                  SizedBox(height: 4),
                                  Text('设置', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                  Text('1/3', style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ),
                          ).w1Of3().roundedMd(),
                        ],
                      ),
                      
                      const SizedBox(height: 12),
                      
                      // 不等宽布局
                      Row(
                        children: [
                          Container(
                            height: 60,
                            color: Colors.teal[200],
                            child: const Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('侧边栏', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                  Text('1/4', style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ),
                          ).w1Of4().roundedMd(),
                          const SizedBox(width: 8),
                          Container(
                            height: 60,
                            color: Colors.indigo[200],
                            child: const Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('主内容', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                  Text('3/4', style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ),
                          ).w3Of4().roundedMd(),
                        ],
                      ),
                      
                      const SizedBox(height: 8),
                      Text(
                        '灵活布局：.w1Of3() 三等分，.w1Of4() + .w3Of4() 侧栏+主内容',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ).roundedXl(),
                
                const SizedBox(height: 16),
                
                // 进度条示例
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
                        '进度指示器',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      
                      // 技能进度条
                      Column(
                        children: [
                          _buildSkillBar(context, 'Flutter', '90%', 0.9, Colors.blue),
                          const SizedBox(height: 12),
                          _buildSkillBar(context, 'Dart', '85%', 0.85, Colors.green),
                          const SizedBox(height: 12),
                          _buildSkillBar(context, 'UI/UX', '75%', 0.75, Colors.orange),
                          const SizedBox(height: 12),
                          _buildSkillBar(context, 'API集成', '60%', 0.6, Colors.purple),
                        ],
                      ),
                      
                      const SizedBox(height: 8),
                      Text(
                        '使用百分比宽度创建动态进度条效果',
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
              color: Colors.green[50],
              border: Border.all(color: Colors.green[200]!),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.info_outline, color: Colors.green[700], size: 24),
                    const SizedBox(width: 8),
                    Text(
                      '使用说明',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _buildTip('• 固定宽度: .w0() 到 .w96() - 基于4px间距系统', Colors.green[700]!),
                _buildTip('• 百分比宽度: .wHalf(), .w1Of3(), .w2Of3(), .w1Of4() 等', Colors.green[700]!),
                _buildTip('• 特殊宽度: .wAuto(), .wFull(), .wScreen()', Colors.green[700]!),
                _buildTip('• 自定义宽度: .w(double), .wCustom(double)', Colors.green[700]!),
                _buildTip('• 最小/最大宽度: .minW(), .maxW()', Colors.green[700]!),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.lightbulb_outline, color: Colors.green[700], size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          '提示：宽度工具类可以与高度、圆角、宽高比等完美组合，创建响应式和美观的界面布局。',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green[700],
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

  Widget _buildWidthRow(List<Widget> children) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: children
            .expand((child) => [child, const SizedBox(width: 8)])
            .toList()
          ..removeLast(),
      ),
    );
  }

  Widget _buildWidthCard(String className, String size, Color color) {
    return Container(
      height: 60,
      color: color,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                className,
                style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Text(
                size,
                style: const TextStyle(fontSize: 8),
              ),
            ],
          ),
        ),
      ),
    ).roundedMd();
  }

  Widget _buildSkillBar(BuildContext context, String skill, String percentage, double width, Color color) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(skill, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(percentage, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 4),
        Container(
          width: double.infinity,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 8,
              color: color,
            ).wCustom(MediaQuery.of(context).size.width * 0.8 * width), // 近似百分比效果
          ),
        ).roundedFull(),
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
