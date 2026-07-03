import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Image Car'),
      ),
      body: Column(
        children: [
          Image.network('https://imgs.search.brave.com/aN8eDMhg_UDxQK2RWGNClzkrjw5oiMN336B8etfqP8g/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI3/MzY4MjA1NC9waG90/by9jYXItc2Vydmlj/ZS13b3JrZXItYXBw/bHlpbmctbmFuby1j/b2F0aW5nLW9uLWEt/Y2FyLWRldGFpbC5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/dzJZb0dQbnYyNGxj/SVRmaUg3am5UWUxB/ajl4Q1hVcmxiSG4z/M2x4Y2QyVT0', width: 100, height: 100, fit: BoxFit.cover),
          Image.network("https://imgs.search.brave.com/0g1k2J5r6X8Z7j3F9G4K5J8L9M2N3O4P5Q6R7S8T9U/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI3/MzY4MjA1NC9waG90/by9jYXItc2Vydmlj/ZS13b3JrZXItYXBw/bHlpbmctbmFiby1j/b2F0aW5nLW9uLWEt/Y2FyLWRldGFpbC5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/dzJZb0dQbnYyNGxj/SVRmaUg3am5UWUxB/ajl4Q1hVcmxiSG4z/M2x4Y2QyVT0", width: 100, height: 100, fit: BoxFit.cover),
        ],
      ),
      );
    
  }
}