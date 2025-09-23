import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

import '../models/chat_model.dart';
import 'chat_detail_page.dart';

class ChatListPage extends StatelessWidget with BaseColorsExt {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chats = _getMockChats();
    
    return Scaffold(
      appBar: AppBar(
        title: Text('聊天')
            .textWhite()
            .textLg()
            .fontSemibold(),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return _buildChatItem(context, chat);
        },
      ).bgGray50(),
    );
  }

  Widget _buildChatItem(BuildContext context, ChatModel chat) {
    return [
      // 头像
      Text(chat.name[0])
          .textWhite()
          .textXl()
          .fontBold()
          .textCenter()
          .asContainer()
          .w12()
          .h12()
          .bgBlue400()
          .roundedFull()
          .flex()
          .itemsCenter()
          .justifyCenter(),
      
      // 聊天信息
      [
        // 用户名和时间
        [
          Text(chat.name)
              .textGray900()
              .textBase()
              .fontSemibold()
              .asExpanded(),
          
          Text(chat.time)
              .textGray500()
              .textXs(),
        ].asRow(),
        
        // 最后消息和未读数
        [
          Text(chat.lastMessage ?? '', 
               maxLines: 1, 
               overflow: TextOverflow.ellipsis)
              .textGray600()
              .textSm()
              .asExpanded(),
          
          if (chat.unreadCount > 0)
            Text('${chat.unreadCount}')
                .textWhite()
                .textXs()
                .fontBold()
                .textCenter()
                .asContainer()
                .w5()
                .h5()
                .bgRed500()
                .roundedFull()
                .flex()
                .itemsCenter()
                .justifyCenter(),
        ].asRow().mt1(),
      ].asColumn(crossAxisAlignment: CrossAxisAlignment.start).asExpanded().ml3(),
    ]
        .asRow(crossAxisAlignment: CrossAxisAlignment.center)
        .p4()
        .bgWhite()
        .border2()
        .clickable(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatDetailPage(chat: chat),
              ),
            );
          },
        )
        .transition(duration: const Duration(milliseconds: 200))
        .hoverScale();
  }

  List<ChatModel> _getMockChats() {
    return [
      ChatModel(
        id: '1',
        name: 'Alice',
        lastMessage: '你好，最近怎么样？',
        time: '10:30',
        unreadCount: 2,
      ),
      ChatModel(
        id: '2',
        name: 'Bob',
        lastMessage: '我们明天见面吧',
        time: '09:15',
        unreadCount: 1,
      ),
      ChatModel(
        id: '3',
        name: 'Charlie',
        lastMessage: '好的，没问题',
        time: '昨天',
        unreadCount: 0,
      ),
      ChatModel(
        id: '4',
        name: 'Diana',
        lastMessage: '项目进展如何？',
        time: '昨天',
        unreadCount: 0,
      ),
      ChatModel(
        id: '5',
        name: '工作群',
        lastMessage: '明天开会讨论新功能',
        time: '周一',
        unreadCount: 5,
      ),
    ];
  }
}