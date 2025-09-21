import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

import 'code_example_widget.dart';

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({super.key});

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
                colors: [Colors.blue, Colors.cyan],
              ),
            ),
            child: const Column(
              children: [
                Icon(
                  Icons.aspect_ratio,
                  size: 48,
                  color: Colors.white,
                ),
                SizedBox(height: 12),
                Text(
                  'Aspect Ratio 宽高比',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '控制元素的宽高比例，常用于图片、视频等媒体内容',
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
          
          // 基础宽高比
          _buildSection(
            title: '1. 基础宽高比',
            description: '常用的标准宽高比，适用于不同场景',
            child: Column(
              children: [
                _buildRatioRow([
                  _buildRatioCard(
                    title: 'aspect-square',
                    subtitle: '1:1 正方形',
                    color: Colors.blue[100]!,
                    child: Container(
                      width: 120,
                      color: Colors.blue[200],
                      child: const Center(
                        child: Text('1:1', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ).aspectSquare().roundedMd(),
                  ),
                  _buildRatioCard(
                    title: 'aspect-video',
                    subtitle: '16:9 视频',
                    color: Colors.green[100]!,
                    child: Container(
                      width: 120,
                      color: Colors.green[200],
                      child: const Center(
                        child: Text('16:9', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ).aspectVideo().roundedMd(),
                  ),
                ]),
                const SizedBox(height: 12),
                _buildRatioRow([
                  _buildRatioCard(
                    title: 'aspect-4/3',
                    subtitle: '4:3 经典',
                    color: Colors.orange[100]!,
                    child: Container(
                      width: 120,
                      color: Colors.orange[200],
                      child: const Center(
                        child: Text('4:3', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ).aspect4_3().roundedMd(),
                  ),
                  _buildRatioCard(
                    title: 'aspect-3/2',
                    subtitle: '3:2 摄影',
                    color: Colors.purple[100]!,
                    child: Container(
                      width: 120,
                      color: Colors.purple[200],
                      child: const Center(
                        child: Text('3:2', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ).aspect3_2().roundedMd(),
                  ),
                ]),
              ],
            ),
          ),
          
          const SizedBox(height: 16),
          
          // 基础宽高比代码示例
          CodeExampleWidget(
            title: '基础宽高比 - 示例代码',
            code: '''// 正方形比例 (1:1)
Container(
  width: 120,
  color: Colors.blue,
  child: Center(child: Text('1:1')),
).aspectSquare()

// 视频比例 (16:9)
Container(
  width: 200,
  color: Colors.green,
  child: Center(child: Text('16:9')),
).aspectVideo()

// 经典显示器比例 (4:3)
Container(
  width: 160,
  color: Colors.orange,
  child: Center(child: Text('4:3')),
).aspect4_3()

// 摄影比例 (3:2)
Container(
  width: 150,
  color: Colors.purple,
  child: Center(child: Text('3:2')),
).aspect3_2()

// 自定义比例
Container(
  width: 200,
  color: Colors.red,
  child: Center(child: Text('自定义')),
).aspectRatio(2.5)  // 2.5:1 超宽屏''',
          ),
          
          const SizedBox(height: 24),
          
          // 竖屏宽高比
          _buildSection(
            title: '2. 竖屏宽高比',
            description: '适用于手机屏幕、竖版海报等场景',
            child: Row(
              children: [
                Expanded(
                  child: _buildRatioCard(
                    title: 'aspect-2/3',
                    subtitle: '2:3 竖版',
                    color: Colors.teal[100]!,
                    child: Container(
                      width: 100,
                      color: Colors.teal[200],
                      child: const Center(
                        child: Text('2:3', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ).aspect2_3().roundedMd(),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildRatioCard(
                    title: 'aspect-9/16',
                    subtitle: '9:16 手机',
                    color: Colors.pink[100]!,
                    child: Container(
                      width: 100,
                      color: Colors.pink[200],
                      child: const Center(
                        child: Text('9:16', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ).aspect9_16().roundedMd(),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildRatioCard(
                    title: 'aspect-4/5',
                    subtitle: '4:5 社交',
                    color: Colors.indigo[100]!,
                    child: Container(
                      width: 100,
                      color: Colors.indigo[200],
                      child: const Center(
                        child: Text('4:5', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ).aspect4_5().roundedMd(),
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 自定义宽高比
          _buildSection(
            title: '3. 自定义宽高比',
            description: '使用 aspectRatio(double) 创建任意比例',
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _buildRatioCard(
                        title: 'aspectRatio(1.5)',
                        subtitle: '1.5:1 自定义',
                        color: Colors.amber[100]!,
                        child: Container(
                          width: double.infinity,
                          color: Colors.amber[200],
                          child: const Center(
                            child: Text('1.5:1', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ).aspectRatio(1.5).roundedMd(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: _buildRatioCard(
                        title: 'aspectRatio(2.5)',
                        subtitle: '2.5:1 宽屏',
                        color: Colors.cyan[100]!,
                        child: Container(
                          width: double.infinity,
                          color: Colors.cyan[200],
                          child: const Center(
                            child: Text('2.5:1', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ).aspectRatio(2.5).roundedMd(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 实际应用场景
          _buildSection(
            title: '4. 实际应用场景',
            description: '在真实项目中的使用示例，结合其他工具类',
            child: Column(
              children: [
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
                        '图片画廊',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        children: [
                          Container(
                            color: Colors.blue[300],
                            child: const Icon(Icons.image, color: Colors.white, size: 24),
                          ).aspectSquare().roundedLg(),
                          Container(
                            color: Colors.green[300],
                            child: const Icon(Icons.photo, color: Colors.white, size: 24),
                          ).aspectSquare().roundedLg(),
                          Container(
                            color: Colors.orange[300],
                            child: const Icon(Icons.camera_alt, color: Colors.white, size: 24),
                          ).aspectSquare().roundedLg(),
                          Container(
                            color: Colors.purple[300],
                            child: const Icon(Icons.video_camera_back, color: Colors.white, size: 24),
                          ).aspectSquare().roundedLg(),
                          Container(
                            color: Colors.teal[300],
                            child: const Icon(Icons.photo_library, color: Colors.white, size: 24),
                          ).aspectSquare().roundedLg(),
                          Container(
                            color: Colors.pink[300],
                            child: const Icon(Icons.collections, color: Colors.white, size: 24),
                          ).aspectSquare().roundedLg(),
                        ],
                      ),
                    ],
                  ),
                ).roundedXl(),
                
                const SizedBox(height: 16),
                
                // 视频播放器
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
                        '视频播放器',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              color: Colors.grey[800],
                              child: const Center(
                                child: Text(
                                  '16:9 视频播放区域',
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ).aspectVideo(),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                              ),
                              child: const Icon(
                                Icons.play_arrow,
                                size: 36,
                                color: Colors.black87,
                              ),
                            ).roundedFull(),
                          ],
                        ),
                      ).roundedLg(),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            color: Colors.blue[300],
                            child: const Icon(Icons.person, color: Colors.white, size: 20),
                          ).roundedFull(),
                          const SizedBox(width: 12),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flutter Tailwind CSS Demo',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '使用 aspectVideo() 确保16:9比例',
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ).roundedXl(),
                
                const SizedBox(height: 16),
                
                // 卡片布局
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
                        '响应式卡片布局',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      
                      // 大卡片
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.purple, Colors.pink],
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              color: Colors.white.withOpacity(0.2),
                              child: const Center(
                                child: Text(
                                  '21:9 超宽屏横幅',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ).aspect21_9().roundedMd(),
                            const SizedBox(height: 12),
                            const Text(
                              '使用 aspect21_9() 创建超宽屏比例',
                              style: TextStyle(color: Colors.white70, fontSize: 12),
                            ),
                          ],
                        ),
                      ).roundedXl(),
                      
                      const SizedBox(height: 12),
                      
                      // 小卡片组合
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              color: Colors.blue[100],
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    color: Colors.blue[300],
                                    child: const Center(
                                      child: Icon(Icons.photo, color: Colors.white),
                                    ),
                                  ).aspect5_4().roundedMd(),
                                  const SizedBox(height: 8),
                                  const Text(
                                    '5:4 照片',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ).roundedLg(),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              color: Colors.green[100],
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    color: Colors.green[300],
                                    child: const Center(
                                      child: Icon(Icons.square, color: Colors.white),
                                    ),
                                  ).aspectSquare().roundedMd(),
                                  const SizedBox(height: 8),
                                  const Text(
                                    '1:1 方形',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ).roundedLg(),
                          ),
                        ],
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
              color: Colors.blue[50],
              border: Border.all(color: Colors.blue[200]!),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.info_outline, color: Colors.blue[700], size: 24),
                    const SizedBox(width: 8),
                    Text(
                      '使用说明',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[700],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _buildTip('• aspectSquare(): 1:1 正方形，适用于头像、图标'),
                _buildTip('• aspectVideo(): 16:9 视频比例，适用于视频播放器'),
                _buildTip('• aspect4_3(): 4:3 经典比例，适用于传统显示器'),
                _buildTip('• aspect3_2(): 3:2 摄影比例，适用于照片展示'),
                _buildTip('• aspect2_3(): 2:3 竖版比例，适用于海报、卡片'),
                _buildTip('• aspectRatio(double): 自定义比例，可设置任意数值'),
                _buildTip('• aspectAuto(): 自动适应内容（返回原始widget）'),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.lightbulb_outline, color: Colors.blue[700], size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          '提示：宽高比工具类可以与圆角、尺寸等其他工具类组合使用，创造更丰富的视觉效果。',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue[700],
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

  Widget _buildRatioRow(List<Widget> children) {
    return Row(
      children: children
          .expand((child) => [Expanded(child: child), const SizedBox(width: 12)])
          .toList()
        ..removeLast(),
    );
  }

  Widget _buildRatioCard({
    required String title,
    required String subtitle,
    required Color color,
    required Widget child,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: color,
      child: Column(
        children: [
          child,
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 10, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ).roundedLg();
  }

  Widget _buildTip(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: Colors.blue[700],
        ),
      ),
    );
  }
}
