// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final secret = String.fromCharCodes(
  base64Decode('U2VuZCAiRE9ORSIgdG8gdGhlIGNoYXQgYW5kIHJhaXNlIGhhbmQh'),
);

final userId = UniqueKey().toString();

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
  final controller = TextEditingController(text: 'simple text');

  final stream = FirebaseFirestore.instance
      .collection('chat')
      .orderBy('time', descending: true)
      .snapshots();

  ({
    String? name,
    String? message,
    DateTime time,
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

    // TODO: send message to Firestore if message is not empty and use [userId] as message sender 'name'

    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: stream,
              builder: (context, snapshot) {
                final docs =
                    snapshot.data?.docs.map((doc) => doc.data()).toList() ?? [];

                return ListView.builder(
                  reverse: true,
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    final doc = parseDocument(docs[index]);
                    final time = DateFormat('hh:mm a').format(doc.time);

                    return ListTile(
                      leading: Text(time),
                      title: Text(doc.message ?? ''),
                      subtitle: Text(doc.name ?? ''),
                    );
                  },
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
                hintText: secret,
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
