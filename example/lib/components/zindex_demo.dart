import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

/// Z-Index 功能演示组件
class ZIndexDemo extends StatelessWidget {
  const ZIndexDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Z-Index Demo'),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 标题
            const Text(
              'Z-Index Layout System',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Utilities for controlling the stack order of an element.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32),

            // 基础 Z-Index 示例
            _buildSection(
              'Basic Z-Index',
              'Layered elements with different z-index values',
              _buildBasicZIndexExample(),
            ),

            const SizedBox(height: 32),

            // 负值 Z-Index 示例
            _buildSection(
              'Negative Z-Index',
              'Elements with negative z-index values',
              _buildNegativeZIndexExample(),
            ),

            const SizedBox(height: 32),

            // 复杂层叠示例
            _buildSection(
              'Complex Layering',
              'Multiple elements with different z-index values',
              _buildComplexLayeringExample(),
            ),

            const SizedBox(height: 32),

            // 实际应用场景
            _buildSection(
              'Real-world Example',
              'Modal overlay with backdrop',
              _buildModalExample(),
            ),

            const SizedBox(height: 32),

            // Z-Index 值表格
            _buildSection(
              'Available Z-Index Classes',
              'Complete list of z-index utility classes',
              _buildZIndexTable(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String description, Widget content) {
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
        const SizedBox(height: 4),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 16),
        content,
      ],
    );
  }

  Widget _buildBasicZIndexExample() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          // Background (z-0)
          const Text('Background Layer')
              .asContainer()
              .z0()
              .w(120)
              .h(80)
              .bgRed200()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 20, left: 20)
              .build(),

          // Middle (z-10)
          const Text('Middle Layer')
              .asContainer()
              .z10()
              .w(120)
              .h(80)
              .bgBlue200()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 40, left: 60)
              .build(),

          // Foreground (z-20)
          const Text('Foreground Layer')
              .asContainer()
              .z20()
              .w(120)
              .h(80)
              .bgGreen200()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 60, left: 100)
              .build(),
        ],
      ),
    );
  }

  Widget _buildNegativeZIndexExample() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          // Base layer (z-0)
          const Text('Base Layer')
              .asContainer()
              .z0()
              .w(140)
              .h(100)
              .bgGray200()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 50, left: 50)
              .build(),

          // Behind base (z-negative-10)
          const Text('Behind Base')
              .asContainer()
              .zNegative10()
              .w(140)
              .h(100)
              .bgPurple200()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 30, left: 80)
              .build(),

          // Far behind (z-negative-20)
          const Text('Far Behind')
              .asContainer()
              .zNegative20()
              .w(140)
              .h(100)
              .bgOrange200()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 10, left: 110)
              .build(),
        ],
      ),
    );
  }

  Widget _buildComplexLayeringExample() {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          // Background elements
          const Text('z-1')
              .asContainer()
              .z1()
              .w(60)
              .h(60)
              .bgRed100()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 20, left: 20)
              .build(),

          const Text('z-2')
              .asContainer()
              .z2()
              .w(60)
              .h(60)
              .bgBlue100()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 40, left: 40)
              .build(),

          const Text('z-3')
              .asContainer()
              .z3()
              .w(60)
              .h(60)
              .bgGreen100()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 60, left: 60)
              .build(),

          const Text('z-4')
              .asContainer()
              .z4()
              .w(60)
              .h(60)
              .bgYellow100()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 80, left: 80)
              .build(),

          const Text('z-5')
              .asContainer()
              .z5()
              .w(60)
              .h(60)
              .bgPurple100()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 100, left: 100)
              .build(),

          // High z-index element
          const Text('z-50')
              .asContainer()
              .z50()
              .w(80)
              .h(80)
              .bgPink300()
              .alignment(Alignment.center)
              .rounded8()
              .positioned(top: 120, left: 150)
              .build(),
        ],
      ),
    );
  }

  Widget _buildModalExample() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          // Page content (z-0)
          const Text('Page Content')
              .asContainer()
              .z0()
              .wFull()
              .hFull()
              .bgGray100()
              .alignment(Alignment.center)
              .build(),

          // Modal backdrop (z-40)
          Container()
              .asContainer()
              .z40()
              .wFull()
              .hFull()
              .backgroundColor(Colors.black.withValues(alpha: 0.5))
              .build(),

          // Modal content (z-50)
          const Text('Modal Dialog')
              .asContainer()
              .z50()
              .w(200)
              .h(100)
              .bgWhite()
              .alignment(Alignment.center)
              .rounded8()
              .shadow()
              .build()
              .asContainer()
              .positioned(top: 50, left: 100)
              .build(),
        ],
      ),
    );
  }

  Widget _buildZIndexTable() {
    final zIndexClasses = [
      {'class': 'z-auto', 'value': 'auto', 'description': 'Auto z-index'},
      {'class': 'z0()', 'value': '0', 'description': 'z-index: 0'},
      {'class': 'z1()', 'value': '1', 'description': 'z-index: 1'},
      {'class': 'z2()', 'value': '2', 'description': 'z-index: 2'},
      {'class': 'z3()', 'value': '3', 'description': 'z-index: 3'},
      {'class': 'z4()', 'value': '4', 'description': 'z-index: 4'},
      {'class': 'z5()', 'value': '5', 'description': 'z-index: 5'},
      {'class': 'z10()', 'value': '10', 'description': 'z-index: 10'},
      {'class': 'z20()', 'value': '20', 'description': 'z-index: 20'},
      {'class': 'z30()', 'value': '30', 'description': 'z-index: 30'},
      {'class': 'z40()', 'value': '40', 'description': 'z-index: 40'},
      {'class': 'z50()', 'value': '50', 'description': 'z-index: 50'},
      {'class': 'zNegative1()', 'value': '-1', 'description': 'z-index: -1'},
      {'class': 'zNegative10()', 'value': '-10', 'description': 'z-index: -10'},
      {'class': 'zNegative20()', 'value': '-20', 'description': 'z-index: -20'},
      {'class': 'zNegative30()', 'value': '-30', 'description': 'z-index: -30'},
      {'class': 'zNegative40()', 'value': '-40', 'description': 'z-index: -40'},
      {'class': 'zNegative50()', 'value': '-50', 'description': 'z-index: -50'},
    ];

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Class',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Value',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          // Rows
          ...zIndexClasses.map((item) => Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey[300]!),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        item['class']!,
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 12,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        item['value']!,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        item['description']!,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
