// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() async {
  // DO NOT TOUCH: Firebase configuration
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBFQIi3pNiQNoM4y7dBKxBCp-lzeqSPfg8',
      appId: '1:702148614087:web:7615cf62cdbb20e7c52be2',
      messagingSenderId: '702148614087',
      projectId: 'flutter-chat-aliyazdi',
      authDomain: 'flutter-chat-aliyazdi.firebaseapp.com',
      storageBucket: 'flutter-chat-aliyazdi.appspot.com',
    ),
  );

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
  FlutterChatPage({super.key});

  @override
  State<FlutterChatPage> createState() => _FlutterChatPageState();
}

class _FlutterChatPageState extends State<FlutterChatPage> {
  final controller = TextEditingController();

  // Stream that reads messages from Firestore
  final stream = FirebaseFirestore.instance
      .collection('chat')
      .orderBy('time', descending: true)
      .snapshots();

  ({
    String? name,
    String? message,
    DateTime? time,
  }) parseDocument(Map<String, dynamic> doc) {
    final time = DateTime.fromMillisecondsSinceEpoch(doc['time'] as int? ?? 0);

    return (
      name: doc['name'],
      message: doc['message'],
      time: time,
    );
  }

  void sendMessage(String message) {
    print(message);

    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            // TODO: Wrap this ListView with StreamBuilder and use stream to read messages from Firestore. (hint: use parseDocument to parse the document)
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
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => sendMessage(controller.text),
                ),
              ),
              onSubmitted: sendMessage,
            ),
          ),
        ],
      ),
    );
  }
}
