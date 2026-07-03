import 'package:flutter/material.dart';

class Exercise3Widget extends StatelessWidget {
  const Exercise3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F5EC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  const Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              const Text(
                "Today",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              NotificationCard(
                icon: Icons.check_circle,
                iconColor: Colors.green.shade900,
                circleColor: Colors.green.shade200,
                title: "Booking Confirmed",
                subtitle:
                "Your sunrise tour at Angkor Wat is confirmed for tomorrow morning.",
                time: "2m ago",
              ),

              const SizedBox(height: 12),

              NotificationCard(
                icon: Icons.explore,
                iconColor: Colors.orange.shade900,
                circleColor: Colors.amber.shade200,
                title: "New Destination Added",
                subtitle:
                "Discover the hidden waterfalls of Mondulkiri, now open for eco-tours.",
                time: "1h ago",
                image:
                "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=300",
              ),

              const SizedBox(height: 24),

              const Text(
                "Earlier",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              NotificationCard(
                icon: Icons.cloud,
                iconColor: Colors.grey.shade700,
                circleColor: Colors.grey.shade300,
                title: "Weather Update",
                subtitle:
                "Light rain expected in Siem Reap this afternoon. Carry an umbrella!",
                time: "Yesterday",
              ),

              const SizedBox(height: 12),

              NotificationCard(
                icon: Icons.bookmark,
                iconColor: Colors.green.shade800,
                circleColor: Colors.green.shade100,
                title: "Price Drop!",
                subtitle:
                "Your saved boutique hotel in Battambang is now 15% off for next month.",
                time: "Oct 24",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color circleColor;
  final String title;
  final String subtitle;
  final String time;
  final String? image;

  const NotificationCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.circleColor,
    required this.title,
    required this.subtitle,
    required this.time,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: circleColor,
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),

          const SizedBox(width: 14),

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
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Text(
                      time,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

          if (image != null) ...[
            const SizedBox(width: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                image!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ],
      ),
    );
  }
}