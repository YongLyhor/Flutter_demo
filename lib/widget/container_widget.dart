import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      leading: Icon(Icons.menu),
      title: Text('My Love'),
      actions: [Icon(Icons.notifications),
                Icon(Icons.settings),
                Icon(Icons.info),
                Icon(Icons.search)],
      backgroundColor: Colors.green,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              color: Colors.green
            ),
            child: Center(
              child: Text('Hello 1 brother', style: TextStyle(fontSize: 24)),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              color: Colors.yellow
            ),
            child: Center(
              child: Text('Hello 2 brothers', style: TextStyle(fontSize: 24)),
            ),
          ),
        ],
      ),
    ),
    
      
    bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    ),
  );
  }
}