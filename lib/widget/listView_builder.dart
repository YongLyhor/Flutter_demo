import 'package:flutter/material.dart';

class ListviewBuilder extends StatelessWidget {
  ListviewBuilder({super.key});
  List<int> number = [1,2,3,4,5,6,7,8,9,10,11,12];
  // List<String> img = [
  //   "http:/image1",
  //   "http:/image2",
  //   "http:/image1",
  //   "http:/image2",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              height: 100,
              color: Colors.green,
              child: Center(child: Text("$index")),
            ),
            // child: Image.network(img[index]),

          );
        }

      ),
    );
  }
}
