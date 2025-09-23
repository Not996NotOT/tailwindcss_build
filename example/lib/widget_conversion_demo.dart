import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

/// Widget转换演示 - 展示 asRow(), asColumn(), asContainer() 等新功能
/// 完全使用 TailwindCSS Build 的转换语法糖
class WidgetConversionDemo extends StatelessWidget with BaseColorsExt {
  const WidgetConversionDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget转换演示')
            .textWhite()
            .fontBold(),
        backgroundColor: blue600Color,
      ),
      body: [
        // 1. asRow() 演示
        _buildSection(
          '1. 使用 [].asRow() 创建水平布局',
          [
            Icon(Icons.star, color: Colors.amber).icon2Xl(),
            Text('评分').textGray800().fontSemibold().ml2(),
            Text('4.8').textBlue600().fontBold().ml1(),
          ].asRow().p4().bgWhite().rounded().shadow().m2(),
        ),

        // 2. asColumn() 演示  
        _buildSection(
          '2. 使用 [].asColumn() 创建垂直布局',
          [
            Icon(Icons.person).iconBlue500().icon3Xl(),
            Text('用户名').textGray800().fontSemibold().mt2(),
            Text('在线状态').textGreen500().textSm().mt1(),
          ].asColumn().p4().bgWhite().rounded().shadow().m2(),
        ),

        // 3. asContainer() 演示
        _buildSection(
          '3. 使用 Text.asContainer() 创建容器',
          Text('头像')
              .textWhite()
              .fontBold()
              .asContainer()
              .w16()
              .h16()
              .bgCustom(Colors.purple)
              .roundedFull()
              .flex()
              .itemsCenter()
              .justifyCenter()
              .m2(),
        ),

        // 4. asIconContainer() 演示
        _buildSection(
          '4. 使用 Icon.asIconContainer() 创建图标容器',
          Icon(Icons.favorite)
              .iconWhite()
              .icon2Xl()
              .asIconContainer()
              .w12()
              .h12()
              .bgRed500()
              .roundedFull()
              .flex()
              .itemsCenter()
              .justifyCenter()
              .m2(),
        ),

        // 5. asWrap() 演示
        _buildSection(
          '5. 使用 [].asWrap() 创建流式布局',
          [
            _buildTag('Flutter'),
            _buildTag('Dart'),
            _buildTag('TailwindCSS'),
            _buildTag('UI'),
            _buildTag('Mobile'),
            _buildTag('开发'),
            _buildTag('跨平台'),
          ].asWrap(
            spacing: 8,
            runSpacing: 8,
          ).p4().bgGray100().rounded().m2(),
        ),

        // 6. asExpanded() 和 asFlexible() 演示
        _buildSection(
          '6. 使用 .asExpanded() 和 .asFlexible()',
          [
            Container()
                .bgBlue400()
                .h12()
                .asExpanded(flex: 2)
                .mr2(),
            Container()
                .bgGreen400()
                .h12()
                .asFlexible(flex: 1)
                .mr2(),
            Container()
                .bgRed400()
                .h12()
                .asExpanded(flex: 1),
          ].asRow().p4().bgWhite().rounded().shadow().m2(),
        ),

        // 7. asCenter() 和 asAlign() 演示
        _buildSection(
          '7. 使用 .asCenter() 和 .asAlign()',
          [
            Text('居中文本')
                .textBlue600()
                .fontBold()
                .asCenter()
                .bgCustom(Colors.yellow.shade100)
                .p4()
                .rounded()
                .mb2(),
            Text('右对齐文本')
                .textGreen600()
                .fontBold()
                .asAlign(alignment: Alignment.centerRight)
                .bgCustom(Colors.blue.shade100)
                .p4()
                .rounded(),
          ].asColumn().p4().bgWhite().rounded().shadow().m2(),
        ),

        // 8. 复杂组合演示
        _buildSection(
          '8. 复杂组合：多层转换嵌套',
          [
            // 头像部分
            [
              Icon(Icons.account_circle)
                  .iconBlue500()
                  .icon3Xl(),
              [
                Text('张三')
                    .textGray900()
                    .fontBold()
                    .textBase(),
                Text('软件开发工程师')
                    .textGray600()
                    .textSm()
                    .mt1(),
              ].asColumn(
                crossAxisAlignment: CrossAxisAlignment.start
              ).ml3().asExpanded(),
            ].asRow(),
            
            // 标签部分
            [
              _buildTag('5年经验'),
              _buildTag('Flutter专家'),
              _buildTag('全栈开发'),
            ].asWrap(
              spacing: 8,
              runSpacing: 4,
            ).mt3(),
            
            // 操作按钮
            [
              Text('联系')
                  .textWhite()
                  .fontSemibold()
                  .asContainer()
                  .px4()
                  .py2()
                  .bgBlue500()
                  .roundedLg()
                  .asExpanded()
                  .mr2(),
              Text('查看')
                  .textBlue500()
                  .fontSemibold()
                  .asContainer()
                  .px4()
                  .py2()
                  .border()
                  .borderBlue500()
                  .roundedLg()
                  .asExpanded(),
            ].asRow().mt4(),
          ].asColumn().p4().bgWhite().rounded().shadow().m2(),
        ),

      ].asListView()  // 🔥 使用 .asListView() 创建滚动列表 🔥
          .p4()
          .bgGray50(),
    );
  }

  /// 构建章节标题和内容
  Widget _buildSection(String title, Widget content) {
    return [
      Text(title)
          .textGray800()
          .fontBold()
          .textLg()
          .mb3(),
      content,
    ].asColumn(
      crossAxisAlignment: CrossAxisAlignment.start
    );
  }

  /// 构建标签
  Widget _buildTag(String text) {
    return Text(text)
        .textBlue700()
        .textSm()
        .fontMedium()
        .asContainer()
        .px3()
        .py1()
        .bgBlue100()
        .roundedFull();
  }
}

/// 使用示例
class WidgetConversionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget转换演示',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'PingFang SC',
      ),
      home: const WidgetConversionDemo(),
    );
  }
}

void main() {
  runApp(WidgetConversionApp());
}
