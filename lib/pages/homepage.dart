import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

  List names = ['mary', 'jane', 'Mitchell'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: const Text('My App Bar'),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
          icon: const Icon(Icons.logout),
            )],),
        
        body:
            Center(
              child: GestureDetector(
                onTap: () {
                  // ignore: avoid_print
                  print('Hello world');
                },
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.deepPurple[400],
                ),
              ),
            )
  
        ),
           
        );
  }
}