import 'package:esential_widget/pages/first_page.dart';
import 'package:esential_widget/pages/home_page.dart';
import 'package:esential_widget/pages/secondpage.dart';
import 'package:esential_widget/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      home: FirstPage(),
      routes: {
        '/first_page' :(context) => FirstPage(),
        '/home_page' :(context) => const MyHomePage(),
        '/settings_page' :(context) => const MySettings(),
        '/secondpage' : (context) => const SecondPage(),
      },
    );
    
  }
}

