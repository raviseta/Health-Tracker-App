import 'package:flutter/material.dart';

class TrackerCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String unit;

  const TrackerCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10), // Adds 10 pixels of space
          Text(title, style: const TextStyle(fontSize: 16)),
          const Spacer(),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: value,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: ' $unit',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
