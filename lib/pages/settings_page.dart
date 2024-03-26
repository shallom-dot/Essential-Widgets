import 'package:flutter/material.dart';

class MySettings extends StatelessWidget {
   const MySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade400,
      appBar: AppBar(
        title: const Text('SETTINGS'),
      ),
    );
  }
}