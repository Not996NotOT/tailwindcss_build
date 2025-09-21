import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

import 'code_example_widget.dart';

class BorderRadiusDemo extends StatelessWidget {
  const BorderRadiusDemo({super.key});

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
                colors: [Colors.orange, Colors.pink],
              ),
            ),
            child: const Column(
              children: [
                Icon(
                  Icons.rounded_corner,
                  size: 48,
                  color: Colors.white,
                ),
                SizedBox(height: 12),
                Text(
                  'Border Radius 圆角',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '控制元素的圆角，创造更美观的界面设计',
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
          
          // 基础圆角
          _buildSection(
            title: '1. 基础圆角 (rounded-xs 到 rounded-4xl)',
            description: 'Tailwind CSS 标准圆角尺寸，从最小到最大',
            child: Column(
              children: [
                // 第一行
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _buildRadiusCard('xs', '2px', Colors.blue[200]!).roundedXs(),
                    _buildRadiusCard('sm', '4px', Colors.green[200]!).roundedSm(),
                    _buildRadiusCard('md', '6px', Colors.orange[200]!).roundedMd(),
                    _buildRadiusCard('lg', '8px', Colors.purple[200]!).roundedLg(),
                  ],
                ),
                const SizedBox(height: 10),
                // 第二行
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _buildRadiusCard('xl', '12px', Colors.teal[200]!).roundedXl(),
                    _buildRadiusCard('2xl', '16px', Colors.pink[200]!).rounded2xl(),
                    _buildRadiusCard('3xl', '24px', Colors.cyan[200]!).rounded3xl(),
                    _buildRadiusCard('4xl', '32px', Colors.amber[200]!).rounded4xl(),
                  ],
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 特殊圆角
          _buildSection(
            title: '2. 特殊圆角',
            description: '特殊用途的圆角：无圆角和完全圆形',
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.grey[300],
                    child: const Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('rounded-none', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('无圆角', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ).roundedNone(),
                ),
                const SizedBox(width: 16),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.amber[200],
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('rounded-full', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('完全圆形', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ).roundedFull(),
              ],
            ),
          ),
          
          const SizedBox(height: 16),
          
          // 基础圆角代码示例
          CodeExampleWidget(
            title: '基础圆角 - 示例代码',
            code: '''// 基础圆角尺寸
Container(
  width: 100,
  height: 60,
  color: Colors.blue,
  child: Center(child: Text('rounded-sm')),
).roundedSm()

Container(
  width: 100,
  height: 60,
  color: Colors.green,
  child: Center(child: Text('rounded-lg')),
).roundedLg()

// 特殊圆角
Container(
  width: 100,
  height: 60,
  color: Colors.orange,
  child: Center(child: Text('rounded-full')),
).roundedFull()

// 无圆角
Container(
  width: 100,
  height: 60,
  color: Colors.red,
  child: Center(child: Text('rounded-none')),
).roundedNone()

// 自定义圆角
Container(
  width: 100,
  height: 60,
  color: Colors.purple,
  child: Center(child: Text('custom')),
).roundedCustom(20)''',
          ),
          
          const SizedBox(height: 24),
          
          // 方向性圆角
          _buildSection(
            title: '3. 方向性圆角',
            description: '控制特定边的圆角，适用于连接的界面元素',
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.blue[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.keyboard_arrow_up, size: 20),
                              Text('rounded-t', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('顶部圆角', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).roundedTLg(),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.green[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.keyboard_arrow_right, size: 20),
                              Text('rounded-r', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('右侧圆角', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).roundedRLg(),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.orange[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.keyboard_arrow_down, size: 20),
                              Text('rounded-b', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('底部圆角', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).roundedBLg(),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.purple[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.keyboard_arrow_left, size: 20),
                              Text('rounded-l', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('左侧圆角', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).roundedLLg(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 单个角圆角
          _buildSection(
            title: '4. 单个角圆角',
            description: '精确控制每个角的圆角，适用于复杂布局',
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.blue[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('rounded-tl', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('左上角', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).roundedTlXl(),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.green[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('rounded-tr', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('右上角', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).roundedTrXl(),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.orange[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('rounded-bl', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('左下角', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).roundedBlXl(),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.purple[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('rounded-br', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('右下角', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).roundedBrXl(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 简化API
          _buildSection(
            title: '5. 简化API',
            description: '更简洁的圆角API，快速开发必备',
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.purple[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('r(15)', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('自定义15px', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).r(15),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.teal[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('r12()', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('快捷12px', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).r12(),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.pink[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('rTop(20)', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('顶部20px', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).rTop(20),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.cyan[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('rOnly', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              Text('指定角', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ).rOnly(topLeft: 25, bottomRight: 25),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // RTL支持
          _buildSection(
            title: '6. RTL支持 (逻辑属性)',
            description: '支持从右到左的文本方向，国际化必备',
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
                    'roundedS() - 开始边圆角',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      // LTR示例
                      Expanded(
                        child: Column(
                          children: [
                            const Text('LTR (左到右)', style: TextStyle(fontWeight: FontWeight.bold)),
                            const SizedBox(height: 8),
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Container(
                                height: 60,
                                color: Colors.blue[200],
                                child: const Center(
                                  child: Text('start = left', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                ),
                              ).roundedSLg(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      // RTL示例
                      Expanded(
                        child: Column(
                          children: [
                            const Text('RTL (右到左)', style: TextStyle(fontWeight: FontWeight.bold)),
                            const SizedBox(height: 8),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Container(
                                height: 60,
                                color: Colors.green[200],
                                child: const Center(
                                  child: Text('start = right', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                ),
                              ).roundedSLg(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ).roundedLg(),
          ),
          
          const SizedBox(height: 24),
          
          // 实际应用场景
          _buildSection(
            title: '7. 实际应用场景',
            description: '在真实项目中的使用示例，结合宽高比和其他工具类',
            child: Column(
              children: [
                // 用户卡片
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.purple, Colors.blue],
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.person,
                              size: 30,
                              color: Colors.grey,
                            ),
                          ).roundedFull(),
                          const SizedBox(width: 16),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flutter Developer',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '使用 .roundedFull() 创建圆形头像',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        height: 100,
                        color: Colors.white.withOpacity(0.2),
                        child: const Center(
                          child: Text(
                            '内容区域\n使用 .roundedLg() 创建圆角',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ).roundedLg(),
                    ],
                  ),
                ).roundedXl(),
                
                const SizedBox(height: 16),
                
                // 按钮组
                Container(
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
                        '按钮组合示例',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      
                      // 连接的按钮组
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              color: Colors.blue[500],
                              child: const Center(
                                child: Text(
                                  '左按钮',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ).roundedLMd(),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              color: Colors.blue[400],
                              child: const Center(
                                child: Text(
                                  '中按钮',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              color: Colors.blue[500],
                              child: const Center(
                                child: Text(
                                  '右按钮',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ).roundedRMd(),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 8),
                      Text(
                        '使用 .roundedL() 和 .roundedR() 创建连接的按钮组',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ).roundedLg(),
                
                const SizedBox(height: 16),
                
                // 图片画廊
                Container(
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
                        '图片画廊 - 组合宽高比和圆角',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      
                      // 大图
                      Container(
                        width: double.infinity,
                        color: Colors.teal[200],
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.landscape, size: 40, color: Colors.white),
                              SizedBox(height: 8),
                              Text(
                                '16:9 风景照片',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ).aspectVideo().roundedLg(),
                      
                      const SizedBox(height: 12),
                      
                      // 小图网格
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.orange[200],
                              child: const Center(
                                child: Icon(Icons.photo, color: Colors.white, size: 24),
                              ),
                            ).aspectSquare().roundedMd(),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              color: Colors.purple[200],
                              child: const Center(
                                child: Icon(Icons.camera_alt, color: Colors.white, size: 24),
                              ),
                            ).aspectSquare().roundedMd(),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              color: Colors.pink[200],
                              child: const Center(
                                child: Icon(Icons.collections, color: Colors.white, size: 24),
                              ),
                            ).aspectSquare().roundedMd(),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 8),
                      Text(
                        '组合使用 .aspectSquare() 和 .roundedMd() 创建统一的图片网格',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ).roundedLg(),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 使用说明
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.orange[50],
              border: Border.all(color: Colors.orange[200]!),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.info_outline, color: Colors.orange[700], size: 24),
                    const SizedBox(width: 8),
                    Text(
                      '使用说明',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange[700],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _buildTip('• 基础圆角: .roundedXs() 到 .rounded4xl()', Colors.orange[700]!),
                _buildTip('• 特殊圆角: .roundedNone(), .roundedFull()', Colors.orange[700]!),
                _buildTip('• 方向圆角: .roundedT(), .roundedR(), .roundedB(), .roundedL()', Colors.orange[700]!),
                _buildTip('• 单角圆角: .roundedTl(), .roundedTr(), .roundedBl(), .roundedBr()', Colors.orange[700]!),
                _buildTip('• 逻辑属性: .roundedS(), .roundedE() (支持RTL)', Colors.orange[700]!),
                _buildTip('• 简化API: .r(radius), .rTop(), .rOnly() 等', Colors.orange[700]!),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.orange[100],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.lightbulb_outline, color: Colors.orange[700], size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          '提示：圆角可以与宽高比、尺寸、颜色等工具类完美组合，创造丰富的视觉层次。',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.orange[700],
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

  Widget _buildRadiusCard(String size, String px, Color color) {
    return Container(
      width: 80,
      height: 60,
      color: color,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              size,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Text(
              px,
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
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
