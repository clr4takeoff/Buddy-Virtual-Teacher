import 'main_page.dart';
import 'package:buddyvirty/voice_chat.dart';
import 'grape.dart';
import 'package:flutter/material.dart';
import 'parent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BuddyVirty',
      home: MainPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}