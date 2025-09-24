import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

import 'aspect_ratio_demo.dart';
import 'border_radius_demo.dart';
import 'colors_demo.dart';
import 'components/accordion_demo.dart';
import 'components/autocomplete_demo.dart';
import 'height_demo.dart';
import 'width_demo.dart';

class ComponentsHome extends StatefulWidget {
  const ComponentsHome({Key? key}) : super(key: key);

  @override
  State<ComponentsHome> createState() => _ComponentsHomeState();
}

class _ComponentsHomeState extends State<ComponentsHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<ComponentCategory> categories = [
    ComponentCategory(
      title: 'Components',
      icon: Icons.widgets,
      demos: [
        ComponentDemo(
          name: 'Accordion',
          description: 'Display collapsible content panels',
          icon: Icons.expand_more,
          builder: () => const AccordionDemo(),
        ),
        ComponentDemo(
          name: 'Autocomplete',
          description: 'Search and select from options',
          icon: Icons.search,
          builder: () => const AutocompleteDemo(),
        ),
      ],
    ),
    ComponentCategory(
      title: 'Layout',
      icon: Icons.view_quilt,
      demos: [
        ComponentDemo(
          name: 'Aspect Ratio',
          description: 'Control element aspect ratios',
          icon: Icons.aspect_ratio,
          builder: () => const AspectRatioDemo(),
        ),
        ComponentDemo(
          name: 'Width',
          description: 'Width utilities and controls',
          icon: Icons.swap_horiz,
          builder: () => const WidthDemo(),
        ),
        ComponentDemo(
          name: 'Height',
          description: 'Height utilities and controls',
          icon: Icons.swap_vert,
          builder: () => const HeightDemo(),
        ),
      ],
    ),
    ComponentCategory(
      title: 'Styling',
      icon: Icons.palette,
      demos: [
        ComponentDemo(
          name: 'Colors',
          description: 'Color system and utilities',
          icon: Icons.color_lens,
          builder: () => const ColorsDemo(),
        ),
        ComponentDemo(
          name: 'Border Radius',
          description: 'Border radius utilities',
          icon: Icons.rounded_corner,
          builder: () => const BorderRadiusDemo(),
        ),
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue[600]!, Colors.blue[400]!],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.auto_awesome,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('TailwindCSS Build')
                    .textLg()
                    .fontBold()
                    .textGray900(),
                Text('Component Examples')
                    .textXs()
                    .textGray500(),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          tabs: categories.map((category) => Tab(
            icon: Icon(category.icon, size: 20),
            text: category.title,
          )).toList(),
          labelColor: Colors.blue[600],
          unselectedLabelColor: Colors.grey[600],
          indicatorColor: Colors.blue[600],
          indicatorWeight: 3,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: categories.map((category) => _buildCategoryView(category)).toList(),
      ),
    );
  }

  Widget _buildCategoryView(ComponentCategory category) {
    return Container(
      color: Colors.grey[50],
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Category Header
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue[50]!, Colors.blue[100]!],
              ),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blue[200]!),
            ),
            child: Row(
              children: [
                Icon(category.icon, size: 32, color: Colors.blue[600]),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(category.title)
                          .textXl()
                          .fontBold()
                          .textGray900(),
                      Text('Explore ${category.demos.length} ${category.title.toLowerCase()} examples')
                          .textSm()
                          .textGray600()
                          .mt1(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),

          // Demo Grid
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.2,
            ),
            itemCount: category.demos.length,
            itemBuilder: (context, index) {
              final demo = category.demos[index];
              return _buildDemoCard(demo);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDemoCard(ComponentDemo demo) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => demo.builder()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Demo Icon
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    demo.icon,
                    color: Colors.blue[600],
                    size: 24,
                  ),
                ),
                
                const SizedBox(height: 12),
                
                // Demo Name
                Text(demo.name)
                    .textBase()
                    .fontSemiBold()
                    .textGray900(),
                
                const SizedBox(height: 4),
                
                // Demo Description
                Expanded(
                  child: Text(demo.description)
                      .textXs()
                      .textGray600()
                      .lineClamp(2),
                ),
                
                const SizedBox(height: 8),
                
                // Action Row
                Row(
                  children: [
                    Text('View Demo')
                        .textXs()
                        .fontMedium()
                        .textBlue600(),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward,
                      size: 14,
                      color: Colors.blue[600],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ComponentCategory {
  final String title;
  final IconData icon;
  final List<ComponentDemo> demos;

  ComponentCategory({
    required this.title,
    required this.icon,
    required this.demos,
  });
}

class ComponentDemo {
  final String name;
  final String description;
  final IconData icon;
  final Widget Function() builder;

  ComponentDemo({
    required this.name,
    required this.description,
    required this.icon,
    required this.builder,
  });
}

// Helper extension for text line clamp
extension TextExtensions on Text {
  Widget lineClamp(int maxLines) {
    return Text(
      data!,
      style: style,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
