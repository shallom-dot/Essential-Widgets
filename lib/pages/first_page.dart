import 'package:esential_widget/pages/home_page.dart';
import 'package:esential_widget/pages/profile_page.dart';
import 'package:esential_widget/pages/settings_page.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
// creating an integer to track my pages

int _selectedIndex = 0;

//create a method to update your selected index
void _navigateBottomBar (int index) {
  setState(() {
    _selectedIndex = index;
  });
}

final List _pages = [
  MyHomePage(),
MyProfile(),
  MySettings(),

  
];  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: const Text('My App Bar'),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
          icon: const Icon(Icons.logout),
            )],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _navigateBottomBar,
              items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home'
              ),
              BottomNavigationBarItem(icon: Icon(Icons.person),
              label: 'User'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: 'Settings',
              ),
            ]),
            drawer: Drawer(
              backgroundColor: Colors.deepPurple[400],
              child: Column(
                children: [
                  const DrawerHeader(
                    child: Icon(Icons.favorite,
                    size: 48.0,),
                    ),
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text('H O M E'),
                      onTap: () {
                        Navigator.pushNamed(context, '/home_page');
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('S E T T I N G S'),
                      onTap: () {
                        Navigator.pushNamed(context, '/setttings_page');
                      },
                    )
                ],
              ),
            ),
        
        body: _pages[_selectedIndex],
              ),
        );
  }
}

