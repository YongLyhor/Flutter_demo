import 'package:flutter/material.dart';

class Exercise2GridView extends StatelessWidget {
  const Exercise2GridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> burgers = [
      {
        "name": "Burger Bistro",
        "place": "Rose Garden",
        "price": "\$40",
        "image": "https://picsum.photos/200?1"
      },
      {
        "name": "Smokin' Burger",
        "place": "Cafenio Restaurant",
        "price": "\$60",
        "image": "https://picsum.photos/200?2"
      },
      {
        "name": "Buffalo Burgers",
        "place": "Kaji Firm Kitchen",
        "price": "\$75",
        "image": "https://picsum.photos/200?3"
      },
      {
        "name": "Bullseye Burgers",
        "place": "Kabab Restaurant",
        "price": "\$94",
        "image": "https://picsum.photos/200?4"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Burgers", style: TextStyle(fontWeight: FontWeight(500)),),
        centerTitle: true,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: burgers.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final item = burgers[index];

            return Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        child: Image.network(
                          item["image"]!,
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          item["name"]!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          item["place"]!,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),

                      const Spacer(),

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          item["price"]!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Orange + Button
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add, color: Colors.white),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}