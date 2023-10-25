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
      // TODO: replace with the FlutterChatPage widget
      home: Placeholder(),
    );
  }
}

class FlutterChatPage extends StatelessWidget {
  const FlutterChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: based on the image, implement chat layout using Column, Placeholder
      body: Placeholder(),
    );
  }
}
