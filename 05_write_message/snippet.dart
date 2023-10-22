// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_constructors_in_immutables
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
  FlutterChatPage({super.key});

  // Use this function at the right place
  void sendMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text('now'),
                  title: Text('Message number $index'),
                  subtitle: Text('John Doe'),
                );
              },
            ),
          ),
          // TODO: implement message text field
          Placeholder(fallbackHeight: 96),
        ],
      ),
    );
  }
}
