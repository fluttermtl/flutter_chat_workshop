// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';

final secret = String.fromCharCodes(
  base64Decode('Q29uZ3JhdHVsYXRpb25zIQ=='),
);

void main() {
  runApp(const FlutterChatWorkshopApp());
}

class FlutterChatWorkshopApp extends StatelessWidget {
  const FlutterChatWorkshopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: Text('Welcome to Flutter Chat Workshop!')),
        body: Visibility(
          visible: false,
          replacement: Center(child: Text(secret)),
          child: Center(
            // TODO: Click Run and see what happens!
            child: Text('Click Run and see what happens!'),
          ),
        ),
      ),
    );
  }
}
