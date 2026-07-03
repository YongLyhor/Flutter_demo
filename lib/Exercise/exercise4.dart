import 'package:flutter/material.dart';

class Exercise4Widget extends StatelessWidget {
  const Exercise4Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F6ED),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Header
              Row(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Visit Cambodia",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Banner
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      "https://thumbs.dreamstime.com/b/angkor-wat-temple-view-drone-siem-reap-city-cambodia-most-famous-angkorian-temples-back-twelfth-century-148118147.jpg",
                      height: 170,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black.withOpacity(.35),
                    ),
                  ),
                  const Positioned(
                    left: 18,
                    bottom: 18,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore Ancient Wonders",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Book your personalized temple tour\ntoday.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 22),

              // Search Result Header
              Row(
                children: const [
                  Text(
                    "Search Results",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "3 found",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              Expanded(
                child: ListView(
                  children: const [
                    CityCard(
                      image:
                      "https://i.pinimg.com/474x/77/77/1c/77771cd5ee05683ccb68e133faecb57f.jpg",
                      title: "Siem Reap",
                      description:
                      "Gateway to the ancient Angkor ruins, featuring the magnificent Angkor Wat.",
                      tags: ["History", "Temples"],
                    ),
                    SizedBox(height: 15),
                    CityCard(
                      image:
                      "https://upload.wikimedia.org/wikipedia/commons/7/7d/Aerial_view_of_Battambang_city.jpg",
                      title: "Battambang",
                      description:
                      "A riverside city known for French colonial architecture.",
                      tags: ["Culture", "Rural"],
                    ),
                    SizedBox(height: 15),
                    CityCard(
                      image:
                      "https://angkortransportservices.com/wp-content/uploads/2025/01/sihanoukville.jpg",
                      title: "Sihanoukville",
                      description:
                      "Cambodia's premier coastal destination, famous for beautiful beaches.",
                      tags: ["Beach", "Resorts"],
                    ),
                  ],
                ),
              ),
            ],
          ),
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
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              image,
              width: 95,
              height: 95,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 15),

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
                    )
                  ],
                ),

                const SizedBox(height: 5),

                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 15),
                ),

                const SizedBox(height: 10),

                Wrap(
                  spacing: 8,
                  children: tags
                      .map(
                        (tag) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(tag),
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