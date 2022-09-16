import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: const Image(
            image: AssetImage("assets/images/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
