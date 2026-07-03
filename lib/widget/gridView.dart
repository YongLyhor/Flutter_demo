import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Widget"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 8/10,
                mainAxisSpacing: 10,
              crossAxisSpacing: 15,
            ),
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.purple,

            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
