import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

class AccordionDemo extends StatefulWidget {
  const AccordionDemo({Key? key}) : super(key: key);

  @override
  State<AccordionDemo> createState() => _AccordionDemoState();
}

class _AccordionDemoState extends State<AccordionDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accordion Examples')
            .textLg()
            .fontBold(),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 1,
      ),
      backgroundColor: Colors.grey[50],
      body: <Widget>[
        // Header
        Text('Accordion')
            .text2Xl()
            .fontBold()
            .textGray900()
            .mb4(),
        
        Text('Accordion display a list of high-level options that can expand/collapse to reveal more information.')
            .textBase()
            .textGray600()
            .leading6()
            .mb8(),

        // Basic Accordion
        _buildSection(
          'Basic Usage',
          'A simple accordion with default styling.',
          _buildBasicAccordion(),
        ),

        // With Subtitle
        _buildSection(
          'With Subtitle',
          'Accordion items can include subtitles for additional context.',
          _buildSubtitleAccordion(),
        ).mt8(),

        // Variants
        _buildSection(
          'Variants',
          'Different visual styles for different use cases.',
          <Widget>[
            _buildVariantAccordion('Light', AccordionVariant.light),
            _buildVariantAccordion('Shadow', AccordionVariant.shadow).mt4(),
            _buildVariantAccordion('Bordered', AccordionVariant.bordered).mt4(),
            _buildVariantAccordion('Splitted', AccordionVariant.splitted).mt4(),
          ].asColumn(),
        ).mt8(),

        // Custom Indicator
        _buildSection(
          'Custom Indicator',
          'Customize the expand/collapse indicator.',
          _buildCustomIndicatorAccordion(),
        ).mt8(),
      ].asColumn(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ).px6()
       .py8()
       .asScrollView(),
    );
  }

  Widget _buildSection(String title, String description, Widget child) {
    return <Widget>[
      Text(title)
          .textXl()
          .fontSemiBold()
          .textGray900()
          .mb3(),
      
      Text(description)
          .textSm()
          .textGray600()
          .leading5()
          .mb6(),
      
      child.wFull()
          .p6()
          .bgWhite()
          .roundedLg()
          .border(color: Colors.grey[200]!)
          .shadowSm(),
    ].asColumn(crossAxisAlignment: CrossAxisAlignment.stretch);
  }

  Widget _buildBasicAccordion() {
    return TailwindAccordion(
      children: [
        TailwindAccordionItem(
          title: 'Accordion Item 1',
          content: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
              .textSm()
              .textGray700()
              .leading6(),
        ),
        TailwindAccordionItem(
          title: 'Accordion Item 2',
          content: Text('Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
              .textSm()
              .textGray700()
              .leading6(),
        ),
        TailwindAccordionItem(
          title: 'Accordion Item 3',
          content: Text('Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
              .textSm()
              .textGray700()
              .leading6(),
        ),
      ],
    );
  }

  Widget _buildSubtitleAccordion() {
    return TailwindAccordion(
      children: [
        TailwindAccordionItem(
          title: 'Project Overview',
          subtitle: 'High-level project information',
          content: <Widget>[
            Text('Project details and timeline information.')
                .textSm()
                .textGray700()
                .leading6()
                .mb3(),
            <Widget>[
              Text('• Duration: 6 months')
                  .textXs()
                  .textGray600(),
              Text('• Team size: 8 developers')
                  .textXs()
                  .textGray600(),
              Text('• Status: In Progress')
                  .textXs()
                  .textGreen600(),
            ].asColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ].asColumn(crossAxisAlignment: CrossAxisAlignment.start),
        ),
        TailwindAccordionItem(
          title: 'Team Members',
          subtitle: 'View project contributors',
          content: <Widget>[
            Text('List of all team members and their roles in the project.')
                .textSm()
                .textGray700()
                .leading6()
                .mb3(),
            <Widget>[
              _buildMemberCard('张三', 'Frontend Developer', Icons.person),
              _buildMemberCard('李四', 'Backend Developer', Icons.code),
              _buildMemberCard('王五', 'UI/UX Designer', Icons.design_services),
            ].asColumn(),
          ].asColumn(crossAxisAlignment: CrossAxisAlignment.start),
        ),
        TailwindAccordionItem(
          title: 'Technical Stack',
          subtitle: 'Technologies and frameworks',
          content: <Widget>[
            Text('Modern technologies used in this project:')
                .textSm()
                .textGray700()
                .leading6()
                .mb3(),
            <Widget>[
              _buildTechTag('Flutter', Colors.blue[500]!),
              _buildTechTag('Dart', Colors.blue[700]!),
              _buildTechTag('TailwindCSS Build', Colors.cyan[500]!),
              _buildTechTag('Material Design', Colors.green[500]!),
            ].asWrap(spacing: 8, runSpacing: 8),
          ].asColumn(crossAxisAlignment: CrossAxisAlignment.start),
        ),
      ],
    );
  }

  Widget _buildMemberCard(String name, String role, IconData icon) {
    return <Widget>[
      Icon(icon)
          .iconGray500()
          .iconSm(),
      <Widget>[
        Text(name)
            .textSm()
            .fontMedium()
            .textGray900(),
        Text(role)
            .textXs()
            .textGray500(),
      ].asColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
      ).ml3().asFlexible(),
    ].asSafeRow()
        .itemsCenter()
        .p3()
        .bgGray50()
        .roundedMd();
  }

  Widget _buildTechTag(String tech, Color color) {
    return Text(tech)
        .textXs()
        .fontMedium()
        .textWhite()
        .px3()
        .py1()
        .bg(color)
        .roundedFull();
  }

  Widget _buildVariantAccordion(String title, AccordionVariant variant) {
    return <Widget>[
      Text('$title Variant')
          .textLg()
          .fontMedium()
          .textGray800()
          .mb4(),
      TailwindAccordion(
        variant: variant,
        children: [
          TailwindAccordionItem(
            title: 'Item 1',
            content: Text('Content for $title variant accordion. This demonstrates the ${title.toLowerCase()} styling approach.')
                .textSm()
                .textGray700()
                .leading6(),
          ),
          TailwindAccordionItem(
            title: 'Item 2',
            content: Text('Another item in $title style. Each variant has its own unique visual characteristics.')
                .textSm()
                .textGray700()
                .leading6(),
          ),
        ],
      ),
    ].asColumn(crossAxisAlignment: CrossAxisAlignment.start);
  }

  Widget _buildCustomIndicatorAccordion() {
    return TailwindAccordion(
      children: [
        TailwindAccordionItem(
          title: 'Custom Plus/Minus',
          content: Text('This accordion uses a custom plus/minus indicator instead of the default arrow.')
              .textSm()
              .textGray700()
              .leading6(),
          customIndicator: (isExpanded) => Icon(
            isExpanded ? Icons.remove : Icons.add,
            size: 20,
            color: Colors.blue[600],
          ).p1()
              .roundedFull()
              .border(color: Colors.blue[600]!, width: 2.0),
        ),
        TailwindAccordionItem(
          title: 'Custom Arrow Style',
          content: Text('This accordion uses a styled arrow indicator with different colors and animations.')
              .textSm()
              .textGray700()
              .leading6(),
          customIndicator: (isExpanded) => Icon(
            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            size: 24,
            color: Colors.green[600],
          ).p2()
              .bgGreen100()
              .roundedFull(),
        ),
        TailwindAccordionItem(
          title: 'Custom Icon',
          content: Text('This demonstrates using completely different icons as indicators.')
              .textSm()
              .textGray700()
              .leading6(),
          customIndicator: (isExpanded) => Icon(
            isExpanded ? Icons.visibility : Icons.visibility_off,
            size: 20,
            color: Colors.purple[600],
          ),
        ),
      ],
    );
  }
}

// Accordion Component Implementation using TailwindCSS Build
enum AccordionVariant { light, shadow, bordered, splitted }

class TailwindAccordion extends StatelessWidget {
  final List<TailwindAccordionItem> children;
  final AccordionVariant variant;
  final bool allowMultiple;
  final List<int>? defaultExpandedIndexes;

  const TailwindAccordion({
    Key? key,
    required this.children,
    this.variant = AccordionVariant.light,
    this.allowMultiple = false,
    this.defaultExpandedIndexes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _AccordionWrapper(
      variant: variant,
      allowMultiple: allowMultiple,
      defaultExpandedIndexes: defaultExpandedIndexes,
      children: children,
    );
  }
}

class _AccordionWrapper extends StatefulWidget {
  final List<TailwindAccordionItem> children;
  final AccordionVariant variant;
  final bool allowMultiple;
  final List<int>? defaultExpandedIndexes;

  const _AccordionWrapper({
    required this.children,
    required this.variant,
    required this.allowMultiple,
    this.defaultExpandedIndexes,
  });

  @override
  State<_AccordionWrapper> createState() => _AccordionWrapperState();
}

class _AccordionWrapperState extends State<_AccordionWrapper> {
  late Set<int> expandedIndexes;

  @override
  void initState() {
    super.initState();
    expandedIndexes = widget.defaultExpandedIndexes?.toSet() ?? {};
  }

  void _toggleItem(int index) {
    setState(() {
      if (expandedIndexes.contains(index)) {
        expandedIndexes.remove(index);
      } else {
        if (!widget.allowMultiple) {
          expandedIndexes.clear();
        }
        expandedIndexes.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.children.asMap().entries.map((entry) {
      final index = entry.key;
      final item = entry.value;
      final isExpanded = expandedIndexes.contains(index);
      final isFirst = index == 0;
      final isLast = index == widget.children.length - 1;

      return _AccordionItemWidget(
        item: item,
        isExpanded: isExpanded,
        onToggle: () => _toggleItem(index),
        variant: widget.variant,
        isFirst: isFirst,
        isLast: isLast,
      );
    }).toList().asColumn(
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }
}

class TailwindAccordionItem {
  final String title;
  final String? subtitle;
  final Widget content;
  final Widget? startContent;
  final Widget Function(bool isExpanded)? customIndicator;

  const TailwindAccordionItem({
    required this.title,
    required this.content,
    this.subtitle,
    this.startContent,
    this.customIndicator,
  });
}

class _AccordionItemWidget extends StatelessWidget {
  final TailwindAccordionItem item;
  final bool isExpanded;
  final VoidCallback onToggle;
  final AccordionVariant variant;
  final bool isFirst;
  final bool isLast;

  const _AccordionItemWidget({
    required this.item,
    required this.isExpanded,
    required this.onToggle,
    required this.variant,
    required this.isFirst,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = <Widget>[
      _buildHeader(),
      ClipRect(
        child: AnimatedAlign(
          alignment: Alignment.topCenter,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          heightFactor: isExpanded ? 1.0 : 0.0,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: isExpanded ? 1.0 : 0.0,
            child: _buildContent(),
          ),
        ),
      ),
    ].asColumn();

    // 应用变体装饰 - 移除外层圆角，让内部组件处理
    switch (variant) {
      case AccordionVariant.light:
        content = content
            .bg(Colors.white);
        if (!isLast) {
          content = content.borderB();
        }
        break;
            
      case AccordionVariant.shadow:
        content = content
            .bg(Colors.white)
            .shadowLg();
        break;
            
      case AccordionVariant.bordered:
        content = content
            .bg(Colors.white)
            .border(color: Colors.grey[200]!);
        break;
            
      case AccordionVariant.splitted:
        content = content
            .bg(Colors.white)
            .roundedLg() // splitted 保留外层圆角
            .border(color: Colors.grey[200]!)
            .shadowMd();
        break;
    }

    if (variant == AccordionVariant.splitted) {
      content = content.mb3();
    }
    return content;
  }


  Widget _buildHeader() {
    Widget header = <Widget>[
      if (item.startContent != null) ...[
        item.startContent!,
        SizedBox(width: 12).asContainer(),
      ],
      <Widget>[
        Text(item.title)
            .textLg()
            .fontSemiBold()
            .textColor(isExpanded ? Colors.blue[700]! : Colors.grey[900]!)
            .textCenter(), // 文字居中
        if (item.subtitle != null)
          Text(item.subtitle!)
              .textSm()
              .textGray500()
              .textCenter() // 子标题也居中
              .mt1(),
      ].asColumn(
        crossAxisAlignment: CrossAxisAlignment.center, // 列也居中
        mainAxisAlignment: MainAxisAlignment.center,   // 垂直居中
      ).asFlexible(),
      _buildIndicator(),
    ].asFlexRow( // 使用 FlexRow 确保占满宽度
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // 两端对齐
      )
        .wFull() // 确保占满宽度
        .px6()
        .py4(); // 移除不存在的 minH 方法

    // 应用 Header 装饰 - 只有在必要时才添加圆角
    header = header.bg(isExpanded ? Colors.blue[50]! : Colors.transparent);
    
    if (variant == AccordionVariant.splitted) {
      // splitted 变体不需要 header 圆角，外层容器已处理
      // header 保持默认，不添加额外圆角
    } else {
      // 其他变体需要根据位置添加圆角
      header = header.conditionalBorderRadius(
        topLeft: isFirst,
        topRight: isFirst,
        bottomLeft: isLast && !isExpanded,
        bottomRight: isLast && !isExpanded,
        radius: 12.0,
      );
    }

    // 将 GestureDetector 包装整个 header 确保整行可点击
    return header.asGestureDetector(onTap: onToggle);
  }

  Widget _buildIndicator() {
    if (item.customIndicator != null) {
      return item.customIndicator!(isExpanded);
    }
    
    return AnimatedRotation(
      turns: isExpanded ? 0.5 : 0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: isExpanded ? Colors.blue[100] : Colors.grey[100],
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(
          Icons.keyboard_arrow_down,
          color: isExpanded ? Colors.blue[700] : Colors.grey[600],
          size: 16,
        ),
      ),
    );
  }

  Widget _buildContent() {
    Widget content = item.content
        .asContainer()
        .wFull()
        .px6()
        .pt2()
        .pb6()
        .bg(Colors.grey[50]!);

    // 应用内容装饰 - 只有在必要时才添加圆角
    if (variant == AccordionVariant.splitted) {
      // splitted 变体不需要 content 圆角，外层容器已处理
      // content 保持默认，不添加额外圆角
    } else {
      // 其他变体需要根据位置添加底部圆角
      content = content.conditionalBorderRadius(
        bottomLeft: isLast,
        bottomRight: isLast,
        radius: 12.0,
      );
    }

    return content;
  }
}