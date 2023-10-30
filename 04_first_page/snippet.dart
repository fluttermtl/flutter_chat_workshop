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
      home: FlutterChatPage(),
    );
  }
}

class FlutterChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Make it return the Scaffold with Placeholder in the body.
    return Placeholder();
  }
}
