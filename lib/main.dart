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
      debugShowCheckedModeBanner: false,
      title: 'BuddyVirty',
      home: Grape()
    );
  }
}