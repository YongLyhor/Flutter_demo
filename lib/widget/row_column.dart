import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Widget"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 100,
            height: 80,
            color: Colors.green,
          ),
          Container(
            width: 100,
            height: 50,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
