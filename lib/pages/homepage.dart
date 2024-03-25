import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body:Center(
          child: Container(
            height: 300,
            width: 300,
                decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(15)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(25),
                  child: Text('Roselyn Tobin',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                ),
          
          ),
        ),



      ));
  }
}