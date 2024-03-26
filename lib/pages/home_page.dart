import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// to get access to what user types
  TextEditingController myController = TextEditingController();
  
//variable to hold users gretting
String greetingMessage = '';


// method to greet user
void greetUser () {
  String username = myController.text;
  setState(() {
    greetingMessage = 'Hello,$username';
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepPurple.shade400,
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Text(greetingMessage),
          SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.all(20),
             child: TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)     
                ),
                hintText: 'Type your name'
              ),
             ),
           ),
           const SizedBox(
            height: 20,
           ),
           ElevatedButton(
            onPressed: greetUser, child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text('Tap me'),
            ))
         ],
       ),
     ) ,
    );
  }
}