import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Facebook Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Cover Photo
            Container(
              width: 350,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://picsum.photos/500/300",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Profile Image
            Positioned(
              bottom: -50,
              left: 120,
              child: Stack(
                children: [
                  // Circle Avatar
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://picsum.photos/200",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Online Indicator (green dot)
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}