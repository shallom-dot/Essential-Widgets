import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

  

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
            Column(
              mainAxisSize:MainAxisSize.min,
              children: [
                ElevatedButton(
                  
                                child: Center(child: Text('Tap Tap')),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/secondpage');
                                    
                                },
                    ),
              ],
            ),
              ),
        );
  }
}