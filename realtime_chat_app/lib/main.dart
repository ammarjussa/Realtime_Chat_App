import 'package:flutter/material.dart';
import 'package:realtime_chat_app/pages/ChatPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ChatPage());
  }
}
