import 'package:flutter/material.dart';

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
        
        body:Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.deepPurple,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[400],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple[200],
            )
          ],
        )
           
        ),



      );
  }
}