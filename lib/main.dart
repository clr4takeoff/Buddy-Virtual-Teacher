import 'main_page.dart';
import 'package:buddyvirty/voice_chat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BuddyVirty',
      home: MainPage(),
    );
  }
}