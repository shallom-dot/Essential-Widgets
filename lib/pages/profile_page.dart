import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

// creating a variable to hold my integer
  int _counter = 0;

  // creating a method to implement what I want
  void _incrementCounter () {
    setState(() {
      _counter++;
    });
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter App')),
      ),
     floatingActionButton: Tooltip(
          message: 'Tap to add task',
          textStyle: const TextStyle(color: Colors.red),
          child: FloatingActionButton(
            onPressed: _incrementCounter,
            backgroundColor: Colors.deepPurple.shade400,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            child: const Icon(Icons.add),
          ),
        ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Center(child: Text('You pushed this botton this many times')),
         Text(_counter.toString(),
         style: const TextStyle(
          fontSize: 40,
         ),
         ),
        
        ],
      ),
    );
  }
}