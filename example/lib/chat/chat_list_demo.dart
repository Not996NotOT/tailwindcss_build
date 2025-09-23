import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

/// 聊天列表演示 - 测试TailwindCSS Build最大嵌套层数
/// 不抽取任何方法，全部内联展示链式调用的深度
class ChatListDemo extends StatelessWidget with BaseColorsExt {
  const ChatListDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) => 
            // 🔥 开始超深度嵌套链式调用测试 - 使用 asRow() 🔥
            [
                // 头像区域 - 超级深度嵌套
                Stack(
                  children: [
                    // 主头像 - 第1层嵌套，使用TW Build链式语法
                    Text('用${index + 1}')
                        .textWhite()        // 第2层：文字颜色
                        .textLg()          // 第3层：文字大小
                        .fontBold()        // 第4层：文字粗细
                        .asContainer()      // 第5层：转换为容器
                        .w12()             // 第6层：宽度 48px
                        .h12()             // 第7层：高度 48px
                        .bgBlue500()       // 第8层：背景色
                        .roundedFull()     // 第9层：圆角
                        .flex()            // 第10层：flex布局
                        .itemsCenter()     // 第11层：垂直居中
                        .justifyCenter(),  // 第12层：水平居中
                    
                    // 在线状态 - 超级深度链式调用
                    if (index % 2 == 0)
                      Container()
                          .w3()              // 第1层：宽度
                          .h3()              // 第2层：高度
                          .bgGreen400()      // 第3层：背景色
                          .roundedFull()     // 第4层：圆角        // 第5层：边框宽度
                          .borderNone()    // 第6层：边框颜色
                          .positioned(       // 第7层：定位
                            bottom: 0,
                            right: 0,
                          )
                  ],
                )
                    .mr3(),                // 第8层：外边距
                
                // 内容区域 - 超级深度嵌套，使用 asColumn() 和 asExpanded()
                [
                    // 用户名 - 深度链式调用
                    Text('用户${index + 1}号')
                        .textGray900()      // 第1层：文字颜色
                        .fontSemibold()     // 第2层：文字粗细
                        .textBase()         // 第3层：文字大小
                        .letterSpacing(0.5) // 第4层：字母间距
                        .lineHeight(1.2),   // 第5层：行高
                    
                    // 消息内容 - 超深度链式调用，添加溢出处理
                    Text('这是一条很长很长的消息内容，用来测试我们的TailwindCSS Build系统能够支持多深的链式调用嵌套层数',
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis)
                        .textGray600()      // 第1层：文字颜色
                        .textSm()          // 第2层：文字大小
                        .fontNormal()      // 第3层：文字粗细
                        .lineHeight(1.4)   // 第4层：行高
                        .letterSpacing(0.2) // 第5层：字母间距
                        .mt1()             // 第6层：上边距
                        .pr8(),            // 第7层：右内边距
                ].asColumn(
                  crossAxisAlignment: CrossAxisAlignment.start
                ).asExpanded(),        // 🔥 使用 .asColumn() 和 .asExpanded() 🔥
                
                // 右侧信息 - 极致深度嵌套，使用 asColumn()
                [
                    // 时间 - 深度链式
                    Text('${10 + index}:${30 + index}')
                        .textGray500()      // 第1层：颜色
                        .textXs()          // 第2层：大小
                        .fontMedium()      // 第3层：粗细
                        .letterSpacing(0.1) // 第4层：间距
                        , // .textOpacity(0.8) - 方法不存在，跳过
                    
                    // 未读数量徽章 - 超级深度TW Build链式调用
                    if (index % 3 != 0)
                      Container(
                        child: Text('${index + 1}')
                            .textWhite()      // 第1层：文字颜色
                            .textXs()        // 第2层：文字大小
                            .fontBold()      // 第3层：文字粗细
                            .letterSpacing(0.1), // 第4层：字母间距
                      )
                          .w5()            // 第5层：宽度 20px
                          .h5()            // 第6层：高度 20px
                          .bgRed500()      // 第7层：背景色
                          .roundedFull()   // 第8层：圆角
                          .flex()          // 第9层：flex布局
                          .itemsCenter()   // 第10层：垂直居中
                          .justifyCenter() // 第11层：水平居中
                          .mt2()           // 第5层：上边距
                          .shadow()        // 第6层：阴影
                          // .textOpacity(0.95) - 方法不存在，跳过
                ].asColumn(
                  crossAxisAlignment: CrossAxisAlignment.end
                ),  // 🔥 使用 .asColumn() 替代原生 Column 🔥
            ].asRow()  // 🔥 使用 .asRow() 转换，然后继续链式调用 🔥
                // 🔥 继续深度嵌套外层样式 🔥
                .px4()                    // 第1层：左右内边距
                .py3()                    // 第2层：上下内边距
                .mx2()                    // 第3层：左右外边距
                .my1()                    // 第4层：上下外边距
                .bgWhite()                // 第5层：背景色
                .rounded()                // 第6层：圆角
                .shadow()                 // 第7层：阴影
                // .bgOpacity(0.98) - 方法不存在，跳过
                // .transform() - 方法不存在，跳过
                .transition(              // 第12层：过渡
                  duration: const Duration(milliseconds: 200),
                )
                .clickable(               // 第13层：点击事件
                  onTap: () => print('点击了第${index + 1}项'),
                )
                .hoverScale()             // 第14层：悬停效果
                // .elevation(2) - 方法不存在，跳过
                // .clipRRect() - 方法不存在，跳过,
        )
            .p4()                         // 外层容器第1层：内边距
            .bgGray50()                   // 外层容器第2层：背景色
            // .height() - 方法不存在，跳过
      ),
      
      // 浮动按钮 - 超深度TW Build链式调用，使用新的 asIconContainer
      floatingActionButton: Icon(Icons.add)
          .iconWhite()                    // 第1层：图标颜色
          .icon2Xl()                      // 第2层：图标大小
          .asIconContainer()              // 第3层：转换为Icon专用容器
          .w14()                         // 第4层：宽度 56px
          .h14()                         // 第5层：高度 56px
          .bgBlue600()                   // 第6层：背景色
          .roundedFull()                 // 第7层：圆角
          .flex()                        // 第8层：flex布局
          .itemsCenter()                 // 第9层：垂直居中
          .justifyCenter()               // 第10层：水平居中
          .shadow()                       // 第3层：阴影
          // .bgOpacity(0.95) - 方法不存在，跳过
          // .transform() - 方法不存在，跳过
          .transition(                   // 第8层：过渡
            duration: const Duration(milliseconds: 150),
          )
          .clickable(                    // 第9层：点击事件
            onTap: () => print('新建聊天'),
          )
          .hoverScale()                  // 第10层：悬停效果
          // .elevation(4) - 方法不存在，跳过,
    );
  }
}

/// 使用示例
class ChatApp extends StatelessWidget with BaseColorsExt {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TW Build 嵌套深度测试',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'PingFang SC',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TW Build 深度嵌套测试')
              .textWhite()     // 第1层链式
              .fontBold()      // 第2层链式
              .textLg(),       // 第3层链式
          elevation: 0,
          backgroundColor: blue600Color,
        ),
        body: const ChatListDemo(),
      ),
    );
  }
}

void main() {
  runApp(ChatApp());
}
