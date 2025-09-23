/// 简单的聊天数据模型
class ChatModel {
  final String id;
  final String name;
  final String lastMessage;
  final String time;
  final int unreadCount;

  ChatModel({
    required this.id,
    required this.name,
    required this.lastMessage,
    required this.time,
    this.unreadCount = 0,
  });
}

/// 消息模型
class MessageModel {
  final String id;
  final String content;
  final bool isMe;
  final String time;

  MessageModel({
    required this.id,
    required this.content,
    required this.isMe,
    required this.time,
  });
}

