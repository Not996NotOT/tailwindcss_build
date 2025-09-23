import 'package:flutter/material.dart';

import 'chat/chat_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TailwindCSS Build 聊天演示',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const ChatApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}