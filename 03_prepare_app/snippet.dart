// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';

final secret = String.fromCharCodes(
  base64Decode('RG9uZSEgR28gdG8gbmV4dCBzdGVwIQ=='),
);

void main() {
  runApp(FlutterChatWorkshopApp());
}

class FlutterChatWorkshopApp extends StatelessWidget {
  const FlutterChatWorkshopApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Make it return MaterialApp that has [SomePage] is home.
    return Placeholder();
  }
}

class SomePage extends StatelessWidget {
  const SomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(secret)));
  }
}
