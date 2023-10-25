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

class FlutterChatPage extends StatefulWidget {
  const FlutterChatPage({super.key});

  @override
  State<FlutterChatPage> createState() => _FlutterChatPageState();
}

class _FlutterChatPageState extends State<FlutterChatPage> {
  final messages = <String>[];

  final controller = TextEditingController();

  void sendMessage(String message) {
    // TODO: Add message to messages list and refresh view (hint: setState)

    // TODO: Clear text from text input
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text('now'),
                  title: Text(
                    'Message number $index', // TODO: Replace the text to display the message in the messages list.
                  ),
                  subtitle: Text('John Doe'),
                );
              },
            ),
          ),
          Placeholder(
            // TODO: Replace it with TextField that uses controller and submit the value to sendMessage
            fallbackHeight: 64,
          ),
        ],
      ),
    );
  }
}
