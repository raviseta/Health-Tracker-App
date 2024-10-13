import 'package:flutter/material.dart';

class SleepCard extends StatelessWidget {
  const SleepCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sleep",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              children: [
                Text("7 hr 00 min", style: TextStyle(fontSize: 24)),
                Spacer(),
                Icon(Icons.edit),
              ],
            ),
            SizedBox(height: 10),
            LinearProgressIndicator(value: 7 / 8.5),
            SizedBox(height: 10),
            Text("Target 8hr 30min"),
          ],
        ),
      ),
    );
  }
}
