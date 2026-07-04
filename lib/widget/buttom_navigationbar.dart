import 'package:flutter/material.dart';


class ButtomNavigationbar_Widget extends StatefulWidget {
  const ButtomNavigationbar_Widget({super.key});

  @override
  State<ButtomNavigationbar_Widget> createState() =>
      _ButtomNavigationbar_WidgetState();
}


class _ButtomNavigationbar_WidgetState
    extends State<ButtomNavigationbar_Widget> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom NavigationBar"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Selected: $selectedIndex"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class widget {
}