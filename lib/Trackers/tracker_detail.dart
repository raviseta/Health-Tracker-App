import 'package:flutter/material.dart';
import 'package:trackers/Trackers/device_card.dart';
import 'package:trackers/Trackers/logs_card.dart';
import 'package:trackers/Trackers/sleep_card.dart';

class TrackerDetail extends StatelessWidget {
  const TrackerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context); // Action to go back to the previous screen
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Today, 20 May"),
        actions: const [Icon(Icons.edit)],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SleepCard(),
              SizedBox(height: 20),
              DevicesCard(),
              SizedBox(height: 20),
              LogsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
