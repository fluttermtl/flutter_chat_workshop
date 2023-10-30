// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(FlutterChatWorkshopApp());
}

class FlutterChatWorkshopApp extends StatelessWidget {
  const FlutterChatWorkshopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      home: FlutterChatPage(),
    );
  }
}

class FlutterChatPage extends StatelessWidget {
  const FlutterChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //TODO: Make the first Placeholder takes all the remaining space in the Column.
          Placeholder(),
          //TODO: Make the second Placeholder with fixed height of 64.
          Placeholder(),
        ],
      ),
    );
  }
}
