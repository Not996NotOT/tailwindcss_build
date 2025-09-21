import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

import 'code_example_widget.dart';

class ColorsDemo extends StatelessWidget {
  const ColorsDemo({super.key});

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
                colors: [Colors.purple, Colors.pink],
              ),
            ),
            child: const Column(
              children: [
                Icon(
                  Icons.palette,
                  size: 48,
                  color: Colors.white,
                ),
                SizedBox(height: 12),
                Text(
                  'Colors 颜色系统',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Tailwind CSS 完整颜色系统，覆盖所有设计需求',
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
          
          // 主要颜色
          _buildSection(
            title: '1. 主要颜色',
            description: '基础的颜色系统，每种颜色有多个深浅度',
            child: Column(
              children: [
                _buildColorGroup('Blue 蓝色', [
                  _ColorInfo('blue-50', Colors.blue[50]!),
                  _ColorInfo('blue-100', Colors.blue[100]!),
                  _ColorInfo('blue-200', Colors.blue[200]!),
                  _ColorInfo('blue-300', Colors.blue[300]!),
                  _ColorInfo('blue-400', Colors.blue[400]!),
                  _ColorInfo('blue-500', Colors.blue[500]!),
                  _ColorInfo('blue-600', Colors.blue[600]!),
                  _ColorInfo('blue-700', Colors.blue[700]!),
                  _ColorInfo('blue-800', Colors.blue[800]!),
                  _ColorInfo('blue-900', Colors.blue[900]!),
                ]),
                
                const SizedBox(height: 16),
                
                _buildColorGroup('Green 绿色', [
                  _ColorInfo('green-50', Colors.green[50]!),
                  _ColorInfo('green-100', Colors.green[100]!),
                  _ColorInfo('green-200', Colors.green[200]!),
                  _ColorInfo('green-300', Colors.green[300]!),
                  _ColorInfo('green-400', Colors.green[400]!),
                  _ColorInfo('green-500', Colors.green[500]!),
                  _ColorInfo('green-600', Colors.green[600]!),
                  _ColorInfo('green-700', Colors.green[700]!),
                  _ColorInfo('green-800', Colors.green[800]!),
                  _ColorInfo('green-900', Colors.green[900]!),
                ]),
                
                const SizedBox(height: 16),
                
                _buildColorGroup('Red 红色', [
                  _ColorInfo('red-50', Colors.red[50]!),
                  _ColorInfo('red-100', Colors.red[100]!),
                  _ColorInfo('red-200', Colors.red[200]!),
                  _ColorInfo('red-300', Colors.red[300]!),
                  _ColorInfo('red-400', Colors.red[400]!),
                  _ColorInfo('red-500', Colors.red[500]!),
                  _ColorInfo('red-600', Colors.red[600]!),
                  _ColorInfo('red-700', Colors.red[700]!),
                  _ColorInfo('red-800', Colors.red[800]!),
                  _ColorInfo('red-900', Colors.red[900]!),
                ]),
              ],
            ),
          ),
          
          const SizedBox(height: 16),
          
          // 基础颜色代码示例
          CodeExampleWidget(
            title: '基础颜色 - 示例代码',
            code: '''// Tailwind CSS 颜色目前不支持直接扩展方法
// 使用 Flutter 标准颜色系统

// 蓝色系列
Container(
  width: 100,
  height: 60,
  color: Colors.blue[100],
  child: Center(child: Text('blue-100')),
)

Container(
  width: 100,
  height: 60,
  color: Colors.blue[500],
  child: Center(child: Text('blue-500')),
)

// 绿色系列
Container(
  width: 100,
  height: 60,
  color: Colors.green[200],
  child: Center(child: Text('green-200')),
)

// 红色系列
Container(
  width: 100,
  height: 60,
  color: Colors.red[400],
  child: Center(child: Text('red-400')),
)

// 组合使用颜色和工具类
Container(
  color: Colors.blue[100],
  child: Text('带圆角的彩色容器'),
).w(200).h(80).roundedLg()''',
          ),
          
          const SizedBox(height: 24),
          
          // 中性颜色
          _buildSection(
            title: '2. 中性颜色',
            description: '灰色系统，适用于文本、边框、背景等',
            child: Column(
              children: [
                _buildColorGroup('Grey 灰色', [
                  _ColorInfo('grey-50', Colors.grey[50]!),
                  _ColorInfo('grey-100', Colors.grey[100]!),
                  _ColorInfo('grey-200', Colors.grey[200]!),
                  _ColorInfo('grey-300', Colors.grey[300]!),
                  _ColorInfo('grey-400', Colors.grey[400]!),
                  _ColorInfo('grey-500', Colors.grey[500]!),
                  _ColorInfo('grey-600', Colors.grey[600]!),
                  _ColorInfo('grey-700', Colors.grey[700]!),
                  _ColorInfo('grey-800', Colors.grey[800]!),
                  _ColorInfo('grey-900', Colors.grey[900]!),
                ]),
                
                const SizedBox(height: 16),
                
                // 黑白颜色
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.white,
                        child: const Center(
                          child: Text('white', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ).roundedLg(),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.black,
                        child: const Center(
                          child: Text('black', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ).roundedLg(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 扩展颜色
          _buildSection(
            title: '3. 扩展颜色',
            description: '更多颜色选择，满足不同设计需求',
            child: Column(
              children: [
                // 橙色、紫色、青色
                Row(
                  children: [
                    Expanded(child: _buildColorPreview('Orange', Colors.orange[300]!)),
                    const SizedBox(width: 8),
                    Expanded(child: _buildColorPreview('Purple', Colors.purple[300]!)),
                    const SizedBox(width: 8),
                    Expanded(child: _buildColorPreview('Cyan', Colors.cyan[300]!)),
                  ],
                ),
                
                const SizedBox(height: 12),
                
                // 粉色、茶色、青色
                Row(
                  children: [
                    Expanded(child: _buildColorPreview('Pink', Colors.pink[300]!)),
                    const SizedBox(width: 8),
                    Expanded(child: _buildColorPreview('Teal', Colors.teal[300]!)),
                    const SizedBox(width: 8),
                    Expanded(child: _buildColorPreview('Indigo', Colors.indigo[300]!)),
                  ],
                ),
                
                const SizedBox(height: 12),
                
                // 黄色、青柠、琥珀
                Row(
                  children: [
                    Expanded(child: _buildColorPreview('Yellow', Colors.yellow[300]!)),
                    const SizedBox(width: 8),
                    Expanded(child: _buildColorPreview('Lime', Colors.lime[300]!)),
                    const SizedBox(width: 8),
                    Expanded(child: _buildColorPreview('Amber', Colors.amber[300]!)),
                  ],
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 实际应用场景
          _buildSection(
            title: '4. 实际应用场景',
            description: '在真实项目中的颜色使用示例，结合其他工具类',
            child: Column(
              children: [
                // 状态指示
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
                        '状态指示组件',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      
                      // 成功状态
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        color: Colors.green[50],
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.green[500],
                              child: const Icon(Icons.check, color: Colors.white),
                            ).roundedFull(),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('操作成功', style: TextStyle(color: Colors.green[700], fontWeight: FontWeight.bold)),
                                  Text('您的操作已经成功完成', style: TextStyle(color: Colors.green[600], fontSize: 12)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).roundedLg(),
                      
                      const SizedBox(height: 12),
                      
                      // 警告状态
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        color: Colors.orange[50],
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.orange[500],
                              child: const Icon(Icons.warning, color: Colors.white),
                            ).roundedFull(),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('注意警告', style: TextStyle(color: Colors.orange[700], fontWeight: FontWeight.bold)),
                                  Text('请检查您的输入信息', style: TextStyle(color: Colors.orange[600], fontSize: 12)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).roundedLg(),
                      
                      const SizedBox(height: 12),
                      
                      // 错误状态
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        color: Colors.red[50],
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.red[500],
                              child: const Icon(Icons.error, color: Colors.white),
                            ).roundedFull(),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('操作失败', style: TextStyle(color: Colors.red[700], fontWeight: FontWeight.bold)),
                                  Text('请重试或联系技术支持', style: TextStyle(color: Colors.red[600], fontSize: 12)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).roundedLg(),
                      
                      const SizedBox(height: 12),
                      
                      // 信息状态
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        color: Colors.blue[50],
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.blue[500],
                              child: const Icon(Icons.info, color: Colors.white),
                            ).roundedFull(),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('提示信息', style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold)),
                                  Text('这里是一些有用的提示信息', style: TextStyle(color: Colors.blue[600], fontSize: 12)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).roundedLg(),
                      
                      const SizedBox(height: 8),
                      Text(
                        '使用语义化颜色：绿色表示成功，橙色表示警告，红色表示错误，蓝色表示信息',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ).roundedXl(),
                
                const SizedBox(height: 16),
                
                // 按钮样式
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
                        '按钮颜色设计',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      
                      // 主要按钮
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 48,
                              color: Colors.blue[500],
                              child: const Center(
                                child: Text('主要操作', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              ),
                            ).roundedMd(),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Container(
                              height: 48,
                              color: Colors.green[500],
                              child: const Center(
                                child: Text('成功操作', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              ),
                            ).roundedMd(),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 12),
                      
                      // 次要按钮
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              child: const Center(
                                child: Text('次要操作', style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ).roundedMd(),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Container(
                              height: 48,
                              color: Colors.red[500],
                              child: const Center(
                                child: Text('危险操作', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              ),
                            ).roundedMd(),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 12),
                      
                      // 渐变按钮
                      Container(
                        width: double.infinity,
                        height: 48,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple, Colors.pink],
                          ),
                        ),
                        child: const Center(
                          child: Text('渐变按钮', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ).roundedMd(),
                      
                      const SizedBox(height: 8),
                      Text(
                        '按钮颜色层次：蓝色主要操作，绿色确认，灰色次要，红色危险，渐变突出',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ).roundedXl(),
                
                const SizedBox(height: 16),
                
                // 卡片主题
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
                        '主题色彩卡片',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      
                      // 主题卡片组
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 1.5,
                        children: [
                          _buildThemeCard('科技蓝', Icons.computer, Colors.blue, Colors.blue[50]!),
                          _buildThemeCard('自然绿', Icons.eco, Colors.green, Colors.green[50]!),
                          _buildThemeCard('活力橙', Icons.energy_savings_leaf, Colors.orange, Colors.orange[50]!),
                          _buildThemeCard('优雅紫', Icons.diamond, Colors.purple, Colors.purple[50]!),
                        ],
                      ),
                      
                      const SizedBox(height: 8),
                      Text(
                        '不同主题色彩搭配，创造独特的视觉风格',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ).roundedXl(),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // 颜色搭配指南
          _buildSection(
            title: '5. 颜色搭配指南',
            description: '合理的颜色搭配建议和最佳实践',
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 对比度示例
                  const Text(
                    '文本对比度',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  
                  Column(
                    children: [
                      // 良好对比度
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              color: Colors.green[500],
                              child: const Icon(Icons.check, color: Colors.white, size: 16),
                            ).roundedFull(),
                            const SizedBox(width: 12),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('良好对比度', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                                  Text('白色背景上的深色文字，易于阅读', style: TextStyle(fontSize: 12, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).roundedMd(),
                      
                      const SizedBox(height: 8),
                      
                      // 对比度不足
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        color: Colors.grey[200],
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              color: Colors.red[500],
                              child: const Icon(Icons.close, color: Colors.white, size: 16),
                            ).roundedFull(),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('对比度不足', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[400])),
                                  Text('浅色背景上的浅色文字，难以阅读', style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).roundedMd(),
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // 配色建议
                  const Text(
                    '配色建议',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildColorTip('• 主色调：选择1-2种主要颜色作为品牌色'),
                        _buildColorTip('• 中性色：大量使用灰色系作为背景和辅助色'),
                        _buildColorTip('• 强调色：少量使用鲜艳颜色突出重要内容'),
                        _buildColorTip('• 语义色：绿色成功、红色错误、黄色警告、蓝色信息'),
                        _buildColorTip('• 层次感：使用不同深浅度创建视觉层次'),
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
                                  '建议：60%中性色 + 30%主色调 + 10%强调色',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue[700],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ).roundedMd(),
                      ],
                    ),
                  ).roundedMd(),
                ],
              ),
            ).roundedLg(),
          ),
          
          const SizedBox(height: 24),
          
          // 使用说明
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.purple[50],
              border: Border.all(color: Colors.purple[200]!),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.info_outline, color: Colors.purple[700], size: 24),
                    const SizedBox(width: 8),
                    Text(
                      '使用说明',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[700],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _buildTip('• 基础颜色：Colors.blue, Colors.red, Colors.green 等', Colors.purple[700]!),
                _buildTip('• 深浅度：每种颜色有50-900的深浅度变化', Colors.purple[700]!),
                _buildTip('• 中性色：Colors.grey, Colors.white, Colors.black', Colors.purple[700]!),
                _buildTip('• 扩展色：Colors.purple, Colors.orange, Colors.cyan 等', Colors.purple[700]!),
                _buildTip('• 渐变色：LinearGradient, RadialGradient 等', Colors.purple[700]!),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.lightbulb_outline, color: Colors.purple[700], size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          '提示：颜色与圆角、尺寸、宽高比等工具类完美配合，创造出色的用户界面。',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.purple[700],
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

  Widget _buildColorGroup(String title, List<_ColorInfo> colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: colors.map((colorInfo) => 
              Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.only(right: 8),
                color: colorInfo.color,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        colorInfo.name.split('-')[1],
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: _getContrastColor(colorInfo.color),
                        ),
                      ),
                    ],
                  ),
                ),
              ).roundedMd(),
            ).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildColorPreview(String name, Color color) {
    return Container(
      height: 80,
      color: color,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: _getContrastColor(color),
            fontSize: 14,
          ),
        ),
      ),
    ).roundedLg();
  }

  Widget _buildThemeCard(String title, IconData icon, MaterialColor color, Color backgroundColor) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 48,
            color: color[500],
            child: Icon(icon, color: Colors.white, size: 24),
          ).roundedFull(),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color[700],
              fontSize: 14,
            ),
          ),
        ],
      ),
    ).roundedLg();
  }

  Widget _buildColorTip(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: Colors.blue[700],
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

  Color _getContrastColor(Color color) {
    // 简单的对比色计算
    double luminance = (0.299 * color.red + 0.587 * color.green + 0.114 * color.blue) / 255;
    return luminance > 0.5 ? Colors.black : Colors.white;
  }
}

class _ColorInfo {
  final String name;
  final Color color;

  _ColorInfo(this.name, this.color);
}
