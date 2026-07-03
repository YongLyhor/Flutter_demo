import 'package:flutter/material.dart';

class Exercise2Widget extends StatelessWidget {
  const Exercise2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F2),
      appBar: AppBar(
        title: const Text("Exercise 2"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            CityCard(
              image:
              "https://www.dztraveler.com/wp-content/uploads/2013/06/DSC_2461-Edit-2.jpg",
              title: "Siem Reap",
              description:
              "Gateway to the ancient Angkor ruins, featuring the magnificent Angkor Wat.",
              tags: ["History", "Temples"],
            ),
            SizedBox(height: 20),
            CityCard(
              image:
              "https://upload.wikimedia.org/wikipedia/commons/7/7d/Aerial_view_of_Battambang_city.jpg",
              title: "Battambang",
              description:
              "A riverside city known for French colonial architecture and peaceful countryside.",
              tags: ["Culture", "Rural"],
            ),
          ],
        ),
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final List<String> tags;

  const CityCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              image,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 16),

          // Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.star_border,
                      color: Colors.grey,
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 10),

                Wrap(
                  spacing: 8,
                  children: tags
                      .map(
                        (tag) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}