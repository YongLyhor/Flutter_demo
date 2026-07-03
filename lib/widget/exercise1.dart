import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise 1"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                color: Colors.grey[300],
                child: const Text(
                  "Strawberry Pavlova",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 8),

              // Description
              const Text(
                "Pavlova is a meringue-based dessert named after Anna Pavlova. "
                    "Crispy outside, soft inside, topped with fruit and cream.",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 12),

              // Rating Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: List.generate(
                      5,
                          (index) => const Icon(Icons.star, size: 18),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text("170 Reviews"),
                ],
              ),

              const SizedBox(height: 16),

              // Info Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  InfoItem(
                    icon: Icons.kitchen,
                    title: "PREP",
                    value: "25 min",
                  ),
                  InfoItem(
                    icon: Icons.timer,
                    title: "COOK",
                    value: "1 hr",
                  ),
                  InfoItem(
                    icon: Icons.restaurant,
                    title: "FEEDS",
                    value: "4-6",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Reusable widget
class InfoItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const InfoItem({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
      ],
    );
  }
}