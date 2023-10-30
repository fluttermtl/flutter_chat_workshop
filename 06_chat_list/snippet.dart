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
          Expanded(
            // TODO: Replace the Placeholder with a ListView that creates 10 ListTiles in reverse order.
            // Example of ListTile:
            // ListTile(
            //  leading: Text('now'),
            //  title: Text('Message number $index'),
            //  subtitle: Text('John Doe'),
            //)
            child: Placeholder(),
          ),
          Placeholder(fallbackHeight: 64),
        ],
      ),
    );
  }
}
