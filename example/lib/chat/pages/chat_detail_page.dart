import 'package:flutter/material.dart';
import 'package:tailwindcss_build/tailwindcss_build.dart';

import '../models/chat_model.dart';

class ChatDetailPage extends StatefulWidget with BaseColorsExt {
  final ChatModel chat;

  const ChatDetailPage({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  final TextEditingController _messageController = TextEditingController();
  final List<MessageModel> _messages = [];

  @override
  void initState() {
    super.initState();
    _loadMockMessages();
  }

  void _loadMockMessages() {
    _messages.addAll([
      MessageModel(
        id: '1',
        content: '你好！',
        isMe: false,
        time: '10:20',
      ),
      MessageModel(
        id: '2',
        content: '嗨，最近怎么样？',
        isMe: true,
        time: '10:21',
      ),
      MessageModel(
        id: '3',
        content: '很好啊，工作很顺利',
        isMe: false,
        time: '10:22',
      ),
      MessageModel(
        id: '4',
        content: '那太好了！我们有时间聊聊吗？',
        isMe: true,
        time: '10:23',
      ),
    ]);
  }

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;

    final message = MessageModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      content: _messageController.text,
      isMe: true,
      time: '刚刚',
    );

    setState(() {
      _messages.add(message);
      _messageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.chat.name)
            .textWhite()
            .textLg()
            .fontSemibold(),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
      ),
      body: [
        // 消息列表
        ListView.builder(
          reverse: true,
          itemCount: _messages.length,
          itemBuilder: (context, index) {
            final message = _messages[_messages.length - 1 - index];
            return _buildMessageBubble(message);
          },
        ).asExpanded(),
        
        // 输入区域
        _buildInputArea(),
      ].asColumn(),
    );
  }

  Widget _buildMessageBubble(MessageModel message) {
    return [
      if (!message.isMe) Container().w12(), // 左侧间距
      
      Text(message.content)
          .textColor(message.isMe ? Colors.white : Colors.black87)
          .textBase()
          .asContainer()
          .px4()
          .py3()
          .bgCustom(message.isMe ? Colors.blue[600]! : Colors.grey[300]!)
          .rounded2xl()
          .shadow()
          .asFlexible(),
      
      if (message.isMe) Container().w12(), // 右侧间距
    ]
        .asRow(
          mainAxisAlignment: message.isMe 
              ? MainAxisAlignment.end 
              : MainAxisAlignment.start,
        )
        .mx4()
        .my1();
  }

  Widget _buildInputArea() {
    return [
      TextField(
        controller: _messageController,
        decoration: InputDecoration(
          hintText: '输入消息...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[100],
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
        onSubmitted: (_) => _sendMessage(),
      ).asExpanded(),
      
      Icon(Icons.send)
          .iconColor(Colors.white)
          .iconLg()
          .asIconContainer()
          .w12()
          .h12()
          .bgBlue600()
          .roundedFull()
          .flex()
          .itemsCenter()
          .justifyCenter()
          .clickable(onTap: _sendMessage)
          .ml2(),
    ]
        .asRow(crossAxisAlignment: CrossAxisAlignment.end)
        .p4()
        .bgWhite()
        .borderT()
        .borderColor(Colors.grey[300]!);
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }
}