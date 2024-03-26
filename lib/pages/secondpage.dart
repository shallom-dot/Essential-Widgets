import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('space@'),
      ),
      body:  Column(
              mainAxisSize:MainAxisSize.min,
              children: [
                ElevatedButton(
                  
                                child: const Center(child: Text('Tap Tap')),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/secondpage');
                                    
                                },
                    ),
              ],
            ),
           
    );
}}