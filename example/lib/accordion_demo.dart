import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

/// Accordion组件演示 - 完全使用tailwindcss_build语法糖实现
/// 参考 https://www.heroui.com/docs/components/accordion
class AccordionDemo extends StatefulWidget {
  const AccordionDemo({Key? key}) : super(key: key);

  @override
  State<AccordionDemo> createState() => _AccordionDemoState();
}

class _AccordionDemoState extends State<AccordionDemo> {
  Set<int> expandedItems = {0}; // 默认展开第一项
  bool isMultipleMode = false;
  bool isCompactMode = false;
  AccordionVariant currentVariant = AccordionVariant.light;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accordion 手风琴组件')
            .textLg()
            .fontBold()
            .textWhite(),
        backgroundColor: Colors.blue[600],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 控制面板
            _buildControlPanel(),
            
            // 基础用法
            _buildSection(
              title: '基础用法',
              child: _buildBasicAccordion(),
            ),
            
            // 带副标题
            _buildSection(
              title: '带副标题',
              child: _buildAccordionWithSubtitle(),
            ),
            
            // 不同变体
            _buildSection(
              title: '不同变体',
              child: _buildVariantAccordions(),
            ),
            
            // 自定义指示器
            _buildSection(
              title: '自定义指示器',
              child: _buildCustomIndicatorAccordion(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildControlPanel() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('控制面板')
              .textLg()
              .fontSemiBold()
              .textGray900()
              .mb4(),
          
          // 选择模式
          Row(
            children: [
              Text('多选模式:')
                  .textSm()
                  .textGray700()
                  .mr3(),
              
              Switch(
                value: isMultipleMode,
                onChanged: (value) {
                  setState(() {
                    isMultipleMode = value;
                    if (!value && expandedItems.length > 1) {
                      expandedItems = {expandedItems.first};
                    }
                  });
                },
              ),
            ],
          ).mb3(),
          
          // 紧凑模式
          Row(
            children: [
              Text('紧凑模式:')
                  .textSm()
                  .textGray700()
                  .mr3(),
              
              Switch(
                value: isCompactMode,
                onChanged: (value) {
                  setState(() {
                    isCompactMode = value;
                  });
                },
              ),
            ],
          ).mb3(),
          
          // 变体选择
          Text('变体:')
              .textSm()
              .textGray700()
              .mb2(),
          
          Row(
            children: AccordionVariant.values.map((variant) {
              final isSelected = currentVariant == variant;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentVariant = variant;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blue[600] : Colors.blue[50],
                    border: Border.all(color: Colors.blue[200]!),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  margin: const EdgeInsets.only(right: 8),
                  child: Text(variant.name)
                      .textXs()
                      .fontMedium()
                      .textColor(isSelected ? Colors.white : Colors.blue[600]!),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    )
        .p4()
        .bgWhite()
        .border()
        .borderGray200()
        .roundedLg()
        .mb6();
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title)
              .textLg()
              .fontSemiBold()
              .textGray900()
              .mb4(),
          
          child,
        ],
      ),
    ).p4().mb6();
  }

  Widget _buildBasicAccordion() {
    final items = [
      AccordionItemData(
        title: '什么是 Tailwind CSS?',
        content: 'Tailwind CSS 是一个功能类优先的 CSS 框架，它集成了诸如 flex、pt-4、text-center 和 rotate-90 这样的类，它们能直接在脚本标记语言中组合起来，构建出任何设计。',
      ),
      AccordionItemData(
        title: '如何使用 TailwindCSS Build?',
        content: 'TailwindCSS Build 是一个 Flutter 包，它将 Tailwind CSS 的实用程序类带到 Flutter 开发中。您可以使用熟悉的 Tailwind CSS 类名来设计您的 Flutter 小部件。',
      ),
      AccordionItemData(
        title: '支持哪些功能?',
        content: '包括间距、颜色、排版、布局、边框、阴影等完整的 Tailwind CSS 功能。所有功能都通过扩展方法实现，提供流畅的链式调用体验。',
      ),
    ];

    return _buildAccordion(
      items: items,
      variant: currentVariant,
      isCompact: isCompactMode,
      isMultiple: isMultipleMode,
    );
  }

  Widget _buildAccordionWithSubtitle() {
    final items = [
      AccordionItemData(
        title: 'Typography',
        subtitle: '字体和文本样式',
        content: '包括字体大小、字重、行高、字母间距等完整的文本样式控制。',
      ),
      AccordionItemData(
        title: 'Layout',
        subtitle: '布局和定位',
        content: '提供 Flexbox、Grid、定位等布局工具，让您轻松构建复杂的界面。',
      ),
      AccordionItemData(
        title: 'Colors',
        subtitle: '颜色系统',
        content: '完整的颜色调色板，包括背景色、文本色、边框色等，支持深色模式。',
      ),
    ];

    return _buildAccordion(
      items: items,
      variant: AccordionVariant.bordered,
      showSubtitle: true,
    );
  }

  Widget _buildVariantAccordions() {
    final items = [
      AccordionItemData(
        title: 'Light Variant',
        content: '轻量级样式，适合简洁的设计风格。',
      ),
      AccordionItemData(
        title: 'Shadow Variant',
        content: '带阴影效果，增加层次感。',
      ),
      AccordionItemData(
        title: 'Bordered Variant',
        content: '带边框样式，界限分明。',
      ),
      AccordionItemData(
        title: 'Splitted Variant',
        content: '分离式样式，每个项目独立显示。',
      ),
    ];

    return Column(
      children: AccordionVariant.values.map((variant) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${variant.name.toUpperCase()} Variant')
                .textSm()
                .fontMedium()
                .textGray700()
                .mb2(),
            
            _buildAccordion(
              items: [items[variant.index]],
              variant: variant,
            ).mb4(),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildCustomIndicatorAccordion() {
    final items = [
      AccordionItemData(
        title: '自定义图标指示器',
        content: '使用自定义图标作为展开/折叠指示器。',
        customIcon: Icons.star,
      ),
      AccordionItemData(
        title: '动画指示器',
        content: '带有平滑动画效果的指示器。',
        customIcon: Icons.favorite,
      ),
    ];

    return _buildAccordion(
      items: items,
      variant: AccordionVariant.shadow,
      hasCustomIndicator: true,
    );
  }

  Widget _buildAccordion({
    required List<AccordionItemData> items,
    AccordionVariant variant = AccordionVariant.light,
    bool isCompact = false,
    bool isMultiple = false,
    bool showSubtitle = false,
    bool hasCustomIndicator = false,
  }) {
    return Container(
      child: Column(
        children: items.asMap().entries.map((entry) {
          final index = entry.key;
          final item = entry.value;
          final isExpanded = expandedItems.contains(index);
          
          return _buildAccordionItem(
            item: item,
            index: index,
            isExpanded: isExpanded,
            variant: variant,
            isCompact: isCompact,
            showSubtitle: showSubtitle,
            hasCustomIndicator: hasCustomIndicator,
            onTap: () {
              setState(() {
                if (isMultiple) {
                  if (isExpanded) {
                    expandedItems.remove(index);
                  } else {
                    expandedItems.add(index);
                  }
                } else {
                  expandedItems = isExpanded ? {} : {index};
                }
              });
            },
          );
        }).toList(),
      ),
    )._applyVariantStyle(variant);
  }

  Widget _buildAccordionItem({
    required AccordionItemData item,
    required int index,
    required bool isExpanded,
    required AccordionVariant variant,
    required VoidCallback onTap,
    bool isCompact = false,
    bool showSubtitle = false,
    bool hasCustomIndicator = false,
  }) {
    return Container(
      child: Column(
        children: [
          // Header/Trigger
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: isExpanded 
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      )
                    : BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  // Content
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.title)
                            .textBase()
                            .fontMedium()
                            .textGray900(),
                        
                        if (showSubtitle && item.subtitle != null)
                          Text(item.subtitle!)
                              .textSm()
                              .textGray500()
                              .mt1(),
                      ],
                    ),
                  ),
                  
                  // Indicator
                  AnimatedRotation(
                    turns: isExpanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: Icon(
                      hasCustomIndicator && item.customIcon != null
                          ? item.customIcon!
                          : Icons.keyboard_arrow_down,
                      color: Colors.grey[600],
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Content
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: isExpanded ? null : 0,
            child: isExpanded
                ? Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: Text(item.content)
                        .textSm()
                        .textGray700()
                        .lineHeight(1.5),
                  )
                : null,
          ),
        ],
      ),
    )._applyItemVariantStyle(variant, isExpanded);
  }
}

// 数据模型
class AccordionItemData {
  final String title;
  final String? subtitle;
  final String content;
  final IconData? customIcon;

  AccordionItemData({
    required this.title,
    this.subtitle,
    required this.content,
    this.customIcon,
  });
}

// 变体枚举
enum AccordionVariant { light, shadow, bordered, splitted }

// 扩展方法来应用变体样式
extension AccordionVariantExt on Widget {
  Widget _applyVariantStyle(AccordionVariant variant) {
    switch (variant) {
      case AccordionVariant.light:
        return this.bgWhite();
      case AccordionVariant.shadow:
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: this,
        );
      case AccordionVariant.bordered:
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey[200]!, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: this,
        );
      case AccordionVariant.splitted:
        return this; // splitted在项目级别处理样式
    }
  }
  
  Widget _applyItemVariantStyle(AccordionVariant variant, bool isExpanded) {
    switch (variant) {
      case AccordionVariant.light:
        return this
            .borderB()
            .borderColor(Colors.grey[200]!);
      case AccordionVariant.shadow:
        return this
            .borderB()
            .borderColor(Colors.grey[100]!);
      case AccordionVariant.bordered:
        return this
            .borderB()
            .borderColor(Colors.grey[200]!);
      case AccordionVariant.splitted:
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey[200]!, width: 1),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: this,
        );
    }
  }
}
