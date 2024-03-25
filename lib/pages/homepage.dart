import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
        
        body:ListView(
          scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 350,
                width: 350,
                    decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(25),
                      child: Icon(Icons.favorite,
                      color: Colors.red,)
                    ),
              
              ),
            Container(
              color: Colors.red,
              height: 350,
              width: 200,
            ),
            Container(
              height: 400,
              width: 200,
              color: Colors.green,
            )
            ],
          ),
        ),



      );
  }
}