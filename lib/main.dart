//  Stateless widget is immutable, meaning that its properties can't change - all values are final. [stl]
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/buttom_navigationbar.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtomNavigationbar_Widget(),

      
    );
  }
}



//  Stateful widget is mutable, meaning that its properties can change - all values are not final. [stf]
