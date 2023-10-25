// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';

final secret = String.fromCharCodes(
  base64Decode('SGV5LCB0aGlzIGlzIHRoZSBzb2x1dGlvbiE='),
);

void main() {
  runApp(SomeApp());
}

class SomeApp extends StatelessWidget {
  const SomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: Text(secret))));
  }
}
